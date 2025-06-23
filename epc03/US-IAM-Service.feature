Feature: Gestión de Identidad y Acceso (IAM)

  Scenario: Integrar acceso a campos SenderId, ReceiverId y HotelsId para Communication Service
    Given El microservicio Communication necesita acceder a información de usuarios
    When Solicita los campos SenderId, ReceiverId y HotelsId al microservicio IAM vía Docker
    Then El sistema IAM debe proporcionar los datos de forma segura y desacoplada

    Example:
      | microservicio        | campos solicitados                 | resultado                                              |
      | Communication        | SenderId, ReceiverId, HotelsId     | Datos proporcionados de forma segura                  |

  Scenario: Integrar acceso a campos AdminsId y WorkersId para Resource Management Service
    Given El microservicio Resource Management necesita validar roles de usuarios
    When Solicita los campos AdminsId y WorkersId al microservicio IAM vía Docker
    Then El sistema IAM debe proporcionar la información de administradores y trabajadores

    Example:
      | microservicio        | campos solicitados                 | resultado                                              |
      | Resource Management  | AdminsId, WorkersId                | Información de roles proporcionada correctamente      |

  Scenario: Crear cuenta de gerente
    Given El sistema necesita registrar un nuevo gerente
    When Se completa el formulario de creación de cuenta de gerente
    Then La cuenta debe crearse correctamente con los permisos de gerente

    Example:
      | tipo de cuenta       | permisos                          | resultado                                              |
      | Gerente              | Administración de hotel           | Cuenta creada con permisos de gerente                 |
