(TeX-add-style-hook "thm"
 (lambda ()
    (LaTeX-add-bibitems
     "pBrainerd-IC69"
     "pCoquideDauchetGV-FCT89"
     "pDauchetTison-LICS90"
     "pGilleronTison-FI95"
     "pJacquemard-RTA96"
     "pRety-LPAR99"
     "pSalomaa88")
    (LaTeX-add-labels
     "thm:matching-complete"
     "lem:norm_determinism"
     "sec:exact"
     "thm:regular"
     "sec:intersection"
     "def:reachable-states")))

