Feature: Gestión de la organización del hotel

  Scenario: Crear una organización
    Given El gerente accede al formulario de creación de organización
    When Ingresa los datos de nombre, dirección y responsable
    Then El sistema debe registrar la nueva organización y asociarla a su cuenta

    Example:
      | vista                  | selección                     | resultado                                         |
      | Formulario de organización | Crear organización            | Nueva organización registrada y asociada a la cuenta |

  Scenario: Ver lista de administradores
    Given El gerente accede al perfil de su organización
    When Abre la pestaña de administradores
    Then Debería ver los nombres y roles de todos los administradores registrados

    Example:
      | vista                  | selección                     | resultado                                            |
      | Perfil de organización | Ver lista de administradores   | Ver lista completa de administradores y roles asignados |
