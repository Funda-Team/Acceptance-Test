Feature: Gestión de suscripciones y planes

  Scenario: Ver planes de suscripción
    Given El usuario accede a la sección de planes
    When Se despliega la información de cada plan disponible
    Then El usuario puede comparar opciones y seleccionar la más adecuada

    Example:
      | vista                | selección                          | resultado                                              |
      | Sección de planes    | Ver detalles de planes disponibles | Comparar opciones y seleccionar plan adecuado           |

  Scenario: Actualizar plan de suscripción
    Given El gerente ya cuenta con una suscripción activa
    When Selecciona un nuevo plan y confirma el cambio
    Then El sistema debe actualizar su suscripción y reflejar el cambio en la facturación

    Example:
      | vista                | selección                          | resultado                                              |
      | Planes de suscripción| Seleccionar nuevo plan             | Suscripción actualizada y reflejada en facturación      |
