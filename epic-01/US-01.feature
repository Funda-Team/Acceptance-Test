Feature: Crear una nueva reserva

Scenario: Crear una nueva reserva
  Given El administrador accede al módulo de reservas
  When Completa el formulario de nueva reserva con los datos del huésped y habitación
  Then La reserva debe guardarse correctamente y mostrarse en la lista de reservas activas

  Example:
    | vista             | selección                        | resultado                                      |
    | Módulo de reservas| Formulario de nueva reserva      | Reserva guardada y visible en reservas activas |
