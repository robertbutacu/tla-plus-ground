---- MODULE MC ----
EXTENDS TransactionCommit, TLC

\* CONSTANT definitions @modelParameterConstants:0RM
const_15591408071726000 == 
{"r1", "r2", "r3"}
----

\* INIT definition @modelBehaviorInit:0
init_15591408071727000 ==
TCInit
----
\* NEXT definition @modelBehaviorNext:0
next_15591408071728000 ==
TCNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_15591408071729000 ==
TCTypeOK
----
=============================================================================
\* Modification History
\* Created Wed May 29 15:40:07 BST 2019 by robert
