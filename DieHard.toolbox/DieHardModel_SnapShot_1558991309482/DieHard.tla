------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES small, big

TypeOk == /\ small \in 0..3
          /\ big   \in 0..5

Goal   == big /= 4

Init   == /\ big   = 0
          /\ small = 0
        
FillSmall  == /\ small' = 3
              /\ big'   = big

FillBig    == /\ small' = small
              /\ big'   = 5

EmptySmall == /\ small' = 0
              /\ big'   = big

EmptyBig   == /\ big'   = 0
              /\ small' = small

SmallToBig == IF big + small <= 5
              THEN /\ small' = 0
                   /\ big'   = small + big
              ELSE /\ big'   = 5
                   /\ small' = small - (5 - big)

BigToSmall == IF big + small <= 3
              THEN /\ small' = small + big
                   /\ big'   = 0
              ELSE /\ big'   = big - (3 - small)   
                   /\ small' = 3

Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall
        
=============================================================================
\* Modification History
\* Last modified Mon May 27 22:08:24 BST 2019 by robert
\* Created Mon May 27 21:31:06 BST 2019 by robert
