Feature: Crear cuenta de administrador

Scenario: Crear cuenta de administrador
  Given El gerente accede al formulario de registro
  When Ingresa los datos necesarios para crear una cuenta de administrador
  Then El sistema debe registrar la cuenta y asignarle permisos administrativos

  Example:
    | vista            | selección                          | resultado                                  |
    | Registro          | Formulario de creación de cuenta    | Cuenta de administrador registrada         |
