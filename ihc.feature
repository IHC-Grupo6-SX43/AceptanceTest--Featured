Feature: US001 - registro de usuarios para estudiantes
    
    Como estudiante universitario 
    quiero registrarme en el sistema
    para tener acceso al aplicativo 

    Scenario: El usuario se registra satisfactoriamente

    Dado que el usuario ingresa su <nombre> en la <barra de texto>
    Y el usuario ingresa su <apellido> a la <barra de texto>
    Y el usuario ingresa su <DNI> en la <barra de texto>
    Cuando el sistema verifique la compatibilidad con los <datos ingresados>
    Y el usuario da click en el <boton de accion registrar> 
    Entonces el sistema muestra una <caja de texto> 
    Y el sistemma indica que el <registro> se realiza correctamente.

     Examples: Datos de entrada
         | datos ingresados | nombre | apellido | DNI | barra de texto | boton de accion registrar |

     Examples: Datos de salida
         | caja de texto | registro |

    Scenario: El usuaro no logra registrarse correctamente 

    Dado que el usuario ingresa su <nombre> en la <barra de texto>
    Y el usuario ingresa su <apellido> a la <barra de texto>
    Y el usuario ingresa su <DNI> en la <barra de texto>
    Cuando el sistema detecte algún <error> de compatibilidad en los <datos ingresados>
    Y el usuario da click en el <boton de accion registrar> 
    Entonces el sistema muestra una <caja de texto> que indica que ocurrió un <error en el registro>.

         Examples: Datos de entrada
         | datos ingresados | nombre | apellido | DNI | barra de texto | boton de accion registrar |

     Examples: Datos de salida
         | caja de texto | registro | error | error en el registro |

////

Feature: US002 - búsqueda de opciones laborales 
    
    Como estudiante universitario 
    quiero buscar las opciones de trabajo más llamativa
    para decidir si debería aplicar o no.

    Scenario: El usuario usa la barra de búsqueda

    Dado que el usuario hace click en la <barra de busqueda>
    Y el usuario escribe los <datos> que desea buscar
    Cuando el usuario haga click en el <boton de accion buscar>
    Entonces el sistema muestra los <trabajos disponibles> coincidentes a la búsqueda realizada. 

     Examples: Datos de entrada
         | barra de búsqueda | datos | botón de acción buscar |

     Examples: Datos de salida
         | trabajos disponibles |

    Scenario: El usuaro utiliza el filtro de búsquedas

    Dado que el usuario hace click en el <icono de filtros>
    Y el usuario selecciona los <tags> disponibles de su interés
    Cuando el usuario presione el <boton de accion buscar> 
    Entonces el sistema aplica los <filtros> seleccionados a los <resultados de busqueda generales>
    Y el sistema muestra los <resultados de busqueda optimizados> coincidentes a los <filtros>.

         Examples: Datos de entrada
         | icono de filtros | tags | boton de accion buscar |

     Examples: Datos de salida
         | resultados de busqueda generales | resultados de busqueda optimizados | 

////

Feature: US003 - comunicación con un asesor de dudas de la empresa
    
    Como estudiante universitario 
    quiero comunicarme con el área de empleabilidad de la empresa
    para que puedan resolver mis dudas.

    Scenario: El usuario hace uso del chat directo

    Dado que el usuario selecciona la <opcion contactar por mensaje>
    Y el usuario escribe sus consultas en la <barra de mensajes del chat>
    Cuando el usuario haga click en el <boton de accion enviar>
    Entonces el sistema envía el <mensaje> al asesor de dudas de la empresa. 

     Examples: Datos de entrada
         | opcion contactar por mensaje | barra de mensajes del chat | boton de accion enviar |

     Examples: Datos de salida
         | mensaje |

    Scenario: El usuario examina la información de la empresa

    Dado que el usuario hace click en el <perfil de la empresa>
    Cuando el usuario presione el <boton informacion de contacto>
    Entonces el sistema muestra la <direccion> de la empresa
    Y el sistema muestra el <numero de telefono> de la empresa
    Y el sistema muestra las <redes sociales> de la empresa.

     Examples: Datos de entrada
         | perfil de la empresa | boton indormacion de contacto |

     Examples: Datos de salida
         | direccion | numero de telefono | redes sociales |

////

Feature: US004 - colocar mi informacion correcta al postular a un trabajo
    
    Como estudiante universitario 
    quiero gestionar mi archivo de postulante
    para estar seguro si envié la información correcta.

    Scenario: El usuario edita la información de su postulación

    Dado que el sistema aún no cierra la <opcion de postular>
    Y el usuario hace click en la <opcion editar informacion>
    Y el usuario realiza cambios en los <datos> que considere necesarios
    Cuando el usuario haga click en el <boton de aplicar cambios>
    Entonces el sistema modifica los <cambios correspondientes> en el <archivo de informacion del postulante>. 

     Examples: Datos de entrada
         | opcion de postular | opcion editar informacion | datos | boton de apllicar cambios |

     Examples: Datos de salida
         | cambios correspondientes | archivo de informacion del postulante |

    Scenario: El usuario elimina su postulación 
    Dado que el sistema aún no cierra la <opcion de postular> 
    Cuando el usuario hace click en la <opcion eliminar postulacion>
    Entonces el sistema muestra una <caja de texto> que indica que la <postulacion> ha sido eliminada.

     Examples: Datos de entrada
         | opcion de eliminar postulacion | opcion de postular | 

     Examples: Datos de salida
         | caja de texto | postulacion |

////

Feature: US005 - crear el perfil del usuario y gestionarlo
    
    Como egresado de la universidad 
    quiero quiero crear un perfil en la aplicación con información importante
    para postular a oportunidades de trabajo.

    Scenario: El usuario añade información esencial a su perfil

    Dado que el usuario ingresa <informacion sobre sus habilidades>
    Y el usuario ingresa <informacion acerca de sus centros de estudios>
    Y el usuario hace click en la <opcion editar informacion>
    Cuando el usuario haga click en el <boton generar perfil>
    Entonces el sistema añade <informacion colocada por el usuario> a su perfil
    Y el sistema publica el <perfil del usuario> dentro del aplicativo.

     Examples: Datos de entrada
         | informacion sobre sus habilidades | informacion acerca de sus centros de estudios | 
         | boton generar perfil | opcion editar informacion |  

     Examples: Datos de salida
         | informacion colocada por el usuario | perfil del usuario |

    Scenario: El usuario adjunta documentos/certificados necesarios a su perfil
    Dado que el usuario presiona el <boton adjuntar documento>
    Y el usuario selecciona los <documentos que desea adicionar a su perfil> 
    Cuando el usuario presione el <boton agregar>
    Entonces el sistema convierte los documentos a pdf automaticamente
    Y el sistema añade dichos documentos al perfil del usuario
    Y el sistema publica la <version actualizada del perfil del usuario>.

     Examples: Datos de entrada
         | boton adjuntar documento | dcumentos que desea adicionar a su perfil | 

     Examples: Datos de salida
         | version actualizada del perfil del usuario |

////

Feature: US006 - postular a trabajos disponibles
    
    Como egresado de la universidad 
    quiero postular al trabajo que elegí
    para tener una oportunidad de ser contratado.

    Scenario: El usuario aplica al trabajo elegido

    Dado que el usuario selecciona el <trabajo de su interes> 
    Y el sistema muestra los detalles del <trabajo seleccionado>
    Y el usuario lee los detalles del <trabajo seleccionado>
    Cuando el usuario presione el <boton postular al trabajo>
    Entonces el sistema añade el <perfil del usuario> a la <lista de aplicantes al trabajo>. 

     Examples: Datos de entrada
         | trabajo de su interes | trabajo seleccionado | boton postular al trabajo |  

     Examples: Datos de salida
         | perfil del usuario | lista de aplicantes al trabajo |

    Scenario: El usuario llena el formulario propuesto
    Dado que el usuario presiona el <boton aplicar al trabajo>
    Y el sistema muestra el <formulario del trabajo seleccionado>
    Y el usuario rellena el <formulario con la informacion solicitada> 
    Cuando el usuario presione el <boton de terminar formulario> 
    Entonces el sistema registra el <formulario del postulante>
    Y el sistema añade el <formulario del postulante> al la <lista de postulantes>.

     Examples: Datos de entrada
         | boton aplicar al trabajo | formulario del trabajo seleccionado | formulario con la informacion solicitada |
         | boton de terminar formulario |

     Examples: Datos de salida
         | formulario del postulante | lista de postulantes |

////

Feature: US007 - registrar empresa en el aplicativo
    
    Como reclutador de personal
    quiero registrar a la empresa en el aplicativo
    para poder acceder a sus funcionalidades.

    Scenario: El usuario registra satisfactoriamente su empresa

    Dado que el usuario ingresa el <nombre de la empresa>
    Y el usuario agrega <informacion esencial de la empresa>
    Cuando el sistema verifique la <existencia de los datos ingresados> 
    Y el usuario de click al <boton registrar>
    Entonces el sistema muestra el <mensaje que el registro se realizo correctamente>.

     Examples: Datos de entrada
         | nombre de la empresa | informacion esencial de la empresa | boton registrar |  

     Examples: Datos de salida
         | existencia de los datos ingresados | mensaje que el registro se realizo correctamente |

    Scenario: El usuario no se registra de manera correcta

    Dado que el usuario ingresa el <nombre de la empresa>
    Y el usuario agrega <informacion esencial de la empresa>
    Cuando el sistema verifique la <existencia de los datos ingresados> 
    Y el sistema detecte algún <error de compatibilidad en los datos ingresados>
    Y el usuario de click al <boton registrar>
    Entonces el sistema muestra el <mensaje que hay un error en el registro>
    Y el sistema muestra los <campos donde se decteta el error>.

     Examples: Datos de entrada
         | nombre de la empresa | informacion esencial de la empresa | boton registrar |  

     Examples: Datos de salida
         | existencia de los datos ingresados | mensaje que hay un error en el registro |
         | error de compatibilidad en los datos ingresados | campos donde se decteta el error |

    ////

Feature: US008 - crear un formulario para los postulantes
    
    Como reclutador de personal
    quiero crear un formulario de postulación 
    para que los usuarios interesados puedan inscribirse.

    Scenario: El usuario crea un formulario de postulación

    Dado que el usuario ingresa al <apartado de creacion de formulario>
    Y el usuario agrega <informacion del puesto de trabajo que ofrece>
    Cuando el usuario presione el <boton publicar>
    Entonces el sistema muestra el <formulario de postulacion> en la aplicación.

     Examples: Datos de entrada
         | apartado de creacion de formulario | informacion del puesto de trabajo que ofrece | boton publicar |  

     Examples: Datos de salida
         | formulario de postulacion |

    Scenario: El usuario accede a los formularios de los postulantes

    Dado que el sistema cierra la <admision de formularios de postulacion>
    Cuando el usuario selecciona el <formulario de postulacion deseado>
    Y el usuario de click al <boton mostrar resultados>
    Entonces el sistema muestra <la lista de aplicantes junto a su respectivo formulario>.

     Examples: Datos de entrada
         | formulario de postulacion deseado | boton mostrar resultados |

     Examples: Datos de salida
         | admision de formularios de postulacion | la lista de aplicantes junto a su respectivo formulario |

///

Feature: US009 - revisar formularios de postulantes
    
    Como reclutador de personal
    quiero revisar la información de los postulantes 
    para poder elegir a los más aptos y contratarlos.

    Scenario: El usuario revisa la información del postulante

    Dado que el sistema cierra la <admision de formularios de postulacion>
    Y el usuario accede al <apartado revisar postulantes> 
    Cuando el usuario presione el <perfil de un postulante> 
    Entonces el sistema muestra el <perfil detallado del postulante>.

     Examples: Datos de entrada
         | apartado revisar postulantes | perfil de un postulante |  

     Examples: Datos de salida
         | admision de formularios de postulacion | perfil detallado del postulante |

    Scenario: El usuario acepta al postulante

    Dado que el usuario ingresa al <perfil del postulante>
    Cuando el usuario presiona el <boton aceptar postulante> 
    Entonces el sistema muestra un <mensaje de que se ha aceptado al postulante>
    Y el sistema añade el <perfil del postulante> al <listado de postulantes aceptados>. 

     Examples: Datos de entrada
         | perfil del postulante | boton mostrar resultados |

     Examples: Datos de salida
         | mensaje de que se ha aceptado al postulante | listado de postulantes aceptado |

    Scenario: El usuario rechaza la postulación

    Dado que el usuario ingresa al <perfil del postulante>
    Cuando el usuario presiona el <boton rechazar postulante> 
    Entonces el sistema elimina al postulante de la <lista de postulantes> 

     Examples: Datos de entrada
         | perfil del postulante | boton rechazar postulante |

     Examples: Datos de salida
         | lista de postulantes |

    Scenario: El usuario bloquea la postulación

    Dado que el usuario ingresa al <perfil del postulante>
    Cuando el usuario presiona el <boton bloquear> 
    Entonces el sistema elimina al postulante de la <lista de postulantes> 
    Y el sistema restringe las <postulaciones futuras del usuario> dentro de la empresa.

     Examples: Datos de entrada
         | perfil del postulante | boton bloquear |

     Examples: Datos de salida
         | lista de postulantes | postulaciones futuras del usuario |

    

///

Feature: US010 - acceso al chat con postulantes
    
    Como reclutador de personal
    quiero revisar la información de los postulantes 
    para poder elegir a los más aptos y contratarlos.

    Scenario: El usuario accede a la sección de los chats 

    Dado que el usuario recibe una <notificacion de mensajes>
    Y el usuario abre la <seccion de los chats>  
    Cuando el usuario presione el <chat del mensaje recibido> 
    Entonces el sistema muestra el <chat con el mensaje del postulante>.

     Examples: Datos de entrada
         | seccion de los chats | chat del mensaje recibido |  

     Examples: Datos de salida
         | notificacion de mensajes | chat con el mensaje del postulante |

    Scenario: El usuario responde el mensaje

    Dado que el usuario selecciona la <barra de mensajes del chat>
    Y el usuario responde el mensaje del postulante
    Cuando el usuario presiona el <boton enviar> 
    Entonces el sistema envia el <mensaje al postulante>.
    
     Examples: Datos de entrada
         | barra de mensajes del chat | boton enviar |

     Examples: Datos de salida
         | mensaje al postulante |

////

Feature: US011 - búsqueda de empresas

    Como postulante
    quiero realizar una búsqueda de empresas 
    para poder acceder a sus perfiles.

    Scenario: El usuario busca perfiles de empresa 

    Dado que el usuario accede a la <seccion de busqueda>  
    Cuando el usuario selecciona la opcion de empresas
    Entonces el sistema muestra la <lista de empresas disponibles>.

     Examples: Datos de entrada
         | seccion de busqueda |  

     Examples: Datos de salida
         | lista de empresas disponibles |

    Scenario: El usuario busca una empresa específica

    Dado que el usuario selecciona la <barra de busqueda> 
    Y el usuario busca la <empresa de su interes>
    Cuando el usuario presiona el <boton buscar> 
    Entonces el sistema muestra las <empresas segun los terminos de busqueda>.
    
     Examples: Datos de entrada
         | barra de busqueda | empresa de su interes | boton buscar |

     Examples: Datos de salida
         | empresas segun los terminos de busqueda |

////

Feature: US012 - iniciar sesion como postulante

    Como postulante
    quiero iniciar sesión en mi cuenta 
    para acceder a las funcionalidades de la aplicación.

    Scenario: El usuario inicia sesión correctamente

    Dado que el usuario ingresa su <nombre de usuario> 
    Y el usuario ingresa su <contrasena>  
    Cuando el usuario presiona el <boton iniciar sesion>
    Y el sistema verifica si hay compatibilidad con la <base de datos>
    Entonces el sistema le da acceso al postulante a la aplicacion.

     Examples: Datos de entrada
         | nombre de usuario | contrasena | boton iniciar sesion |

     Examples: Datos de salida
         | base de datos |

    Scenario: El usuario no inicia sesión correctamente

    Dado que el usuario ingresa su <nombre de usuario> 
    Y el usuario ingresa su <contrasena>  
    Cuando el usuario presiona el <boton iniciar sesion>
    Y el sistema no encuentra compatibilidad con la <base de datos>
    Entonces el sistema muestra un <mensaje que indica el error en los datos ingresados>.

     Examples: Datos de entrada
         | nombre de usuario | contrasena | boton iniciar sesion |

     Examples: Datos de salida
         | base de datos | mensaje que indica el error en los datos ingresados |

///

Feature: US013 - acceso a la lista de postulantes aceptados

    Como postulante
    quiero iniciar sesión en mi cuenta 
    para acceder a las funcionalidades de la aplicación.

    Scenario: El usuario inicia sesión correctamente

    Dado que el usuario ingresa su <nombre de usuario> 
    Y el usuario ingresa su <contrasena>  
    Cuando el usuario presiona el <boton iniciar sesion>
    Y el sistema verifica si hay compatibilidad con la <base de datos>
    Entonces el sistema le da acceso al postulante a la aplicacion.

     Examples: Datos de entrada
         | nombre de usuario | contrasena | boton iniciar sesion |

     Examples: Datos de salida
         | base de datos |

    Scenario: El usuario no inicia sesión correctamente

    Dado que el usuario ingresa su <nombre de usuario> 
    Y el usuario ingresa su <contrasena>  
    Cuando el usuario presiona el <boton iniciar sesion>
    Y el sistema no encuentra compatibilidad con la <base de datos>
    Entonces el sistema muestra un <mensaje que indica el error en los datos ingresados>.

     Examples: Datos de entrada
         | nombre de usuario | contrasena | boton iniciar sesion |

     Examples: Datos de salida
         | base de datos | mensaje que indica el error en los datos ingresados |


Feature: US018 - cerrar sesión

    Como usuario
    quiero cerrar la sesión de mi cuenta
    para poder acceder a otra cuenta desde mi dispositivo.

    Scenario: El usuario cierra sesión de su cuenta personal

    Dado que el usuario ingresa a <configuracion> 
    Cuando el usuario presiona el <boton cerrar sesion>
    Entonces el sistema cierra la sesion del usuario
    Y el sistema muetsra la <pagina de inicio de sesion>.

     Examples: Datos de entrada
         | configuracion | boton cerrar sesion |

     Examples: Datos de salida
         | pagina de inicio de sesion |

    Scenario: El usuario no inicia sesión correctamente

    Dado que el usuario ingresa a <configuracion> 
    Cuando el usuario presiona el <boton cerrar sesion>
    Y el sistema detecta un <error>
    Entonces el sistema no permite al usuario cerrar la sesion
    Y el sistema muestra un <mensaje indicando que lo intente mas tarde>.

     Examples: Datos de entrada
         | configuracion | boton cerrar sesion |

     Examples: Datos de salida
         | mensaje indicando que lo intente mas tarde | error |