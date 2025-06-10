Feature: Gestión de Solicitudes de Suministros

  Scenario: Crear una solicitud de suministro
    Given El administrador accede al módulo de suministros
    When Completa el formulario de solicitud con los datos del suministro
    Then La solicitud debe guardarse correctamente y aparecer en la lista de solicitudes

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de suministros | Formulario de nueva solicitud       | Solicitud guardada y visible en la lista de solicitudes |

  Scenario: Obtener todos los suministros
    Given El administrador accede al módulo de suministros
    When Solicita la lista de suministros
    Then El sistema debe mostrar todos los suministros disponibles

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de suministros | Solicitar lista de suministros     | Lista de suministros disponible correctamente          |
ß