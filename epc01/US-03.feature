Feature: Editar fechas de una reserva

Scenario: Editar fechas de una reserva
  Given El administrador selecciona una reserva existente
  When Modifica la fecha de ingreso y/o salida
  Then La reserva debe actualizarse con las nuevas fechas sin perder la información anterior

  Example:
    | vista             | selección                          | resultado                                      |
    | Reservas existentes| Modificar fechas de la reserva     | Fechas actualizadas correctamente               |
