Feature: Gestión de Usuarios y Roles

  Scenario: Crear una cuenta de administrador
    Given El administrador accede al formulario de registro
    When Ingresa los datos para crear la cuenta
    Then La cuenta debe crearse correctamente y asignar permisos administrativos

    Example:
      | vista                | selección                          | resultado                                              |
      | Registro de cuenta    | Formulario de administrador        | Cuenta creada correctamente y permisos asignados        |

  Scenario: Iniciar sesión con una cuenta de trabajador
    Given El trabajador tiene una cuenta registrada
    When Ingresa sus credenciales y presiona "Iniciar sesión"
    Then El sistema debe autenticar la cuenta y permitir el acceso

    Example:
      | vista                | selección                          | resultado                                              |
      | Pantalla de inicio    | Ingresar credenciales de trabajador | Trabajador autenticado correctamente y acceso permitido |
