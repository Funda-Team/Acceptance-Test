Feature: Gestión de Reservas y Habitaciones

  Scenario: Crear una nueva reserva
    Given El administrador accede al módulo de reservas
    When Completa el formulario con los datos del huésped y habitación
    Then La reserva debe guardarse correctamente y mostrarse en la lista de reservas activas

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de reservas    | Formulario de nueva reserva        | Reserva guardada y visible en reservas activas          |

  Scenario: Obtener todas las habitaciones
    Given El administrador accede al módulo de habitaciones
    When Solicita la lista de habitaciones
    Then El sistema debe mostrar todas las habitaciones disponibles

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de habitaciones| Solicitar lista de habitaciones    | Lista de habitaciones disponible correctamente          |
