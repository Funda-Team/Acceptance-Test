Feature: Gestión del inventario del hotel

  Scenario: Visualizar stock actual
    Given El gerente accede al módulo de inventario
    When Visualiza la lista de recursos
    Then Debería ver nombre, cantidad y estado de cada recurso disponible

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de inventario | Visualizar stock de recursos       | Ver recursos con cantidad y estado actual               |

  Scenario: Revisar necesidades de abastecimiento
    Given El sistema muestra el stock por debajo del mínimo
    When El gerente accede a la lista de alertas
    Then Debería ver qué recursos requieren ser reabastecidos

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de inventario | Ver alertas de abastecimiento      | Ver qué recursos necesitan ser reabastecidos            |
