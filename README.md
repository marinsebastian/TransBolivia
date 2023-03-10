# TransBolivia
![Alt text](/core/static/assets/Logo.png?raw=true "Logo")
## Pasos de Instalación
### 1. Instalar Python
Descargar Python desde la página oficial [aquí](https://www.python.org/downloads/), y al instalar no olvidarse de darle a la opción de agregarlo al PATH
### 2. Descargar el Driver ODBC de SQL Server
Puede descargar el driver desde la página oficial [aquí](https://learn.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-ver16#version-17), no te olvides descargar la version 17, no es compatible con la version 18. 
### 3. Crear un entorno virtual
Crear un entorno virtual para instalar las dependencias del proyecto
```bash
python -m venv env
```
### 4. Activar el entorno virtual
Para activar el entorno virtual en Windows, ejecutar el siguiente comando:
```bash
env\Scripts\Activate.ps1
```
### 5. Instalar las dependencias
Solamente utilizaremos Django y mssql-django para realizar la conexión con la base de datos, ambos se encuentran en el archivo requirements.txt
```bash
pip install -r requirements.txt
```
### 6. Entrar a la carpeta del proyecto
```bash
cd transbolivia
```
### 7. Crear la base de datos
Crear la base de datos con el nombre de transbol en SQL Server, asegurarse que este vacía.
Luego debe crear las tablas necesarias para Django con los siguientes comandos
```bash
python manage.py makemigrations
python manage.py migrate
```
Finalmente, se deben crear el resto de tablas, se tiene un archivo transbolivia.sql donde se encuentran las instrucciones para crear las tablas de la base de datos.
### 8. Añadir el usuario y contraseña de la base de datos
Crear un usuario en SQL Server y añadirlos en el archivo settings.py de la carpeta gestor_de_clientes, en la sección DATABASES.
```python
DATABASES = {
    'default': {
        'ENGINE': 'mssql',
        'NAME': 'transbol'
        'USER': 'TU_USUARIO'
        'PASSWORD': 'TU_CONTRASEÑA'
        ...
    }
}
```
### 9. Crear un superusuario
Para crear un superusuario, ejecutar el siguiente comando y seguir las instrucciones:
```bash
python manage.py createsuperuser
```
### 10. Correr el servidor
Finalmente ejecutar el siguiente comando para correr el servidor, una vez que se haya ejecutado, se puede acceder a la página web desde el navegador en la dirección http://127.0.0.1:8000/
```bash
python manage.py runserver
```

