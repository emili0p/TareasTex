#import "@preview/modern-cv:0.10.0": *

#show: resume.with(
  author: (
    firstname: "Emilio",
    lastname: "Izquierdo Montero",
    email: "emiliioizq23@gmail.com",
    phone: "(+52) 488 885 3863",
    github: "emili0p",
    linkedin: "emilio-izquierdo-91b16933a",
    website: "https://emili0p.github.io/blog",
    address: "Monterrey, Nuevo Leon, México",
    positions: (
      "Ingeniero en Sistemas Computacionales",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  paper-size: "us-letter",
)

= Resumen profesional

#resume-entry(
  title: "",
  date: "",
  description: [
    Ingeniero en Sistemas Computacionales orientado a #strong[Linux, infraestructura y computación en la nube].
    Experiencia práctica con administración de sistemas, scripting, redes, automatización y servicios de AWS.
    AWS Student Group Leader con experiencia en la organización de talleres técnicos y actividades prácticas de cloud computing.
    Interés profesional en infraestructura, administración de sistemas, automatización, software libre y tecnologías cloud.
  ],
)

= Experiencia

#resume-entry(
  title: "AWS Student Group Leader",
  location: "AWS · Matehuala, SLP",
  date: "Mar 2026 - Actualidad",
  description: [
    - Organización de eventos y talleres prácticos sobre servicios de AWS, incluyendo EC2, S3 y Lambda.
    - Coordinación de una comunidad estudiantil enfocada en computación en la nube y tecnologías de infraestructura.
    - Preparación de actividades prácticas y material técnico para introducir conceptos de cloud computing.
    - Promoción del uso de Linux, redes y software libre dentro de la comunidad estudiantil.
    - Gestión de grupos, comunicación con participantes y planificación de actividades técnicas.
  ],
)
= Educación

#resume-entry(
  title: "Ingeniería en Sistemas Computacionales",
  location: "Tecnológico Nacional de México - Campus Matehuala",
  date: "2022 - Actualidad",
  description: "Formación en desarrollo de software, redes, sistemas operativos, bases de datos, computación en la nube y fundamentos de ingeniería de sistemas.",
)

= Certificaciones

#resume-entry(
  title: "TOEFL ITP (B2)",
  location: "ETS · Dic 2025 - Dic 2027",
  date: "",
  description: "Certificación de dominio del idioma inglés como lengua extranjera.",
)

#resume-entry(
  title: "Google Cloud Computing Foundations Certificate",
  location: "Google · Nov 2025",
  date: "",
  description: "Fundamentos de computación en la nube, infraestructura, servicios de Google Cloud y conceptos esenciales de cloud computing.",
)

#resume-entry(
  title: "Fundamentals of AWS",
  location: "QA Ltd · Jul 2026",
  date: "",
  description: "Fundamentos de computación en la nube, servicios principales de AWS y conceptos de infraestructura cloud.",
)

#resume-entry(
  title: "Ciberseguridad y Resiliencia Aplicada",
  location: "Kyndryl · Agosto 2026",
  date: "",
  description: "Fundamentos de ciberseguridad y resiliencia organizacional, incluyendo gestión de riesgos, protección de activos y continuidad operativa.",
)

= Habilidades

#resume-item[
  #strong[Sistemas e infraestructura:] · Linux · Redes · Git · Bash · Scripting · Automatización
]

#resume-item[
  #strong[Cloud:] · AWS · Google Cloud · EC2 · S3 · Lambda
]

#resume-item[
  #strong[Programación:] · Python · PHP · C/C++ · TypeScript · Rust
]

#resume-item[
  #strong[Ciberseguridad:] · Seguridad de sistemas · Gestión de riesgos · Ciberresiliencia
]

#resume-item[
  #strong[Idiomas:] · Español (nativo) · Inglés B2 (TOEFL ITP)
]
