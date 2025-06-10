Feature: Gestión de Planes de Suscripción

  Scenario: Ver los planes de suscripción disponibles
    Given El usuario accede a la sección de planes
    When El usuario solicita ver los planes disponibles
    Then El sistema debe mostrar todos los planes de suscripción

    Example:
      | vista                | selección                          | resultado                                              |
      | Sección de planes    | Solicitar ver planes               | Mostrar lista de planes de suscripción                  |

  Scenario: Actualizar el plan de suscripción
    Given El usuario tiene un plan activo
    When El usuario selecciona un nuevo plan y confirma
    Then El sistema debe actualizar el plan de suscripción y reflejarlo en el pago

    Example:
      | vista                | selección                          | resultado                                              |
      | Sección de planes    | Seleccionar nuevo plan             | Plan de suscripción actualizado correctamente           |
