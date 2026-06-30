#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
)

#let azul = rgb("#0057B8")
#let gris-oscuro = rgb("#222222")
#let fondo-caja = rgb("#F4F6F9")

#set text(
  font: "Liberation Serif",
  size: 10pt,
  fill: gris-oscuro,
  lang: "es",
)
#align(center)[
  #text(size: 26pt, weight: "bold", font: "Liberation Sans", fill: gris-oscuro)[
    Analítica Aumentada
  ]

  #v(-0.2cm)
  #line(length: 100%, stroke: 2.5pt + gris-oscuro)
  #v(-0.1cm)

  #text(size: 11pt, style: "italic", weight: "medium", fill: gris-oscuro.lighten(20%))[
    La Inteligencia Artificial se convierte en el nuevo estándar del software moderno, una tendencia marcada por el BI
  ]

  #v(0.1cm)
  #text(size: 10pt, weight: "bold", font: "Liberation Sans", fill: azul)[
    Por Emilio Izquierdo Montero
  ]

  #v(0.1cm)
  #line(length: 100%, stroke: 0.5pt + gray)
]
#v(0.3cm)

#show: columns.with(2, gutter: 1.5cm)

#box(
  fill: fondo-caja,
  inset: 12pt,
  radius: 4pt,
  stroke: (left: 4pt + azul),
)[
  #set text(size: 9.5pt, font: "Liberation Sans")
  *Resumen* \ \
  La analítica aumentada integra Inteligencia Artificial y Machine Learning en aplicaciones capaces de analizar información, generar recomendaciones y automatizar tareas, para tomar desiciones lo que denota que esta tendencia va mas allá del BI llegando a integrarse en cada parte del flujo de trabajo de un nuevo futuro que vendra con IA
]

#v(0.2cm)

== Windows apuesta por la IA
#show heading: set text(fill: azul, font: "Liberation Sans", size: 13pt)

Microsoft convirtió a Copilot en una pieza fundamental de Windows 11, por lo que se puede confirmar que mas que una tendencia esto es una realidad directament extraído de la inteligencia de negocios.

Entre sus funciones destacan:
#set list(marker: ([#text(fill: azul)[•]],))
- Responder preguntas;
- Resumir documentos;
- Cambiar configuraciones;
- Generar contenido;
- Asistir al usuario.

Como se ve esto sigue una clara linea sacada del BI, donde la información se procesa y en base a esa el usuario genera desiciones

#v(0.2cm)
#align(center)[
  #rect(stroke: 0.5pt + gray, radius: 2pt, inset: 8pt, fill: white)[
    #image("copilot.png", width: 40%)
  ]
  #v(-0.2cm)
  #text(size: 8pt, style: "italic", fill: gray)[
    Windows 11 incorpora Copilot como asistente inteligente nativo.
  ]
]
#v(0.2cm)

Actualmente muchas empresas busca que la inteligencia artificial sea una característica permanente de sus productos y en el caso de Microsoft del sistema operativo y de todas sus aplicaciones.

== Office también cambia

Word, Excel, Outlook y PowerPoint incorporan Microsoft 365 Copilot para automatizar tareas como:

- Redacción de documentos;
- Análisis de hojas de cálculo;
- Graficas y repotes.

#v(0.2cm)
#align(center)[
  #rect(stroke: 0.5pt + gray, radius: 2pt, inset: 8pt, fill: white)[
    #image("office.jpg", width: 40%)
  ]
  #v(-0.2cm)
  #text(size: 8pt, style: "italic", fill: gray)[
    Microsoft 365 utiliza IA en Word, Excel y PowerPoint.
  ]
]
#v(0.2cm)
== Firefox toma otro camino

#v(0.1cm)
#align(center)[
  #rect(stroke: 0.5pt + gray, radius: 2pt, inset: 8pt, fill: white, width: 40%)[
    #image("firefox.png", width: 35%)
  ]
  #v(-0.2cm)
  #text(size: 8pt, style: "italic", fill: gray)[
    Mozilla prioriza privacidad y control del usuario.
  ]
]
#v(0.1cm)

Mozilla también incorpora inteligencia artificial en Firefox, aunque con un enfoque diferente, demostrando asi que la tendencia puede cambiar o no tomarse igual por todos los que usan inteligencia artificial.

== Conclusión

La analítica aumentada está dejando de pertenecer únicamente al BI, hoy forma parte del software cotidiano mediante asistentes inteligentes, análisis automático y recomendaciones en tiempo real, por lo que estas herramientas y procesos que aprendemos sobre la inteligencia de negocio ahora se veera reflajada a una microescala con cosas como el software que usamos y no solo de manera empresarial.


#line(length: 100%, stroke: 0.5pt + gray)

#text(size: 8pt, fill: gris-oscuro.lighten(30%))[
  *Referencias* \ \
  [1] #link("https://www.celonis.com/es/blog/10-trends-that-will-shape-the-future-of-business-intelligence")[Celonis. _10 Trends That Will Shape the Future of Business Intelligence_] \
  [2] #link("https://learn.microsoft.com/es-es/microsoft-365/copilot/microsoft-365-copilot-overview")[Microsoft Learn. _Descripción general de Microsoft 365 Copilot_] \
  [3] #link("https://www.firefox.com/en-US/features/ai-powered-chatbot/")[Mozilla Firefox. _AI-powered Chatbot_]
]
