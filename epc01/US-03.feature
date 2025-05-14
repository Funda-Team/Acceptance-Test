Feature: Comunicación interna en el hotel

  Scenario: Enviar mensaje al gerente
    Given El administrador accede a la sección de mensajes
    When Escribe y envía un mensaje al gerente del hotel
    Then El gerente debe recibir la notificación del mensaje en su bandeja de entrada

    Example:
      | vista                | selección                          | resultado                                              |
      | Mensajes             | Escribir y enviar mensaje          | Gerente recibe mensaje en bandeja de entrada             |

  Scenario: Ver historial de mensajes
    Given El gerente accede al módulo de comunicación
    When Visualiza la conversación con un administrador
    Then Debería ver todos los mensajes enviados y recibidos con orden cronológico

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de mensajes   | Ver historial de mensajes          | Ver conversación con mensajes ordenados cronológicamente |
