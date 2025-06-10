Feature: Gestión de Reportes de Recursos

  Scenario: Crear un nuevo reporte
    Given El administrador accede al módulo de reportes
    When Completa el formulario de creación de reporte con los datos del recurso
    Then El reporte debe guardarse correctamente y mostrarse en la lista de reportes

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de reportes    | Formulario de creación de reporte   | Reporte guardado y visible en la lista de reportes      |

  Scenario: Obtener un reporte por ID
    Given El administrador accede a la lista de reportes
    When Selecciona un reporte de la lista
    Then El sistema debe mostrar los detalles del reporte seleccionado

    Example:
      | vista                | selección                          | resultado                                              |
      | Lista de reportes    | Seleccionar reporte por ID         | Detalles del reporte mostrado correctamente             |
