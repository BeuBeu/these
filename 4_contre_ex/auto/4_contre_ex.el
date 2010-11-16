(TeX-add-style-hook "4_contre_ex"
 (lambda ()
    (LaTeX-add-bibliographies
     "4_contre_ex/4_biblio")
    (LaTeX-add-labels
     "def:RE-automaton")
    (TeX-run-style-hooks
     "4_contre_ex/fausses_alarmes")))

