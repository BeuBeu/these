(TeX-add-style-hook "main"
 (lambda ()
    (LaTeX-add-bibliographies
     "sabbrev"
     "eureca"
     "genet"
     "additional"
     "thesis")
    (LaTeX-add-labels
     "sec:conclusion")
    (TeX-run-style-hooks
     "wrapfig"
     "tikz"
     "url"
     "upgreek"
     "graphicx"
     "amssymb"
     "amsmath"
     "xy"
     "all"
     "curve"
     "inputenc"
     "utf8"
     "latex2e"
     "fsttcs10"
     "fsttcs"
     "macros"
     "introduction"
     "definitions"
     "completion"
     "re_automaton"
     "re_completion"
     "refinement"
     "conclusion"
     "proofs"
     "thm"
     "re_intersection")))

