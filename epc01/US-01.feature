Feature: Gestión de reservas de huéspedes

  Scenario: Crear una nueva reserva
    Given El administrador accede al módulo de reservas
    When Completa el formulario de nueva reserva con los datos del huésped y habitación
    Then La reserva debe guardarse correctamente y mostrarse en la lista de reservas activas

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de reservas   | Formulario de nueva reserva        | Reserva guardada y visible en reservas activas          |

  Scenario: Cancelar una reserva activa
    Given El huésped accede a su lista de reservas
    When Selecciona la opción para cancelar una reserva vigente
    Then La reserva debe marcarse como cancelada y no debe generar penalización si está dentro del plazo

    Example:
      | vista                | selección                          | resultado                                              |
      | Lista de reservas    | Opción para cancelar reserva       | Reserva cancelada correctamente sin penalización        |

  Scenario: Editar fechas de una reserva
    Given El administrador selecciona una reserva existente
    When Modifica la fecha de ingreso y/o salida
    Then La reserva debe actualizarse con las nuevas fechas sin perder la información anterior

    Example:
      | vista                | selección                          | resultado                                              |
      | Reservas existentes  | Modificar fechas de la reserva     | Fechas actualizadas correctamente sin perder datos previos |
