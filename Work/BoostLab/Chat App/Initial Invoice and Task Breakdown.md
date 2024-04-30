Recursos

- OpenAPI Tests ($50-100):
  Cada invocación de la API de OpenAPI para aproximadamente 3500 palabras tiene
  un costo aproximado de entre 0.03 y 0.06 centavos de dólar. Para pruebas, será
  necesario contar con cierto presupuesto para realizar pruebas. 100 dólares es un
  sobreestimado del costo de las pruebas, pero permitiría aproximadamente 1670 requests
  durante la fase inicial del proyecto. Por defecto OpenAPI otorga $5 dólares de prueba
  lo cual sería suficiente para 80 requests.
  
MVP

- 3 Semanas ($500):
  Probar Webwhiz. Levantar una instancia local para pruebas en la nube. Esto
  debería de incluir los siguientes características:
  - Web crawling periódico
  - Personalizar look chatbots
  - Generar javascript para integrar Chatbot
  - Conexión con API de OpenAPI
  - Historial de Chats
  
- 1 Semana ($150):
  Análisis de siguientes pasos. Utilizar descubrimientos de las anteriores
  3 semanas para determinar si modificar el proyecto o utilizar la base para
  desarrollar algo más.
  
- 4 Semanas ($500):
  Añadir soporte para PDF, Word y Video. Audio, hojas de cálculo y otras
  fuentes similares pueden tomar un poco más, pero buena parte de la lógica
  probablemente estará cubierta con los primeros 3 métodos, por lo que los
  adicionales pueden desarrollarse con el tiempo
  
- 1-2 Semanas ($400):
  Incluir la capacidad de editar los documentos utilizados como una base de datos.
  Debido a que implicaría la utilización de los recursos que ya estarían disponibles
  gracias a la infraestructura de Webwhiz, puede que tome más o menos tiempo (dependiendo
  de si es suficiente la infraestructura ya disponible)
  
- 4 Semanas ($600):
  Integración con Whatsapp. Incluiría utilización de funciones lambda en nube.
  Requiere un negocio verificado en Facebook. Podría utilizarse ChatFuel como
  fue colocado en las notas del brief
  
- 3 Semanas ($400):
  Entrenamiento manual y edición de prompts desde la base de datos. Esto permitiría
  a los administradores rápidamente editar como se le alimentan los datos a la IA para
  que genere la información final
  
- 1-2 Semanas ($200):
  Rate limiting. Limitar la API para no permitir a los usuarios realizar un mayor
  número de requests sobre lo normal. Mostrar respuestas por defecto cuando el límite
  se ha superado o cobrar el sobrante.
  
- 1-2 Semanas ($300):
  Integración con stripe. Tiempo de integración puede variar dependiendo de que tanto
  tiempo se quiera gastar en la implementación de una interfaz administrativa
  
- 1 Semana ($250):
  Optimizaciones, modificaciones finales y deployment

Total: $3850-3900
Tiempo (Pesimista): 5-6 meses
