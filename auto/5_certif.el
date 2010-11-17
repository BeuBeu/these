(TeX-add-style-hook "5_certif"
 (lambda ()
    (LaTeX-add-labels
     "chap:certif"
     "sec:objectives"
     "sec:inclusion"
     "sec:termination"
     "sec:correction"
     "lem:cut"
     "thm:soundness"
     "sec:completness"
     "eq:prop0"
     "sec:closure"
     "th:completeness"
     "par:si-le-membre"
     "sec:benchmarks"
     "tab:benchs"
     "sec:conclusion")
    (TeX-add-symbols
     "env")
    (TeX-run-style-hooks
     "5_certif/rewriting"
     "5_certif/automata")))

