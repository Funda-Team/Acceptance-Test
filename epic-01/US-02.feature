Feature: Cancelar una reserva activa

Scenario: Cancelar una reserva activa
  Given El huésped accede a su lista de reservas
  When Selecciona la opción para cancelar una reserva vigente
  Then La reserva debe marcarse como cancelada y no debe generar penalización si está dentro del plazo

  Example:
    | vista             | selección                         | resultado                                      |
    | Lista de reservas | Opción de cancelar reserva activa | Reserva cancelada sin penalización              |
