Feature: Gestión de Perfiles de Usuario

  Scenario: Integrar acceso al campo ProvidersId para Supply Management Service
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

  Scenario: Actualizar información de perfil de hotel
    Given El gerente necesita actualizar información del hotel
    When Modifica los datos del perfil del hotel
    Then La información debe actualizarse correctamente en el sistema

    Example:
      | usuario              | acción                            | resultado                                              |
      | Gerente              | Actualizar perfil de hotel        | Información actualizada correctamente                 |

  Scenario: Consultar información de perfiles
    Given El sistema necesita acceder a información de perfiles
    When Se solicita información específica de un perfil
    Then El sistema debe proporcionar los datos solicitados de forma segura

    Example:
      | tipo de consulta     | información solicitada            | resultado                                              |
      | Perfil de hotel      | Datos básicos del hotel           | Información proporcionada de forma segura             |
      | Perfil de proveedor  | Datos de contacto del proveedor   | Información proporcionada de forma segura             |

  Scenario: Validar integridad de datos de perfiles
    Given El sistema mantiene perfiles de usuarios y entidades
    When Se verifica la integridad de los datos almacenados
    Then Todos los perfiles deben mantener su consistencia y validez

    Example:
      | tipo de validación   | alcance                           | resultado                                              |
      | Integridad de datos  | Todos los perfiles del sistema    | Datos consistentes y válidos                          |

  Scenario: Gestionar permisos de acceso a perfiles
    Given El sistema necesita controlar el acceso a información de perfiles
    When Un microservicio solicita acceso a datos de perfil
    Then El sistema debe validar permisos y proporcionar acceso autorizado

    Example:
      | microservicio        | nivel de acceso                   | resultado                                              |
      | IAM                  | Lectura de perfiles de usuario    | Acceso autorizado con permisos de lectura             |
      | Supply Management    | Lectura de perfiles de proveedor  | Acceso autorizado con permisos específicos            |
