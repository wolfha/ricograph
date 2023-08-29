function loadRicoGraph()
{

    function loadJSON(callback) {
        var xobj = new XMLHttpRequest();
        xobj.overrideMimeType("application/json");
        xobj.open('GET', 'data/data.json', true);
        xobj.onreadystatechange = function () {
            if (xobj.readyState == 4 && xobj.status == "200") {
                callback(xobj.responseText);
            } else {
                console.log("could not read data");
            }
        };
        xobj.send(null);
    }

    loadJSON(function(json_plain) {

            var data_obj = JSON.parse(json_plain);
            var network;
            var allNodes;
            var highlightActive = false;

            var nodesDataset = new vis.DataSet(data_obj.nodes);
            var edgesDataset = new vis.DataSet(data_obj.edges);

            function drawGraph() {
            var container = document.getElementById("mynetwork");
            var data = { nodes: nodesDataset, edges: edgesDataset };

            network = new vis.Network(container, data, data_obj.options);

            allNodes = nodesDataset.get({ returnType: "Object" });

            network.on("click", neighbourhoodHighlight);
            network.on('afterDrawing',function() {
                    loader.style.display = "none";
                    console.log("loaded");
                    });

            }

            // this is taken from from the visjs examples
            function neighbourhoodHighlight(params) {
                // if something is selected:
                if (params.nodes.length > 0) {
                    highlightActive = true;
                    var i, j;
                    var selectedNode = params.nodes[0];
                    var degrees = 2;

                    // mark all nodes as hard to read.
                    for (var nodeId in allNodes) {
                        allNodes[nodeId].color = "rgba(200,200,200,0.5)";
                        if (allNodes[nodeId].hiddenLabel === undefined) {
                            allNodes[nodeId].hiddenLabel = allNodes[nodeId].label;
                            allNodes[nodeId].label = undefined;
                        }
                    }
                    var connectedNodes = network.getConnectedNodes(selectedNode);
                    var allConnectedNodes = [];

                    // get the second degree nodes
                    for (i = 1; i < degrees; i++) {
                        for (j = 0; j < connectedNodes.length; j++) {
                            allConnectedNodes = allConnectedNodes.concat(
                                    network.getConnectedNodes(connectedNodes[j])
                                    );
                        }
                    }

                    // all second degree nodes get a different color and their label back
                    for (i = 0; i < allConnectedNodes.length; i++) {
                        allNodes[allConnectedNodes[i]].color = "rgba(150,150,150,0.75)";
                        if (allNodes[allConnectedNodes[i]].hiddenLabel !== undefined) {
                            allNodes[allConnectedNodes[i]].label =
                                allNodes[allConnectedNodes[i]].hiddenLabel;
                            allNodes[allConnectedNodes[i]].hiddenLabel = undefined;
                        }
                    }

                    // all first degree nodes get their own color and their label back
                    for (i = 0; i < connectedNodes.length; i++) {
                        allNodes[connectedNodes[i]].color = undefined;
                        if (allNodes[connectedNodes[i]].hiddenLabel !== undefined) {
                            allNodes[connectedNodes[i]].label =
                                allNodes[connectedNodes[i]].hiddenLabel;
                            allNodes[connectedNodes[i]].hiddenLabel = undefined;
                        }
                    }

                    // the main node gets its own color and its label back.
                    allNodes[selectedNode].color = undefined;
                    if (allNodes[selectedNode].hiddenLabel !== undefined) {
                        allNodes[selectedNode].label = allNodes[selectedNode].hiddenLabel;
                        allNodes[selectedNode].hiddenLabel = undefined;
                    }
                } else if (highlightActive === true) {
                    // reset all nodes
                    for (var nodeId in allNodes) {
                        allNodes[nodeId].color = undefined;
                        if (allNodes[nodeId].hiddenLabel !== undefined) {
                            allNodes[nodeId].label = allNodes[nodeId].hiddenLabel;
                            allNodes[nodeId].hiddenLabel = undefined;
                        }
                    }
                    highlightActive = false;
                }

                // transform the object into an array
                var updateArray = [];
                for (nodeId in allNodes) {
                    if (allNodes.hasOwnProperty(nodeId)) {
                        updateArray.push(allNodes[nodeId]);
                    }
                }
                nodesDataset.update(updateArray);
            } // end neigbourhoodHighlight

            drawGraph();

    }); // end drawGraph

} // end loadRicoGraph
