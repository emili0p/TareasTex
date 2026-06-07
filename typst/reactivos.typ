#set document(title: "Cuestionario: Servicios de Red")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm)
)
#set text(size: 12pt)

#show heading: set text(size: 1.2em, weight: "bold")

#align(center)[#text(size: 1.8em, weight: "bold")[Cuestionario: Servicios de Red]]

#v(1em)

*Instrucciones*
Seleccione la opción correcta en cada pregunta.

#v(1em)

*DHCP*

#set enum(numbering: (it) => "DHCP-" + repr(it) + ".")
+ ¿Cuál es la función principal de DHCP?
  #set enum(numbering: "a)")
  + Transferir archivos
  + Asignar direcciones IP automáticamente
  + Traducir dominios
  + Enviar correos

+ ¿Qué significa DHCP?
  + Dynamic Host Configuration Protocol
  + Data Host Control Protocol
  + Domain Host Configuration Program
  + Dynamic Hardware Communication Protocol

+ ¿Qué información puede proporcionar un servidor DHCP?
  + Dirección IP
  + Puerta de enlace
  + Servidor DNS
  + Todas las anteriores

+ ¿En qué puerto trabaja DHCP principalmente?
  + 22
  + 67/68
  + 80
  + 53

+ ¿Qué problema resuelve DHCP en redes grandes?
  + Configuración manual de IP
  + Transferencia lenta
  + Seguridad del correo
  + Compresión de datos

#v(1em)

*DNS*

#set enum(numbering: (it) => "DNS-" + repr(it) + ".")
+ ¿Cuál es la función principal del DNS?
  #set enum(numbering: "a)")
  + Convertir nombres de dominio en direcciones IP
  + Transferir archivos
  + Administrar usuarios
  + Compartir discos

+ ¿Qué puerto usa DNS generalmente?
  + 53
  + 22
  + 25
  + 443

+ ¿Cuál es un ejemplo de servidor DNS público?
  + 8.8.8.8
  + 192.168.1.1
  + 127.0.0.1
  + 10.0.0.1

+ ¿Qué tipo de registro DNS asocia un dominio con una IP?
  + MX
  + A
  + TXT
  + CNAME

+ ¿Qué sucede si falla DNS?
  + No se pueden resolver dominios
  + Se pierden archivos
  + Se bloquea la red
  + Se apaga el router

#v(1em)

*SSH*

#set enum(numbering: (it) => "SSH-" + repr(it) + ".")
+ ¿Para qué se usa SSH?
  #set enum(numbering: "a)")
  + Administración remota segura
  + Enviar correos
  + Transferir páginas web
  + Resolver dominios

+ ¿Qué puerto utiliza SSH por defecto?
  + 21
  + 22
  + 23
  + 80

+ ¿Qué característica distingue a SSH de Telnet?
  + Compresión
  + Cifrado
  + Uso de UDP
  + Multicast

+ ¿Qué herramienta común usa SSH en Linux?
  + ssh
  + ftp
  + curl
  + dig

+ ¿Qué permite SSH además del acceso remoto?
  + Túneles de red
  + Compartir impresoras
  + DHCP
  + NAT

#v(1em)

*FTP*

#set enum(numbering: (it) => "FTP-" + repr(it) + ".")
+ ¿Para qué sirve FTP?
  #set enum(numbering: "a)")
  + Transferencia de archivos
  + Correo electrónico
  + DNS
  + Autenticación

+ ¿Qué puerto usa FTP?
  + 21
  + 22
  + 25
  + 80

+ ¿Qué problema tiene FTP tradicional?
  + No tiene cifrado
  + Es muy lento
  + No usa TCP
  + No usa autenticación

+ ¿Cuál es una alternativa segura a FTP?
  + SFTP
  + SMTP
  + HTTP
  + SNMP

+ ¿Qué permite FTP?
  + Subir y descargar archivos
  + Resolver dominios
  + Asignar IP
  + Enviar correos

#v(1em)

*HTTP*

#set enum(numbering: (it) => "HTTP-" + repr(it) + ".")
+ ¿Qué protocolo usa la web?
  #set enum(numbering: "a)")
  + HTTP
  + FTP
  + DNS
  + SSH

+ ¿Qué puerto usa HTTP?
  + 80
  + 22
  + 25
  + 53

+ ¿Qué versión segura existe?
  + HTTPS
  + FTPS
  + SMTPS
  + DNSSEC

+ HTTP funciona bajo el modelo:
  + Cliente-servidor
  + Peer to peer
  + Multicast
  + Broadcast

+ Un navegador web utiliza principalmente:
  + HTTP
  + LDAP
  + NFS
  + DHCP

#v(1em)

*NFS*

#set enum(numbering: (it) => "NFS-" + repr(it) + ".")
+ ¿Qué permite NFS?
  #set enum(numbering: "a)")
  + Compartir sistemas de archivos en red
  + Enviar correos
  + Asignar IP
  + Resolver dominios

+ NFS es común en sistemas:
  + Linux/Unix
  + Windows exclusivamente
  + iOS
  + Android

+ ¿Qué permite montar NFS?
  + Directorios remotos
  + Correos
  + Usuarios
  + DNS

+ NFS funciona sobre:
  + RPC
  + SMTP
  + SNMP
  + POP3

+ ¿Para qué se usa en servidores?
  + Compartir almacenamiento
  + DNS
  + VPN
  + DHCP

#v(1em)

*LDAP*

#set enum(numbering: (it) => "LDAP-" + repr(it) + ".")
+ LDAP se usa para:
  #set enum(numbering: "a)")
  + Directorios de usuarios
  + Transferencia de archivos
  + DNS
  + HTTP

+ LDAP significa:
  + Lightweight Directory Access Protocol
  + Local Directory Access Program
  + Logical Data Access Protocol
  + Lightweight Data Application Protocol

+ LDAP es común en:
  + Active Directory
  + FTP
  + HTTP
  + DHCP

+ LDAP organiza datos en forma de:
  + Árbol jerárquico
  + Tabla
  + Grafo
  + Lista

+ LDAP se usa para:
  + Autenticación
  + Resolución DNS
  + Transferencia FTP
  + Streaming

#v(1em)

*SMTP*

#set enum(numbering: (it) => "SMTP-" + repr(it) + ".")
+ SMTP se usa para:
  #set enum(numbering: "a)")
  + Enviar correos
  + Descargar correos
  + DNS
  + FTP

+ Puerto común de SMTP:
  + 25
  + 22
  + 80
  + 53

+ SMTP significa:
  + Simple Mail Transfer Protocol
  + Secure Mail Transfer Program
  + System Mail Transmission Protocol
  + Simple Message Transport Program

+ SMTP trabaja junto con:
  + POP3 o IMAP
  + FTP
  + DNS
  + SNMP

+ SMTP se usa principalmente en:
  + Servidores de correo
  + Servidores web
  + Routers
  + Switches

#v(1em)

*Proxy*

#set enum(numbering: (it) => "Proxy-" + repr(it) + ".")
+ Un proxy actúa como:
  #set enum(numbering: "a)")
  + Intermediario entre cliente y servidor
  + DNS
  + Servidor DHCP
  + Switch

+ Una función del proxy es:
  + Filtrado de contenido
  + Asignar IP
  + Resolver dominios
  + Transferir correo

+ Un proxy puede mejorar:
  + Cache de contenido
  + DNS
  + DHCP
  + SMTP

+ Un proxy ayuda a:
  + Controlar acceso a internet
  + Crear discos
  + Enviar correos
  + DHCP

+ Ejemplo de software proxy:
  + Squid
  + Apache
  + Bind
  + Postfix
