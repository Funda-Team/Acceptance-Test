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

  Scenario: Cambiar estado de habitación por gerente
    Given Un gerente accede al sistema de monitoreo
    When Selecciona una habitación y modifica su estado
    Then El sistema debe actualizar el estado con permisos de gerente

    Example:
      | usuario              | acción                            | resultado                                              |
      | Gerente              | Modificar estado de habitación    | Estado actualizado con permisos administrativos       |

  Scenario: Monitorear disponibilidad de habitaciones
    Given El sistema de monitoreo está activo
    When Se consulta la disponibilidad de habitaciones
    Then El sistema debe mostrar el estado actual de todas las habitaciones

    Example:
      | consulta             | información solicitada            | resultado                                              |
      | Disponibilidad       | Estado de todas las habitaciones  | Estado actual mostrado correctamente                  |

  Scenario: Generar reportes de ocupación
    Given El administrador necesita información de ocupación
    When Solicita un reporte de ocupación de habitaciones
    Then El sistema debe generar un reporte detallado de la ocupación

    Example:
      | tipo de reporte      | período                           | resultado                                              |
      | Ocupación            | Mensual                           | Reporte detallado de ocupación generado               |
