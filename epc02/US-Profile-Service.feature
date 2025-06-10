Feature: Gestión de Perfiles de Clientes y Proveedores

  Scenario: Crear un nuevo perfil de cliente
    Given El administrador accede al formulario de registro de cliente
    When Ingresa los datos del cliente y envía el formulario
    Then El sistema debe crear el perfil correctamente y mostrar los detalles del cliente

    Example:
      | vista                | selección                          | resultado                                              |
      | Registro de cliente   | Formulario de nuevo cliente        | Cliente registrado correctamente y perfil mostrado      |

  Scenario: Obtener todos los proveedores
    Given El administrador accede al módulo de proveedores
    When Solicita la lista de proveedores
    Then El sistema debe devolver todos los proveedores disponibles

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de proveedores | Solicitar lista de proveedores     | Lista de proveedores mostrada correctamente             |
