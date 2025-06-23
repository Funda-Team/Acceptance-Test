Feature: Gestión de Monitoreo de Habitaciones

  Scenario: Integrar acceso al campo HotelId para crear habitaciones
    Given El microservicio Monitoring necesita acceder a información de hoteles
    When Solicita el campo HotelId al microservicio Profile vía Docker
    Then El sistema Profile debe proporcionar la información del hotel de forma segura

    Example:
      | microservicio        | campo solicitado                  | resultado                                              |
      | Monitoring           | HotelId                           | Información del hotel proporcionada correctamente     |

  Scenario: Crear habitaciones en el sistema de monitoreo
    Given El administrador accede al módulo de monitoreo de habitaciones
    When Completa el formulario de creación de habitación con los datos necesarios
    Then La habitación debe registrarse correctamente en el sistema de monitoreo

    Example:
      | vista                | selección                          | resultado                                              |
      | Módulo de monitoreo  | Formulario de nueva habitación     | Habitación registrada en sistema de monitoreo         |

  Scenario: Cambiar estado de habitación por empleado
    Given Un empleado accede al sistema de monitoreo
    When Selecciona una habitación y cambia su estado
    Then El sistema debe actualizar el estado de la habitación correctamente

    Example:
      | usuario              | acción                            | resultado                                              |
      | Empleado             | Cambiar estado de habitación      | Estado actualizado en sistema de monitoreo            |
