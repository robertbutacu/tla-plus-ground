---- MODULE MC ----
EXTENDS TransactionCommit, TLC

\* CONSTANT definitions @modelParameterConstants:0RM
const_155914092410415000 == 
{"r1", "r2", "r3"}
----

\* INIT definition @modelBehaviorInit:0
init_155914092410416000 ==
TCInit
----
\* NEXT definition @modelBehaviorNext:0
next_155914092410417000 ==
TCNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_155914092410418000 ==
TCTypeOK
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_155914092410419000 ==
TCConsistent
----
=============================================================================
\* Modification History
\* Created Wed May 29 15:42:04 BST 2019 by robert
