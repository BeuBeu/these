(TeX-add-style-hook "re_automaton"
 (lambda ()
    (LaTeX-add-labels
     "sec:re-automaton"
     "def:re-automaton"
     "def:xrw_alpha"
     "def:well-defined"
     "ex:pruning")
    (TeX-run-style-hooks
     "semantics_ex")))

