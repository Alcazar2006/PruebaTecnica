# PruebaTecnica
## Frontend
- React: 18.2.0
- Nodejs: 16.13.1
- Npm: 8.1.2

## Backend
- Apache Maven: 3.8.4 
- Spring Boot: 2.6.13
- JDK: 17.0.5

## IDEs
- Visual Studio Code 

## Base de datos TSQL
-  SQL Server 2015
- Usuario:
  - Usuario: user1
  - password: 1234
  
## FrontEnd - ReactJS 
### Paquetes Implementados 
 - "@emotion/react": "^11.10.5",
 - "@emotion/styled": "^11.10.5",
 - "@fontsource/roboto": "^4.5.8",
 - "@mui/icons-material": "^5.10.15",
 - "@mui/material": "^5.10.15",
 - "@testing-library/jest-dom": "^5.16.5",
 - "@testing-library/react": "^13.4.0",
 - "@testing-library/user-event": "^13.5.0",
 - "axios": "^1.2.0",
 - "react": "^18.2.0",
 - "react-dom": "^18.2.0",
 - "react-router-dom": "^6.4.3",
 - "react-scripts": "5.0.1"
 
### Rutas Implementadas 
![imagen](https://user-images.githubusercontent.com/64711241/204117516-50759c60-bd30-4359-ad65-a6441f7e461b.png)

### Componentes
 - AddChequeraComponent: Componente dialog que permitirá agregar chequeras en base a un usuario y/o cuenta de banco.
 - DeleteChequeraComponent: Componente dialog que permitirá eliminar chequeras que se encuentren en el estado de “En proceso”.
 - EditChequeraComponent:  Componente dialog que permitirá eliminar chequeras que se encuentren en el estado de “En proceso”.
 - Gestion: Componente dialog que permitirá eliminar chequeras que se encuentren en el estado de “En proceso”.
 - AlertComponent: Componente para gestionar los mensajes de alert del sistema.
 
### AddChequeraComponent
Hooks para el manejo de los estados del componente autocomplete

![imagen](https://user-images.githubusercontent.com/64711241/204117585-078faa2f-1f89-4d49-a0a4-83dd92622ec0.png)
 
Hook para actualizar la lista de usuarios cuando se escriba en el componente de autocomplete de usuarios
 
![imagen](https://user-images.githubusercontent.com/64711241/204117613-1311665b-14d1-4540-a64b-c62adabed21f.png)

![imagen](https://user-images.githubusercontent.com/64711241/204117645-decc4e34-2f94-4a4f-b241-a7d7c7c1a41e.png)

![imagen](https://user-images.githubusercontent.com/64711241/204117651-e00bc38b-91d5-421e-a597-d5ac5114a696.png)

Hook para actualizar la lista de cuentas bancarias cuando se escriba en el componente de autocomplete de cuenta bancaria o se seleccione un usuario.

![imagen](https://user-images.githubusercontent.com/64711241/204117700-9aad6fe1-edbe-4405-9489-664fb5f074a2.png)

![imagen](https://user-images.githubusercontent.com/64711241/204117747-95fb6f79-716e-48c4-9188-d102c5392317.png)

![imagen](https://user-images.githubusercontent.com/64711241/204117777-03f9b654-9c35-4d1c-bc8b-905adf0830ec.png)

Función para guardar la chequera

![imagen](https://user-images.githubusercontent.com/64711241/204117825-1e83ce92-5400-45d6-b12b-d81265aa0698.png)

### AlertComponent
Componente que utiliza los componentes de Snackar y Alert (Material UI) para mostrar Alerta temporales

![imagen](https://user-images.githubusercontent.com/64711241/204117946-bc3932e6-6e2c-40c0-a66c-c7fdb00c5371.png)

![imagen](https://user-images.githubusercontent.com/64711241/204118101-da030eac-583f-4a1c-9da0-3420cf87521a.png)

### DeleteChequeraComponent
Función para eliminar la chequera

![imagen](https://user-images.githubusercontent.com/64711241/204118118-a2ce7d0e-ae19-4552-81d8-e1957d467318.png)

Ventana para aceptar o cancelar la eliminación de una chequera

![imagen](https://user-images.githubusercontent.com/64711241/204118126-36739384-def1-4b81-812f-2920ad19f6da.png)

![imagen](https://user-images.githubusercontent.com/64711241/204118129-9a3f25db-dde8-406e-995e-783e36d43847.png)

### EditChequeraComponent
Hooks para para el manejo de dialog y select

![imagen](https://user-images.githubusercontent.com/64711241/204118254-1ca8f190-14b4-48d8-a7f2-d06682ac938e.png)

Dialog para editar la chequera

![imagen](https://user-images.githubusercontent.com/64711241/204118261-82628ae4-ac0c-4a1c-93a9-6c8e3dcbd9ac.png)

![imagen](https://user-images.githubusercontent.com/64711241/204118264-917c3a38-1714-4ad4-93a1-cfe12ffda6eb.png)

### Servicios
![imagen](https://user-images.githubusercontent.com/64711241/204118407-eb427783-7dd4-42ea-8a3b-cd83e0ad6786.png)

ChequeraRoute: 
Peticiones enfocadas en la tabla de Chequera

## BackendRoute 
Manejo de las urls del sistema.

![imagen](https://user-images.githubusercontent.com/64711241/204118459-c9c96217-42fe-43fe-8d03-c3348680ca9c.png)

## ChequeraRoute: 
Peticiones enfocadas en la tabla de Chequera

![imagen](https://user-images.githubusercontent.com/64711241/204118497-2b8f1bcd-6059-4843-ae4d-aa9d535e398b.png)

## CuentaRoute
Peticiones enfocadas en la tabla de Cuenta Bancaria

![imagen](https://user-images.githubusercontent.com/64711241/204118491-5fc2f208-8733-4fd7-8efc-7b156a868fcd.png)

## UsuarioRoute: 
Peticiones enfocadas en la tabla de Usuario

![imagen](https://user-images.githubusercontent.com/64711241/204118508-d4fc543d-1788-4279-be70-08c591647487.png)

## Acciones Permitidas
Una chequera solo podrá ser editado o eliminada cunado aun se encuentra en el estado “En Proceso”

![imagen](https://user-images.githubusercontent.com/64711241/204118326-115eba7a-6266-4665-8229-6b4242d88044.png)

## BackEnd – Spring Boot
### Dependencias Utilizadas
<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-test</artifactId>
        <scope>test</scope>
    </dependency>

    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-devtools</artifactId>
        <scope>runtime</scope>
    </dependency>

    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>

    <dependency>
        <groupId>com.microsoft.sqlserver</groupId>
        <artifactId>mssql-jdbc</artifactId>
        <scope>runtime</scope>
    </dependency>
</dependencies>




















