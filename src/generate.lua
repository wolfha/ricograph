---
-- Notes:
-- This script is using lua-visnet https://github.com/wolfha/lua-visnet
-- 
-- If you wonder why some variables are initialized as "local" and some are not,
-- unfortunately lua's VM has a limit of 200 local variables. It does not really matter
-- for this purpose, anyway.
--
--
-- For the resulting graph see https://wolfha.github.io/ricograph/
---
visnet = require("visnet")


---
-- setting graph options
---
graph = visnet.new()
      graph:setOption("layout.improvedLayout", true)
      graph:setOption("nodes.shape", "dot")
      graph:setOption("nodes.borderWidth", 0)
      graph:setOption("nodes.font.color", "#fff")
      graph:setOption("nodes.font.face", "roboto")
      graph:setOption("edges.font.face", "roboto")
      graph:setOption("edges.font.color", "#B8B8B8")
      graph:setOption("edges.font.strokeWidth", 0)

      -- setting up a color scheme for the node groups
      graph:setOption("groups.defendant.color.background", "#8fa7c7") 
      graph:setOption("groups.charge.color.background", "#f59b3b") 
      graph:setOption("groups.location.color.background", "#fb7e81") 
      graph:setOption("groups.unindicted.color.background", "#202020") 
      graph:setOption("groups.unindicted.color.border", "#8fa7c7") 
      graph:setOption("groups.unindicted.borderWidth", 1) 

---
-- 1) Nodes: defendants
---


-- defendants georgia
local donald_trump = visnet.node.new("donald_trump", "Donald Trump")
      donald_trump:setGroup("defendant")
      donald_trump:setOption("size", 40)

local rudy_giuliani = visnet.node.new("rudy_giuliani", "Rudy Giuliani")
      rudy_giuliani:setGroup("defendant")

local ray_smith_III = visnet.node.new("ray_smith_III", "Ray Smith III")
      ray_smith_III:setGroup("defendant")

local cathy_latham = visnet.node.new("cathy_latham", "Cathy Latham")
      cathy_latham:setGroup("defendant")

local robert_cheeley = visnet.node.new("robert_cheeley", "Robert Cheeley")
      robert_cheeley:setGroup("defendant")

local john_eastman = visnet.node.new("john_eastman", "John Eastman")
      john_eastman:setGroup("defendant")

local david_shafer = visnet.node.new("david_shafer", "David Shafer")
      david_shafer:setGroup("defendant")

local kenneth_chesebro = visnet.node.new("kenneth_chesebro", "Kenneth Chesebro")
      kenneth_chesebro:setGroup("defendant")

local mike_roman = visnet.node.new("mike_roman", "Mike Roman")
      mike_roman:setGroup("defendant")

local shawn_still = visnet.node.new("shawn_still", "Shawn Still")
      shawn_still:setGroup("defendant")

local jeffrey_clark = visnet.node.new("jeffrey_clark", "Jeffrey Clark")
      jeffrey_clark:setGroup("defendant")

local jenna_ellis = visnet.node.new("jenna_ellis", "Jenna Ellis")
      jenna_ellis:setGroup("defendant")

local mark_meadow = visnet.node.new("mark_meadow", "Mark Meadows")
      mark_meadow:setGroup("defendant")

local scott_hall = visnet.node.new("scott_hall", "Scott Hall")
      scott_hall:setGroup("defendant")

local misty_hampton = visnet.node.new("misty_hampton", "Misty Hampton")
      misty_hampton:setGroup("defendant")

local sidney_powell = visnet.node.new("sidney_powell", "Sidney Powell")
      sidney_powell:setGroup("defendant")

local steve_lee = visnet.node.new("steve_lee", "Steve Lee")
      steve_lee:setGroup("defendant")

local harrison_floyd = visnet.node.new("harrison_floyd", "Harrison Floyd")
      harrison_floyd:setGroup("defendant")

local trevian_kutti = visnet.node.new("trevian_kutti", "Trevian Kutti")
      trevian_kutti:setGroup("defendant")

local georgia_unindicted = visnet.node.new("georgia_unindicted", "30 unindicted\nco-conspirators")
      georgia_unindicted:setGroup("unindicted")
      

--- defendants Florida

local walt_nauta = visnet.node.new("walt_nauta", "Walt Nauta")
      walt_nauta:setGroup("defendant")

local carlos_de_oliveira = visnet.node.new("carlos_de_oliveira", "Carlos De Oliveira")
      carlos_de_oliveira:setGroup("defendant")



      -- add defendants to graph
      graph:addNodeBulk( { donald_trump, rudy_giuliani, ray_smith_III, cathy_latham, robert_cheeley, john_eastman,
                           david_shafer, kenneth_chesebro, mike_roman, shawn_still, jeffrey_clark, jenna_ellis, 
                           mark_meadow, scott_hall, misty_hampton, sidney_powell, steve_lee, harrison_floyd , trevian_kutti , georgia_unindicted } )

      -- add florida defendants to graph
      graph:addNodeBulk( { walt_nauta , carlos_de_oliveira })

      -- dc unindicted 
      local dc_unindicted = visnet.node.new("dc_unindicted", "6 unindicted\nco-conspirators")
            dc_unindicted:setGroup("unindicted")
            graph:addNode(dc_unindicted)

---
-- 2) Charges
---


-- Charges: Georgia

local charge_georgia_rico = visnet.node.new("charge_georgia_rico", "RICO")
      charge_georgia_rico:setGroup("charge")

local charge_georgia_solicitation_of_public_officer = visnet.node.new("charge_georgia_solicitation_of_public_officer", "Solicitation of public officer")
      charge_georgia_solicitation_of_public_officer:setGroup("charge")

local charge_georgia_false_statements = visnet.node.new("charge_georgia_false_statements", "False statements")
      charge_georgia_false_statements:setGroup("charge")

local charge_georgia_impersonating_a_public_officer = visnet.node.new("charge_georgia_impersonating_a_public_officer", "Impersonating a public officer")
      charge_georgia_impersonating_a_public_officer:setGroup("charge")

local charge_georgia_forgery = visnet.node.new("charge_georgia_forgery", "Forgery")
      charge_georgia_forgery:setGroup("charge")

local charge_georgia_filing_false_documents = visnet.node.new("charge_georgia_filing_false_documents", "Filing false documents")
      charge_georgia_filing_false_documents:setGroup("charge")

local charge_georgia_perjury = visnet.node.new("charge_georgia_perjury", "Perjury")
      charge_georgia_perjury:setGroup("charge")

local charge_georgia_election_fraud = visnet.node.new("charge_georgia_election_fraud", "Election Fraud")
      charge_georgia_election_fraud:setGroup("charge")

local charge_georgia_computer_crimes = visnet.node.new("charge_georgia_computer_crimes", "Computer crimes")
      charge_georgia_computer_crimes:setGroup("charge")

local charge_georgia_defrauding_the_state = visnet.node.new("charge_georgia_defrauding_the_state", "Defrauding the state")
      charge_georgia_defrauding_the_state:setGroup("charge")

local charge_georgia_solicitation_of_false_statements = visnet.node.new("charge_georgia_solicitation_of_false_statements", "Solicitation of false statements")
      charge_georgia_solicitation_of_false_statements:setGroup("charge")

local charge_georgia_influencing_witnesses = visnet.node.new("charge_georgia_influencing_witnesses", "Influencing witnesses")
      charge_georgia_influencing_witnesses:setGroup("charge")

      -- add the georgia charges to the graph
      graph:addNodeBulk({ charge_georgia_rico , charge_georgia_solicitation_of_public_officer, charge_georgia_false_statements, charge_georgia_impersonating_a_public_officer,
                          charge_georgia_forgery, charge_georgia_filing_false_documents, charge_georgia_perjury, charge_georgia_election_fraud, charge_georgia_computer_crimes,
                          charge_georgia_defrauding_the_state, charge_georgia_solicitation_of_false_statements, charge_georgia_influencing_witnesses})

--- 2) Charges: Manhattan/New York

local charge_falsifying_business_records = visnet.node.new("charge_falsifying_business_records", "Falsifying Business Records")
      charge_falsifying_business_records:setGroup("charge")

      graph:addNode(charge_falsifying_business_records)

---- 3) Charges Florida


local  charge_florida_willful_retention = visnet.node.new("charge_florida_willful_retention", "Willful retention\nof national defense information")
       charge_florida_willful_retention:setGroup("charge")

local  charge_florida_false_statements_and = visnet.node.new("charge_florida_false_statements_and", "False statements and representation")
       charge_florida_false_statements_and:setGroup("charge")

local  charge_florida_conspiracy_to_obstruct_justice = visnet.node.new("charge_florida_conspiracy_to_obstruct_justice", "Conspiracy to obstruct justice")
       charge_florida_conspiracy_to_obstruct_justice:setGroup("charge")

local  charge_florida_withholding_a_document = visnet.node.new("charge_florida_withholding_a_document", "Withholding a document or record")
       charge_florida_withholding_a_document:setGroup("charge")

local  charge_florida_corruptly_concealing = visnet.node.new("charge_florida_corruptly_concealing", "Corruptly concealing a document or record")
       charge_florida_corruptly_concealing:setGroup("charge")

local  charge_florida_concealing_a_document = visnet.node.new("charge_florida_concealing_a_document", "Concealing a document\nin a federal investigation")
       charge_florida_concealing_a_document:setGroup("charge")

local  charge_florida_scheme_to_conceal = visnet.node.new("charge_florida_scheme_to_conceal", "Scheme to conceal")
       charge_florida_scheme_to_conceal:setGroup("charge")

local  charge_florida_altering_destroying = visnet.node.new("charge_florida_altering_destroying", "Altering, destroying, mutilating,\nor concealing an object")
       charge_florida_altering_destroying:setGroup("charge")

local  charge_florida_corruptly_altering = visnet.node.new("charge_florida_corruptly_altering", "Corruptly altering, destroying, mutilating,\n or concealing a document, record, or other object")
       charge_florida_corruptly_altering:setGroup("charge")

       graph:addNodeBulk({ charge_florida_willful_retention, charge_florida_false_statements_and, charge_florida_conspiracy_to_obstruct_justice, charge_florida_withholding_a_document,
                           charge_florida_corruptly_concealing, charge_florida_concealing_a_document, charge_florida_scheme_to_conceal, charge_florida_altering_destroying, charge_florida_corruptly_altering })

-- 4) Charges in Washington DC

local  charge_conspiracy_to_defraud = visnet.node.new("charge_conspiracy_to_defraud", "Conspiracy to defraud the United States")
       charge_conspiracy_to_defraud:setGroup("charge")

local  charge_conspiracy_to_obstruct_proceeding = visnet.node.new("charge_conspiracy_to_obstruct_proceeding", "Conspiracy to obstruct\nan official proceeding")
       charge_conspiracy_to_obstruct_proceeding:setGroup("charge")

local  charge_obstruction_of_and_attempt = visnet.node.new("charge_obstruction_of_and_attempt", "Obstruction of and attempt to obstruct\nan official proceeding")
       charge_obstruction_of_and_attempt:setGroup("charge")

local  charge_conspiracy_against_rights = visnet.node.new("charge_conspiracy_against_rights", "Conspiracy against rights")
       charge_conspiracy_against_rights:setGroup("charge")

       graph:addNodeBulk({ charge_conspiracy_to_defraud, charge_conspiracy_to_obstruct_proceeding,
                           charge_obstruction_of_and_attempt, charge_conspiracy_against_rights })


-- Nodes: locations

local location_atlanta = visnet.node.new("loc_atlanta", "Georgia")
      location_atlanta:setGroup("location")
      location_atlanta:setOption("size", 30)

local location_florida = visnet.node.new("loc_florida", "Florida")
      location_florida:setGroup("location")
      location_florida:setOption("size", 30)

local location_dc = visnet.node.new("loc_dc", "Washington DC")
      location_dc:setGroup("location")
      location_dc:setOption("size", 30)

local location_manhattan = visnet.node.new("loc_manhattan", "Manhattan/New York")
      location_manhattan:setGroup("location")
      location_manhattan:setOption("size", 30)

      -- add locations to graph
      graph:addNode(location_atlanta)
      graph:addNode(location_florida)
      graph:addNode(location_dc)
      graph:addNode(location_manhattan)


---
-- Connecting locations to charges
---

      -- connect locations to charges: georgia
      local a1 = visnet.edge.new(location_atlanta, charge_georgia_rico)
      local a2 = visnet.edge.new(location_atlanta, charge_georgia_solicitation_of_public_officer)
      local a3 = visnet.edge.new(location_atlanta, charge_georgia_false_statements)
      local a4 = visnet.edge.new(location_atlanta, charge_georgia_impersonating_a_public_officer)
      local a5 = visnet.edge.new(location_atlanta, charge_georgia_forgery)
      local a6 = visnet.edge.new(location_atlanta, charge_georgia_filing_false_documents)
      local a7 = visnet.edge.new(location_atlanta, charge_georgia_perjury)
      local a8 = visnet.edge.new(location_atlanta, charge_georgia_election_fraud)
      local a9 = visnet.edge.new(location_atlanta, charge_georgia_computer_crimes)
      local a10 = visnet.edge.new(location_atlanta, charge_georgia_defrauding_the_state)
      local a11 = visnet.edge.new(location_atlanta, charge_georgia_solicitation_of_false_statements)
      local a12 = visnet.edge.new(location_atlanta, charge_georgia_influencing_witnesses)
      graph:addEdgeBulk( { a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12 } );

      -- manhattan
      local mh1 = visnet.edge.new(location_manhattan, charge_falsifying_business_records);
      graph:addEdge(mh1);


      -- washington
      local dc1 = visnet.edge.new(location_dc,charge_conspiracy_to_defraud)
      local dc2 = visnet.edge.new(location_dc,charge_conspiracy_to_obstruct_proceeding)
      local dc3 = visnet.edge.new(location_dc,charge_obstruction_of_and_attempt)
      local dc4 = visnet.edge.new(location_dc,charge_conspiracy_against_rights)
      graph:addEdgeBulk( { dc1, dc2, dc3 , dc4 })


      -- florida
      local fl1 = visnet.edge.new(location_florida, charge_florida_willful_retention)
      local fl2 = visnet.edge.new(location_florida, charge_florida_false_statements_and)
      local fl3 = visnet.edge.new(location_florida, charge_florida_conspiracy_to_obstruct_justice)
      local fl4 = visnet.edge.new(location_florida, charge_florida_withholding_a_document)
      local fl5 = visnet.edge.new(location_florida, charge_florida_corruptly_concealing)
      local fl6 = visnet.edge.new(location_florida, charge_florida_concealing_a_document)
      local fl7 = visnet.edge.new(location_florida, charge_florida_scheme_to_conceal)
      local fl8 = visnet.edge.new(location_florida, charge_florida_altering_destroying)
      local fl9 = visnet.edge.new(location_florida, charge_florida_corruptly_altering)
      graph:addEdgeBulk( { fl1, fl2, fl3, fl4, fl5 , fl6 , fl7, fl8, fl9 })


-----
-- connect defendants to charges
-----

-- part 1 georgia

    --- edges : defendants to charge_rico

    local d1 = visnet.edge.new(donald_trump, charge_georgia_rico)
    local d2 = visnet.edge.new(rudy_giuliani, charge_georgia_rico)
    local d3 = visnet.edge.new(ray_smith_III, charge_georgia_rico)
    local d4 = visnet.edge.new(cathy_latham, charge_georgia_rico)
    local d5 = visnet.edge.new(robert_cheeley, charge_georgia_rico)
    local d6 = visnet.edge.new(john_eastman, charge_georgia_rico)
    local d7 = visnet.edge.new(david_shafer, charge_georgia_rico)
    local d8 = visnet.edge.new(kenneth_chesebro, charge_georgia_rico)
    local d9 = visnet.edge.new(mike_roman, charge_georgia_rico)
    local d10 = visnet.edge.new(shawn_still, charge_georgia_rico)
    local d11 = visnet.edge.new(jeffrey_clark, charge_georgia_rico)
    local d12 = visnet.edge.new(jenna_ellis, charge_georgia_rico)
    local d13 = visnet.edge.new(mark_meadow, charge_georgia_rico)
    local d14 = visnet.edge.new(scott_hall, charge_georgia_rico)
    local d15 = visnet.edge.new(misty_hampton, charge_georgia_rico)
    local d16 = visnet.edge.new(sidney_powell, charge_georgia_rico)
    local d17 = visnet.edge.new(steve_lee, charge_georgia_rico)
    local d18 = visnet.edge.new(harrison_floyd, charge_georgia_rico)
    local d19 = visnet.edge.new(trevian_kutti, charge_georgia_rico)

    graph:addEdgeBulk({ d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19 })

    -- charge_solicitation_of_public_officer
    local gc_11 = visnet.edge.new(donald_trump, charge_georgia_solicitation_of_public_officer)
    local gc_12 = visnet.edge.new(rudy_giuliani, charge_georgia_solicitation_of_public_officer)
    local gc_13 = visnet.edge.new(ray_smith_III, charge_georgia_solicitation_of_public_officer)
    local gc_14 = visnet.edge.new(robert_cheeley, charge_georgia_solicitation_of_public_officer)
    local gc_15 = visnet.edge.new(john_eastman, charge_georgia_solicitation_of_public_officer)
    local gc_16 = visnet.edge.new(jenna_ellis, charge_georgia_solicitation_of_public_officer)
    graph:addEdgeBulk({ gc_11, gc_12, gc_13, gc_14, gc_15, gc_16})

    -- charge_false_statements
    local gc_21 = visnet.edge.new(donald_trump, charge_georgia_false_statements)
    local gc_22 = visnet.edge.new(rudy_giuliani, charge_georgia_false_statements)
    local gc_23 = visnet.edge.new(ray_smith_III, charge_georgia_false_statements)
    local gc_24 = visnet.edge.new(cathy_latham, charge_georgia_false_statements)
    local gc_25 = visnet.edge.new(robert_cheeley, charge_georgia_false_statements)
    local gc_26 = visnet.edge.new(john_eastman, charge_georgia_false_statements)
    local gc_27 = visnet.edge.new(david_shafer, charge_georgia_false_statements)
    local gc_28 = visnet.edge.new(kenneth_chesebro, charge_georgia_false_statements)
    local gc_29 = visnet.edge.new(mike_roman, charge_georgia_false_statements)
    local gc_210 = visnet.edge.new(shawn_still, charge_georgia_false_statements)
    local gc_211 = visnet.edge.new(jeffrey_clark, charge_georgia_false_statements)
    graph:addEdgeBulk({ gc_21, gc_22, gc_23, gc_24, gc_25, gc_26, gc_27, gc_28, gc_29, gc_210, gc_211})

    -- charge_impersonating_a_public_officer
    local gc_31 = visnet.edge.new(donald_trump, charge_georgia_impersonating_a_public_officer)
    local gc_32 = visnet.edge.new(rudy_giuliani, charge_georgia_impersonating_a_public_officer)
    local gc_33 = visnet.edge.new(ray_smith_III, charge_georgia_impersonating_a_public_officer)
    local gc_34 = visnet.edge.new(cathy_latham, charge_georgia_impersonating_a_public_officer)
    local gc_35 = visnet.edge.new(robert_cheeley, charge_georgia_impersonating_a_public_officer)
    local gc_36 = visnet.edge.new(john_eastman, charge_georgia_impersonating_a_public_officer)
    local gc_37 = visnet.edge.new(david_shafer, charge_georgia_impersonating_a_public_officer)
    local gc_38 = visnet.edge.new(kenneth_chesebro, charge_georgia_impersonating_a_public_officer)
    local gc_39 = visnet.edge.new(mike_roman, charge_georgia_impersonating_a_public_officer)
    local gc_310 = visnet.edge.new(shawn_still, charge_georgia_impersonating_a_public_officer)
    graph:addEdgeBulk({ gc_31, gc_32, gc_33, gc_34, gc_35, gc_36, gc_37, gc_38, gc_39, gc_310})

    -- charge_forgery
    local gc_41 = visnet.edge.new(donald_trump, charge_georgia_forgery)
    local gc_42 = visnet.edge.new(rudy_giuliani, charge_georgia_forgery)
    local gc_43 = visnet.edge.new(ray_smith_III, charge_georgia_forgery)
    local gc_44 = visnet.edge.new(cathy_latham, charge_georgia_forgery)
    local gc_45 = visnet.edge.new(robert_cheeley, charge_georgia_forgery)
    local gc_46 = visnet.edge.new(john_eastman, charge_georgia_forgery)
    local gc_47 = visnet.edge.new(david_shafer, charge_georgia_forgery)
    local gc_48 = visnet.edge.new(kenneth_chesebro, charge_georgia_forgery)
    local gc_49 = visnet.edge.new(mike_roman, charge_georgia_forgery)
    local gc_410 = visnet.edge.new(shawn_still, charge_georgia_forgery)
    graph:addEdgeBulk({ gc_41, gc_42, gc_43, gc_44, gc_45, gc_46, gc_47, gc_48, gc_49, gc_410 })
    

    -- charge_filing_false_documents
    local gc_51 = visnet.edge.new(donald_trump, charge_georgia_filing_false_documents)
    local gc_52 = visnet.edge.new(rudy_giuliani, charge_georgia_filing_false_documents)
    local gc_53 = visnet.edge.new(ray_smith_III, charge_georgia_filing_false_documents)
    local gc_54 = visnet.edge.new(cathy_latham, charge_georgia_filing_false_documents)
    local gc_55 = visnet.edge.new(robert_cheeley, charge_georgia_filing_false_documents)
    local gc_56 = visnet.edge.new(john_eastman, charge_georgia_filing_false_documents)
    local gc_57 = visnet.edge.new(david_shafer, charge_georgia_filing_false_documents)
    local gc_58 = visnet.edge.new(kenneth_chesebro, charge_georgia_filing_false_documents)
    local gc_59 = visnet.edge.new(mike_roman, charge_georgia_filing_false_documents)
    local gc_510 = visnet.edge.new(shawn_still, charge_georgia_filing_false_documents)
    graph:addEdgeBulk({ gc_51, gc_52, gc_53, gc_54, gc_55, gc_56 , gc_57, gc_58, gc_59, gc_510})

    -- charge_perjury 
    local gc_61 = visnet.edge.new(robert_cheeley, charge_georgia_perjury)
    graph:addEdge(gc_61)

    -- charge_election_fraud 
    local gc_71 = visnet.edge.new(cathy_latham, charge_georgia_election_fraud)
    local gc_72 = visnet.edge.new(scott_hall, charge_georgia_election_fraud)
    local gc_73 = visnet.edge.new(misty_hampton, charge_georgia_election_fraud)
    local gc_74 = visnet.edge.new(sidney_powell, charge_georgia_election_fraud)
    graph:addEdgeBulk({ gc_71, gc_72, gc_73, gc_74 })

    -- charge_computer_crimes
    local gc_81 = visnet.edge.new(cathy_latham, charge_georgia_computer_crimes)
    local gc_82 = visnet.edge.new(scott_hall, charge_georgia_computer_crimes)
    local gc_83 = visnet.edge.new(misty_hampton, charge_georgia_computer_crimes)
    local gc_84 = visnet.edge.new(sidney_powell, charge_georgia_computer_crimes)
    graph:addEdgeBulk({ gc_81, gc_82, gc_83, gc_84 })

    -- charge_defrauding_the_state
    local gc_91 = visnet.edge.new(cathy_latham, charge_georgia_defrauding_the_state)
    local gc_92 = visnet.edge.new(scott_hall, charge_georgia_defrauding_the_state)
    local gc_93 = visnet.edge.new(misty_hampton, charge_georgia_defrauding_the_state)
    local gc_94 = visnet.edge.new(sidney_powell, charge_georgia_defrauding_the_state)
    graph:addEdgeBulk({ gc_91, gc_92, gc_93, gc_94 })

    -- charge_solicitation_of_false_statements
    local gc_101 = visnet.edge.new(steve_lee, charge_georgia_solicitation_of_false_statements)
    local gc_102 = visnet.edge.new(harrison_floyd, charge_georgia_solicitation_of_false_statements)
    local gc_103 = visnet.edge.new(trevian_kutti, charge_georgia_solicitation_of_false_statements)
    graph:addEdgeBulk({ gc_101, gc_102, gc_103 })

    -- charge_influencing_witnesses
    local gc_111 = visnet.edge.new(steve_lee, charge_georgia_influencing_witnesses)
    local gc_112 = visnet.edge.new(harrison_floyd, charge_georgia_influencing_witnesses)
    local gc_113 = visnet.edge.new(trevian_kutti, charge_georgia_influencing_witnesses)
    graph:addEdgeBulk({ gc_111, gc_112, gc_113 })

    local gc_unindicted = visnet.edge.new(location_atlanta, georgia_unindicted)
          gc_unindicted:setArrows("from");
          gc_unindicted:setOption("dash");
    graph:addEdge(gc_unindicted)

--- part 2 washington DC (trump only)

    local d_dc1 = visnet.edge.new(donald_trump, charge_conspiracy_to_defraud)
    local d_dc2 = visnet.edge.new(donald_trump, charge_conspiracy_to_obstruct_proceeding)
    local d_dc3 = visnet.edge.new(donald_trump, charge_obstruction_of_and_attempt)
    local d_dc4 = visnet.edge.new(donald_trump, charge_conspiracy_against_rights)
    graph:addEdgeBulk( { d_dc1, d_dc2, d_dc3, d_dc4 });

    local w_unindicted = visnet.edge.new(location_dc, dc_unindicted)
          w_unindicted:setArrows("from");
          w_unindicted:setOption("dash");
    graph:addEdge(w_unindicted)

    -- part 3 florida

    -- donald_trump
    local fl_dt1 = visnet.edge.new(donald_trump, charge_florida_willful_retention)
          fl_dt1:setOption("label", "32 counts");
    local fl_dt2 = visnet.edge.new(donald_trump, charge_florida_conspiracy_to_obstruct_justice)
    local fl_dt3 = visnet.edge.new(donald_trump, charge_florida_withholding_a_document)
    local fl_dt4 = visnet.edge.new(donald_trump, charge_florida_corruptly_concealing)
    local fl_dt5 = visnet.edge.new(donald_trump, charge_florida_concealing_a_document)

    local fl_dt6 = visnet.edge.new(donald_trump, charge_florida_scheme_to_conceal)
    local fl_dt7 = visnet.edge.new(donald_trump, charge_florida_false_statements_and)
    local fl_dt8 = visnet.edge.new(donald_trump, charge_florida_altering_destroying)
    local fl_dt9 = visnet.edge.new(donald_trump, charge_florida_corruptly_altering)
    graph:addEdgeBulk( { fl_dt1, fl_dt2, fl_dt3, fl_dt4, fl_dt5, fl_dt6, fl_dt7, fl_dt8, fl_dt9 });

    --walt_nauta
    local fl_wn1 = visnet.edge.new(walt_nauta, charge_florida_conspiracy_to_obstruct_justice)
    local fl_wn2 = visnet.edge.new(walt_nauta, charge_florida_withholding_a_document)
    local fl_wn3 = visnet.edge.new(walt_nauta, charge_florida_corruptly_concealing)
    local fl_wn4 = visnet.edge.new(walt_nauta, charge_florida_concealing_a_document)
    local fl_wn5 = visnet.edge.new(walt_nauta, charge_florida_scheme_to_conceal)
    local fl_wn6 = visnet.edge.new(walt_nauta, charge_florida_false_statements_and)
    local fl_wn7 = visnet.edge.new(walt_nauta, charge_florida_altering_destroying)
    local fl_wn8 = visnet.edge.new(walt_nauta, charge_florida_corruptly_altering)
    graph:addEdgeBulk( { fl_wn1, fl_wn2, fl_wn3, fl_wn4, fl_wn5, fl_wn6, fl_wn7, fl_wn8 })

    -- carlos_de_oliveira
    local fl_ceo1 = visnet.edge.new(carlos_de_oliveira, charge_florida_conspiracy_to_obstruct_justice)
    local fl_ceo2 = visnet.edge.new(carlos_de_oliveira, charge_florida_altering_destroying)
    local fl_ceo3 = visnet.edge.new(carlos_de_oliveira, charge_florida_corruptly_altering)
    local fl_ceo4 = visnet.edge.new(carlos_de_oliveira, charge_florida_false_statements_and)
    graph:addEdgeBulk( { fl_ceo1, fl_ceo2, fl_ceo3, fl_ceo4 })



--- part 4 manhattan/New York
local trump_mh = visnet.edge.new(donald_trump, charge_falsifying_business_records)
      graph:addEdge(trump_mh)

---
-- EXTRAS
---

    -- connecting various people
    con1 = visnet.edge.new(walt_nauta, donald_trump)
           con1:setArrows("to");
           con1:setOption("label", "Valet");
           con1:setOption("dashes", true);

    con2 = visnet.edge.new(carlos_de_oliveira, donald_trump)
           con2:setArrows("to");
           con2:setOption("dashes", true);
           con2:setOption("label", "Property Manager");

    con3 = visnet.edge.new(rudy_giuliani, donald_trump)
           con3:setArrows("to");
           con3:setOption("dashes", true);
           con3:setOption("label", "Lawyer");

    con4 = visnet.edge.new(john_eastman, donald_trump)
           con4:setArrows("to");
           con4:setOption("dashes", true);
           con4:setOption("label", "Lawyer");

    con5 = visnet.edge.new(sidney_powell, donald_trump)
           con5:setArrows("to");
           con5:setOption("dashes", true);
           con5:setOption("label", "Campaign Lawyer");

    con6 = visnet.edge.new(kenneth_chesebro,rudy_giuliani)
           con6:setArrows("to,from");
           con6:setOption("dashes", true);

    con7 = visnet.edge.new(mark_meadow, donald_trump)
           con7:setArrows("to");
           con7:setOption("dashes", true);
           con7:setOption("label", "Chief of Staff");

    con8 = visnet.edge.new(mike_roman, donald_trump)
          con8:setArrows("to");
          con8:setOption("dashes", true);
          con8:setOption("label", "Campaign staff");

    con9 = visnet.edge.new(jeffrey_clark, donald_trump)
          con9:setArrows("to");
          con9:setOption("dashes", true);
          con9:setOption("label", "Assistant Attorney General");

    con10 = visnet.edge.new(david_shafer,cathy_latham)
          con10:setArrows("to,from");
          con10:setOption("dashes", true);
          con10:setOption("label", "Fake Elector");

    con11 = visnet.edge.new(cathy_latham,shawn_still)
          con11:setArrows("to,from");
          con11:setOption("dashes", true);
          con11:setOption("label", "Fake Elector");

    con12 = visnet.edge.new(shawn_still, david_shafer)
          con12:setArrows("to,from");
          con12:setOption("dashes", true);
          con12:setOption("label", "Fake Elector");

          graph:addEdgeBulk({ con1, con2, con3, con4, con5, con6, con7, con8, con9, con10, con11, con12 })

---
-- get the resulting JSON
---

      -- get everything as a json string
      json_string = graph:asJson()
      --print(json_string)

      -- write the json data
      graph:writeJsonToFile("../public/data/data.json")
