Feature: Gestión de Notificaciones

  Scenario: Crear una nueva notificación
    Given El administrador accede al módulo de notificaciones
    When El administrador ingresa los detalles de la notificación y la envía
    Then La notificación debe guardarse correctamente y aparecer en la lista

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de notificaciones | Formulario de nueva notificación | Notificación guardada correctamente                    |

  Scenario: Obtener las notificaciones de un hotel
    Given El administrador accede al módulo de notificaciones
    When El administrador solicita las notificaciones de un hotel específico
    Then El sistema debe devolver todas las notificaciones del hotel

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de notificaciones | Solicitar notificaciones por hotel| Notificaciones mostradas correctamente                  |
