***<h1 align="center">MENÚ</h1>***
	
```bash
"- ------------------------------------ -"        
"-  Nombre del servidor: [$(hostname)]  -"        
"- ------------------------------------ -"        
"-        Menú de administración        -"        
"- ------------------------------------ -"        
"-  1. Cambiar nombre Servidor          -"        
"- ------------------------------------ -"        
"-  2. Cambiar Partición Discos         -"   	
"- ------------------------------------ -"     
"-  3. Cambiar IP Servidor              -"   	
"- ------------------------------------ -"    
"-  4. Cambiar tabla de Host            -"   	
"- ------------------------------------ -"      
"-  5. Agregar Permisos de Firewall     -"   	
"- ------------------------------------ -"   
"-  6. Editar DNS Server                -"   	
"- ------------------------------------ -" 
"-  7. Configurar proxy                 -"   	
"- ------------------------------------ -"  
"-  8. Instalar Docker                  -"   	
"- ------------------------------------ -"      
"-  E. Exit                             -"        
"- ------------------------------------ -"  
"Digite la opción [1-7] "
```

***<h1 align="center">TALLER 2 SISTEMAS OPERATIVOS</h1>***

***EXPLICACIÓN DE LA SHELL DE ADMINISTRACIÓN*** 

Se hace la creación del menú presentado anteriormente, que permita al usuario elegir la opción que quiera cambiar, agregar, editar, configurar o salir. Para la ejecución de la Shell, deberá clonar el repositorio, si está trabajando en una máquina Linux deberá darle permisos al script y correrla con el siguiente comando.

```bash
chmod +x ShellAdmin.sh >> dar permisos para la ejecución de la Shell
./ShellAdmin.sh >> ejecución de la Shell
```

***OPCIÓN 1:***

El usuario podrá cambiar el nombre del servidor.

![opc1](imagesMenu/opc1.png)

Apenas digite la opción 1 le aparecerá la información actual del servidor, es aquí donde podrá evidenciar su hostname. Luego le preguntará si desea cambiar el nombre, al darle y (sí) volverá a mostrar la información actualizada del servidor, por último, dará enter y estará nuevamente en el menú principal.

***OPCIÓN 2:***

El usuario podrá cambiar la partición de discos.

![opc2](imagesMenu/opc2.png)

Al digitar esta opción se mostrará los discos existentes de la máquina, luego le pedirá que si desea cambiar la partición de los discos, al darle y (sí) pedirá el nombre del disco a cambiar y aparecerá opciones de ayuda de lo que quiere hacer con el disco, por último podrá dar Ctrl + c, enter y estará nuevamente en el menú principal.

***OPCIÓN 3:***

El usuario podrá cambiar la IP del servidor.

![opc3](imagesMenu/opc3.png)

Al digitar esta opción se mostrará la información actual de su red. Luego preguntará si desea cambiar la IP del servidor, al darle y (sí) pedirá el nombre de la red que desea modificar, la nueva IP y la máscara de red. Al realizar estos cambios mostrará nuevamente su información actual de red, por último, dará enter y estará 
nuevamente en el menú principal. Con esta opción hay que tener cuidado porque al realizar estas modificaciones la máquina al no encontrar la IP que le acabo de digitar se apagará.

***OPCIÓN 4:***

El usuario podrá cambiar la tabla de Hosts.

![opc4](imagesMenu/opc4.png)

Al digitar esta opción se mostrará la información actual de su tabla de Hosts. Luego preguntará si desea editar esta tabla, al darle y (sí) pedirá la ip que desea adicionar y el nombre del servidor para es IP. Al realizar estos cambios mostrará nuevamente su información actual de la tabla de Hosts, por último, dará enter y estará nuevamente en el menú principal.

***OPCIÓN 5:***

El usuario podrá agregar permisos de firewall.

![opc5](imagesMenu/opc5.png)

Se creó un submenú que al digitar la opción 5 mostrará las opciones de habilitar y ver estado del firewall, además esta la opción para que el usuario pueda volver al 
menú principal. Al digitar la opción 1 mostrará si el usuario desea habilitar el firewall, al darle y (sí), se está habilitando el servicio del firewall. Esto se podrá rectificar en la opción 2 al ver el estado del firewall, luego se deberá habilitar el puerto TCP en uso para que la máquina no se vaya a perder, de no habilitar dicho puerto la máquina ya no tendrá conexión y se deberá crear una máquina nueva desde cero. Al habilitar el puerto, puede volver a ingresar a la opción 2 para evidenciar que el puerto está añadido de manera correcta. De la misma manera se podrá habilitar el puerto UDP o los rangos de puertos TCP y UDP. Finalmente, el usuario tendrá la opción de volver al menú principal.

***OPCIÓN 6:***

El usuario podrá editar el DNS server.

![opc6](imagesMenu/opc6.png)

Al digitar esta opción se mostrará la información actual del DNS server. Luego preguntará si desea editar este DNS, al darle y (sí) pedirá el nuevo DNS, mostrará 
un mensaje de que fue modificado de manera exitosa. Al realizar estos cambios mostrará nuevamente su información actual del DNS server, por último, dará enter 
y estará nuevamente en el menú principal.

***OPCIÓN 7:***

El usuario podrá configurar el PROXY.

![opc7](imagesMenu/opc7.png)

Al digitar esta opción se mostrará la información actual del PROXY. Luego preguntará si desea editar la configuración del PROXY, al darle y (sí) pedirá el nuevo 
HTTP_PROXY, HTTPS_PROXY, FTP_PROXY y el NO_PROXY, mostrará un mensaje de que fue configurado de manera exitosa. Al realizar estos cambios mostrará nuevamente su información actual del PROXY, por último, dará enter y estará nuevamente en el menú principal.

***OPCIÓN E:***

El usuario podrá salir del menú principal y quedar con el usuario de su máquina por la consola de comandos.

***<h1 align="center">TALLER 1 DOCKER</h1>***

***CONFIGURACIÓN DE HERRAMIENTAS DE DESARROLLO*** 

![herramientasDev](imagesTaller1Docker/herramientasDev.png)

Se tiene el visual para realizar los códigos necesarios y en el moba está instalada la máquina de AWS para la ejecución de los comandos.

***CREAR CUENTA EN GITHUB*** 

Para crear la cuenta debes ingresar al siguiente link: https://github.com/join 
.Te aparecerá una ventana como la que se muestra a continuación.

<p align="center">
  <img src="imagesTaller1Docker/crearCuentaGitHub.png" width="450" height="200" title="Página para la creación de usuario en GitHub">
</p>

Llenas todos los campos y a continuación estarás dentro de tu cuenta. La ventana se mostrará de la siguiente manera:

<p align="center">
  <img src="imagesTaller1Docker/cuentaGitHub.png" width="450" height="200" title="Página principal de GitHub">
</p>

***CREAR CUENTA EN DOCKERHUB***

Para crear la cuenta debes ingresar al siguiente link: https://hub.docker.com/signup
.Te aparecerá una ventana como la que se muestra a continuación.

<p align="center">
  <img src="imagesTaller1Docker/crearCuentaDockerHub.png" width="400" height="200" title="Página para la creación de usuario en dockerhub">
</p>

Llenas todos los campos y a continuación estarás dentro de tu cuenta. La ventana se mostrará de la siguiente manera:

<p align="center">
  <img src="imagesTaller1Docker/cuentaDockerHub.png" width="450" height="250" title="Página principal de dockerhub">
</p>  

***CREACIÓN DEL REPOSITORIO***

<p align="center">
  <img src="imagesTaller1Docker/crearRepo.png" width="500" height="250" title="Página principal para la creación del repositorio">
</p> 

Primero se debe dar click donde está señalado el #1 para que le aparezca la pantalla como se muestra en la imagen, al darle click en new que es el paso #2 te dirigirá a la siguiente ventana:

<p align="center">
  <img src="imagesTaller1Docker/camposNuevoRepo.png" width="450" height="250" title="Página principal para la creación del repositorio">
</p> 

Diligencias el nombre que le quieres poner al repositorio, si lo deseas público o no y si deseas añadirle el archivo README. Al tener todos los pasos anteriores tu repositorio ha sido creado y te aparecerá la ventana de la siguiente manera:

<p align="center">
  <img src="imagesTaller1Docker/repoCreado.png" width="500" height="250" title="Página del repositorio creado">
</p> 

En amarillo esta subrayado el nombre del repositorio y la rama que se creó dentro del mismo.

***CONFIGURACIÓN DE LLAVES SSH***

Para la generación de la llave se debe ejecutar el comando ssh-keygen en el servidor que estes trabajando, en este caso como la llave ya se habia creado nos dice que si queremos sobreescribir el archivo o dejamos la que ya se había generado. Por tanto decimos que no sobreescriba y la ejecución del comando se verá de la siguiente manera:

<p align="center">
  <img src="imagesTaller1Docker/creacionLlave.png" width="500" height="250" title="Creación de la llave">
</p> 

Al dirigirnos a la ruta que nos aparece de la generación de la llave en la imagen anterior podremos observar la llave en el archivo como se muestra a continuación. Esta la debemos copiar para luego añadirla en los próximos pasos del GitHub.

<p align="center">
  <img src="imagesTaller1Docker/sshrsa.png" width="500" height="250" title="Llave">
</p> 

Como ya hemos copiado la llave generada por el servidor, ahora lo que haremos será la configuración directamente desde el GitHub, por tanto iremos a settings así como se muestra a continuación:

<p align="center">
  <img src="imagesTaller1Docker/configPaso1.png" width="500" height="250" title="Paso 1 para la configuración de la llave">
</p> 

Luego debemos realizar el paso #1 y #2 así como aparece en la siguiente imagen:

<p align="center">
  <img src="imagesTaller1Docker/configPaso2.png" width="500" height="250" title="Paso 2 para la configuración de la llave">
</p> 

A continuación debemos añadirle un título a la llave y donde dice key debemos poner la llave que se había copiado del servidor.

<p align="center">
  <img src="imagesTaller1Docker/configPaso3.png" width="500" height="250" title="Paso 3 para la configuración de la llave">
</p> 

Con estos pasos ya tendriamos la llave generada por el servidor cargada en el GitHub. Para verificar que quedó de manera correcta, clonamos cualquier repositorio, dando en la pestaña code y luego copiando la URL del SSH, porque esta es la manera con la que nos podremos autenticar en la máquina de AWS. Los pasos serían como se ven subrayados en amarillo en la siguiente imagen:

<p align="center">
  <img src="imagesTaller1Docker/configPaso4.png" width="500" height="250" title="Paso 4 para la configuración de la llave">
</p> 

Para la clonación del repositorio ejecutariamos el comando git clone URL-SSH. En este caso cloranos el repositorio ShellAdmin como lo hemos mostrado en las imagenes anteriores, los pasos se muestran a continuación:

<p align="center">
  <img src="imagesTaller1Docker/clonacionRepo.png" width="500" height="250" title="Clonar un repositorio">
</p> 

***<h1 align="center">TALLER 2 DOCKER</h1>***

***AGREGAR MÓDULO DE INSTALACIÓN DE DOCKER EN MENÚ DE ADMINISTRACIÓN PARA INSTALACIÓN Y PRUEBAS UNITARIAS***

Menú 

```bash

"- ------------------------------------ -"  
"-  8. Instalar Docker                  -"   	
"- ------------------------------------ -"      
```

Se agregó la opción 8 para la instalación de Docker de manera automatizada. A continuación se presenta el código para la instalación y pruebas de Docker:

```bash
"-----------------------------------------------------------------------------"
 "Inicia instalacion docker CE                                                 "
 "-----------------------------------------------------------------------------"
read -p ">> Paso 1: Desea Instalar Docker (y/n)? " answer

if [[ $answer =~ ^[Yy]$ ]]
	then
		cd ~/

		 "-----------------------------------------------------------------------------"
		 "Instalación Prerequisitios"
		 "-----------------------------------------------------------------------------"
		sudo apt-get update -y
		sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
		curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
		sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
		sudo apt update -y
		apt-cache policy docker-ce -y
		sudo apt install docker-ce -y

		 "-----------------------------------------------------------------------------"
		 "Verificar Version"
		 "-----------------------------------------------------------------------------"
		docker --version

		 "-----------------------------------------------------------------------------"
		 "Iniciar docker con el sistema"
		 "-----------------------------------------------------------------------------"
		sudo systemctl enable docker
		sudo systemctl start docker
		
		 "-----------------------------------------------------------------------------"
		 "Crear usuario de Docker"
		 "-----------------------------------------------------------------------------"
		sudo adduser docker

		
		 "-----------------------------------------------------------------------------"
		 "Agregar permisos usuario ubunutu al grupo Docker"
		 "-----------------------------------------------------------------------------"
		user=$(whoami)
		sudo usermod -G docker $user
		grep $user /etc/group

		 "-----------------------------------------------------------------------------"
		 "folder docker"
		 "-----------------------------------------------------------------------------"
		folder=/Images
		sudo mkdir -p $folder/$user
		sudo mkdir -p $folder/$user/Data
		sudo chown -R $user:$user $folder/$user
		sudo chown -R $user:$user $folder/$user/Data
		ls -ltr $folder/

		read -p "Press [Enter] key to continue..." readEnterKey

		 "-----------------------------------------------------------------------------"
		 "Inicia instalacion Docker Compose                                            "
		 "-----------------------------------------------------------------------------"

		sudo mkdir -p /usr/local/bin
		sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

		sudo chmod +x /usr/local/bin/docker-compose

		 "-----------------------------------------------------------------------------"
		 "Verificar docker-compose"
		 "-----------------------------------------------------------------------------"
		sudo docker-compose --version

		read -p "Press [Enter] key to continue..." readEnterKey


		 "-----------------------------------------------------------------------------"
		 "Fin instalacion Docker                                                       "
		 "-----------------------------------------------------------------------------"

		read -p "Press [Enter] key to continue..." readEnterKey
fi
 "-----------------------------------------------------------------------------"
 "Sin Ajustes!!"
 "-----------------------------------------------------------------------------"
	
 ---------- Fin del Script ----------------------------
read -p "Press [Enter] key to continue..." readEnterKey
```

***CLONAR REPOSITORIO***

Para hacer la clonación del repositorio se hará en la shell de bash directamente en el Viual Studio Code. Se copia la URL subrayada en amarillo desde el repositorio de GitHub así como se muestra a continuación:

<p align="center">
  <img src="imagesTaller2Docker/clonarRepo.png" width="500" height="250" title="Clonar un repositorio">
</p> 

Luego de copiar la URL en el visual se le antepone el comando git clone, como se muestra en la siguiente imagen:

<p align="center">
  <img src="imagesTaller2Docker/repoClonado.png" width="500" height="250" title="Repositorio clonado">
</p> 

***INSTALAR SHELL***

Para realizar la instalación de la Shell primero se debe realizar la validación de la rama en la que nos encontramos actualmente en el repositorio, para este caso en la rama que estamos es la main así que debemos hacer el cambio de rama para estar en la sh-admin que es donde estamos subiendo todo lo necesario para realizar estos talleres, esto se hace de la siguiente manera:

<p align="center">
  <img src="imagesTaller2Docker/cambioRama.png" width="500" height="250" title="Cambio de rama de la main a la sh-admin">
</p> 

Como ya estamos ubicados en la rama necesaria copiamos el archivo .sh, luego en la consola si le damos un ls podremos ver que el archivo se encuentra dentro del repositorio.

<p align="center">
  <img src="imagesTaller2Docker/shellInstalada.png" width="500" height="250" title="Shell instalada">
</p> 

***SUBIR CAMBIOS A REPOSITORIO***

Con el comando sh pushGit.sh "comment" "rama" se ejecuta la shell para automatización de comandos en GitHub como (clonar repositorio, configuraciones globales, estado, subir todos los cambios de la carpeta actual y agregar comentarios). A continuación se muestra la imagen de la ejecución de la shell para añadir dos archivos que son ShellAdmin.sh y pushGit.sh

<p align="center">
  <img src="imagesTaller2Docker/subirCambios.png" width="500" height="450" title="Ejecución shell automatizando comandos de GitHub">
</p> 

Subidos los cambios, en la máquina de AWS debemos hacer la actualización del repositorio de la siguiente manera:

<p align="center">
  <img src="imagesTaller2Docker/actualizacionRepoAWS.png" width="500" height="250" title="Actualizar repositorio en AWS">
</p> 

***PRUEBAS DE docker -version y docker-compose -version***

Se deben dar permisos para poder ejecutar la shell y luego si el comando para su ejecución, así como se muestra a continuación:

<p align="center">
  <img src="imagesTaller2Docker/permisosEjecucion.png" width="500" height="250" title="Permisos para ejecución de la shell">
</p> 

De la siguiente manera verá la ejecución de la shell:

<p align="center">
  <img src="imagesTaller2Docker/ejecutandoScript.png" width="500" height="250" title="Ejecución de la shell">
</p> 

Se da la opción 8 del menú e inicia con la instalación de docker, aquí se podrá evidencia la version del docker.

<p align="center">
  <img src="imagesTaller2Docker/instalarVersionDocker.png" width="600" height="350" title="Intalar docker y ver la versión">
</p> 

Además se podrá ver la versión del docker-compose

<p align="center">
  <img src="imagesTaller2Docker/instalarVersionDockerCompose.png" width="600" height="350" title="Intalar docker-compose y ver la versión">
</p> 
