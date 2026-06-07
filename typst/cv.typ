#import "@preview/modern-cv:0.10.0": *

#show: resume.with(
  author: (
    firstname: "Emilio",
    lastname: "Izquierdo Montero",
    email: "cucusneitor@hotmail.com",
    phone: "(+52) 488 885 3863",
    github: "emili0p",
    linkedin: "emilio-izquierdo-91b16933a",
    address: "Matehuala, San Luis Potosí, México",
    positions: (
      "Ingeniero en Sistemas Computacionales",
    )
  ),
  profile-picture: none,
  date: datetime.today().display(),
  paper-size: "us-letter"
)

= Resumen profesional

#resume-entry(
  title: "",
  date: "",
  description: [
    Ingeniero en Sistemas Computacionales con experiencia en #strong[redes] y #strong[Linux].
    Líder del AWS Student Group, organizando eventos y talleres sobre computación en la nube.
    Certificado en Google Cloud Computing Foundations y TOEFL ITP B2.
    Apasionado por la automatización, scripting, software libre y el desarrollo de comunidades técnicas.
  ]
)

= Experiencia

#resume-entry(
  title: "AWS Student Group Leader",
  location: "AWS · Matehuala, SLP",
  date: "Mar 2025 - Mar 2026",
  description: [
    - Organización de eventos y talleres prácticos sobre servicios AWS (EC2, S3, Lambda)
    - Coordinación de comunidad estudiantil enfocada en computación en la nube
    - Promoción de Linux, redes y software libre en entornos académicos
    - Gestión de grupos y planificación de actividades técnicas
  ]
)

= Proyectos destacados

#resume-entry(
  title: "taged",
  location: "Rust",
  date: "",
  description: "Editor TUI estilo Vim para edición de metadatos de música"
)

#resume-entry(
  title: "FRN",
  location: "C",
  date: "",
  description: "Lenguaje de programación propio inspirado en Python y Lisp"
)

#resume-entry(
  title: "wlb (we love bash)",
  location: "Bash",
  date: "",
  description: "Colección personal de scripts de automatización para Linux"
)

#resume-entry(
  title: "kafkaexample / hadoopexample",
  location: "Python / Jupyter",
  date: "",
  description: "Proyectos de Big Data procesando streams con Kafka y MapReduce con Hadoop"
)

= Educación

#resume-entry(
  title: "Ingeniería en Sistemas Computacionales",
  location: "Tecnológico Nacional de México - Campus Matehuala",
  date: "2022 - 2026",
  description: ""
)

= Certificaciones

#resume-entry(
  title: "TOEFL ITP (B2)",
  location: "Dic 2025 - Dic 2027",
  date: "",
  description: "Certificación de inglés como lengua extranjera"
)

#resume-entry(
  title: "Google Cloud Computing Foundations Certificate",
  location: "Google · Nov 2025",
  date: "",
  description: "Fundamentos de computación en la nube con Google Cloud Platform"
)

= Idiomas y habilidades

#resume-item[
  #strong[Idiomas:] · Español (nativo) · Inglés B2 (TOEFL ITP)
]

#resume-item[
  #strong[Lenguajes:] · Rust · Python · Bash · C/C++ · Scala · TypeScript
]

#resume-item[
  #strong[Cloud & Big Data:] · AWS · Google Cloud · Kafka · Hadoop
]

#resume-item[
  #strong[Otros:] · Linux · Git · Redes · Scripting · Software Libre
]
