Feature: Gestión de usuarios y roles

  Scenario: Crear cuenta de administrador
    Given El gerente accede al formulario de registro
    When Ingresa los datos necesarios para crear una cuenta de administrador
    Then El sistema debe registrar la cuenta y asignarle permisos administrativos

    Example:
      | vista                | selección                          | resultado                                              |
      | Registro             | Formulario de creación de cuenta   | Cuenta de administrador registrada y con permisos asignados |

  Scenario: Invitar a un nuevo administrador
    Given El gerente accede a la sección de administradores
    When Envía una invitación por correo a un nuevo miembro
    Then El nuevo administrador debe recibir un enlace de registro y unirse a la organización

    Example:
      | vista                | selección                          | resultado                                              |
      | Administradores      | Enviar invitación a nuevo miembro  | Nuevo administrador recibe enlace para registrarse       |

  Scenario: Desvincular administrador de la organización
    Given El propietario del hotel visualiza la lista de administradores
    When Selecciona uno para desvincular
    Then El administrador debe ser removido de la organización y perder acceso

    Example:
      | vista                | selección                          | resultado                                              |
      | Perfil de organización | Seleccionar administrador a desvincular | Administrador desvinculado y sin acceso a la plataforma |
