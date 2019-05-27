--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers
VARIABLES i, pc

Init == (i = 0) /\ (pc = "start")

SomeFunction == \/ /\ pc = "start"
                   /\ i' \in 0..1000
                   /\ pc' = "executed_function"
                
Increment    == \/ /\ pc = "executed_function"
                   /\ i' = i + 1
                   /\ pc = "done"
                
Next         == SomeFunction \/ Increment

=============================================================================
\* Modification History
\* Last modified Mon May 27 21:17:22 BST 2019 by robert
\* Created Mon May 27 21:02:46 BST 2019 by robert
