#import "@preview/chemformula:0.1.3": ch
#import "@preview/typed-smiles:0.1.0": *

#set page(margin: 2.5cm)

#align(center)[
  = Comparación de Herramientas para Química
]

#heading(level: 1)[Fórmulas Químicas]

Agua:

#ch("H2O")

Ácido sulfúrico:

#ch("H2SO4")

#heading(level: 1)[Reacciones]

#ch("2 H2 + O2 -> 2 H2O")

#ch("CH4 + 2 O2 -> CO2 + 2 H2O")

#heading(level: 1)[Moléculas]

== Etanol

#smiles("CCO")

== Acetaldehído

#smiles("CC=O")

#heading(level: 1)[Anillos]

== Benceno
#smiles("C1=CC=CC=C1")

#heading(level: 1)[Moléculas Complejas]

== Cafeína

#smiles("Cn1cnc2n(C)c(=O)n(C)c(=O)c12")

#heading(level: 1)[Conclusión]

Typst puede representar fórmulas químicas y estructuras derivadas de
SMILES de manera bastante cómoda. Sin embargo, LaTeX con chemfig sigue
siendo más potente para química estructural avanzada y diagramas muy
personalizados.
