Feature: Gestión de Perfiles de Usuario

  Scenario: Integrar acceso al campßo ProvidersId para Supply Management Service
    Given El microservicio Supply Management necesita acceder a información de proveedores
    When Solicita el campo ProvidersId al microservicio Profile vía Docker
    Then El sistema Profile debe proporcionar la información de proveedores de forma segura

    Example:
      | microservicio        | campo solicitado                  | resultado                                              |
      | Supply Management    | ProvidersId                       | Información de proveedores proporcionada correctamente |

  Scenario: Integrar acceso al campo HotelsId para Communication Service
    Given El microservicio Communication necesita acceder a información de hoteles
    When Solicita el campo HotelsId al microservicio Profile vía Docker
    Then El sistema Profile debe proporcionar la información de hoteles de forma segura

    Example:
      | microservicio        | campo solicitado                  | resultado                                              |
      | Communication        | HotelsId                          | Información de hoteles proporcionada correctamente    |

  Scenario: Crear perfil de proveedor
    Given El administrador necesita registrar un nuevo proveedor
    When Completa el formulario de perfil de proveedor con la información necesaria
    Then El perfil del proveedor debe crearse correctamente en el sistema

    Example:
      | tipo de perfil       | información requerida             | resultado                                              |
      | Proveedor            | Datos de empresa y contacto       | Perfil de proveedor creado correctamente              |
