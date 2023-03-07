function main(){
while :
do           # Limpiar pantalla
	clear    # Limpieaza de variables       
	unset choice
    # display menu        
	echo "- ------------------------------------ -"        
	echo "-  Nombre del servidor: [$(hostname)]  -"        
	echo "- ------------------------------------ -"        
	echo "-        Menú de administración        -"        
	echo "- ------------------------------------ -"        
	echo "-  1. Cambiar nombre Servidor          -"        
	echo "- ------------------------------------ -"        
	echo "-  2. Cambiar Partición Discos         -"   	
	echo "- ------------------------------------ -"     
	echo "-  3. Cambiar IP Servidor              -"   	
	echo "- ------------------------------------ -"    
	echo "-  4. Cambiar tabla de Host            -"   	
	echo "- ------------------------------------ -"      
	echo "-  5. Agregar Permisos de Firewall     -"   	
	echo "- ------------------------------------ -"   
	echo "-  6. Editar DNS Server                -"   	
	echo "- ------------------------------------ -" 
	echo "-  7. Configurar proxy                 -"   	
	echo "- ------------------------------------ -"     
	echo "-  E. Exit                             -"        
	echo "- ------------------------------------ -"    # get input from the user         
	read -p "Digite la opción [1-7] " choice
    
	case $choice in
		1)
			echo -e "\n----------------------------------------------------------------------------------------"     
			echo "   Informacion del Servidor Actual   : "
			echo "     $(hostnamectl) "
			echo -e "\n----------------------------------------------------------------------------------------"    
			read -p "   Desea cambiar el nombre del servidor (y/n)? " answer
			if [[ $answer =~ ^[Yy]$ ]]
				then
					read -p "Digite el nuevo nombre del servidor: " var1
					sudo hostnamectl set-hostname $var1
					hostnamectl
			elif [[ $answer =~ ^[Nn]$ ]]
				then
					main
			else
				echo "Opcion invalida"
			fi
			echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        2)  
			echo -e "\n----------------------------------------------------------------------------------------"     
			echo "   Esta es su tabla actual de los Discos    "
			sudo fdisk -l
           read -p "   Desea cambiar la particion de los discos (y/n)? " answer
			if [[ $answer =~ ^[Yy]$ ]]
				then
					read -p "Digite el nombre del disco a cambiar: " nameDisk
					sudo fdisk /dev/$nameDisk
			elif [[ $answer =~ ^[Nn]$ ]]
				then
					main
			else
				echo "Opcion invalida"
			fi
			echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
		3)  
            echo -e "\n----------------------------------------------------------------------------------------"     
			echo "   Informacion Actual de su Red   : "
			echo "   $(ip addr show) "
			echo -e "\n----------------------------------------------------------------------------------------"    
			read -p "   Desea cambiar la IP del servidor (y/n)? " answer
			if [[ $answer =~ ^[Yy]$ ]]
				then
					read -p "Digite el nombre de la red que desea modificar: " red
					read -p "Digite la nueva IP: " newIP
					read -p "Digite la mascara de red: " newmask
					sudo ifconfig $red $newIP netmask $newmask
					echo "La IP fue modificada exitosamente"
					ip addr show
			elif [[ $answer =~ ^[Nn]$ ]]
				then
					main
			else
				echo "Opcion invalida"			
			fi
			echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
		4)  
            echo -e "\n----------------------------------------------------------------------------------------"     
			echo "   Informacion Actual de su tabla de Hosts   : "
			echo -e "\n"
			cat /etc/hosts
			echo -e "\n----------------------------------------------------------------------------------------"    
			read -p "Desea editar esta tabla de hosts (y/n)? " answer
			if [[ $answer =~ ^[Yy]$ ]]
				then
					read -p "Digite la ip que desea adicionar:  " addip
					read -p "Digite el nombre del servidor para esa ip:  " servername
					sudo -- sh -c "echo "$addip" "$servername" >> /etc/hosts"
					echo "   La tabla fue modificada de manera exitosa "
					echo -e "\n"
					echo "   Asi queda su tabla actual de hosts"
					echo -e "----------------------------------------------------------------------------------------" 
					echo -e "\n"
					cat /etc/hosts
			elif [[ $answer =~ ^[Nn]$ ]]
				then
					main
			else
				echo "Opcion invalida"
			fi
			echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
		5)  
			function mainfirewall(){
			while :
			do           # Limpiar pantalla
				clear    # Limpieaza de variables       
				unset choicefirewall
				echo "- ------------------------------------ -"               
				echo "-      Menú de permisos de firewall  	 -"        
				echo "- ------------------------------------ -"        
				echo "-  1. Habilitar servicio de firewall   -"        
				echo "- ------------------------------------ -"        
				echo "-  2. Estado del firewall               -"   	
				echo "- ------------------------------------ -"     
				echo "-  3. Habilitar puerto TCP             -"   	
				echo "- ------------------------------------ -"    
				echo "-  4. Habilitar puerto UDP             -"   	
				echo "- ------------------------------------ -"      
				echo "-  5. Habilitar rango puerto TCP       -"   	
				echo "- ------------------------------------ -"   
				echo "-  6. Habilitar rango puerto TCP       -"   	
				echo "- ------------------------------------ -"
				echo "-  7. Volver al menu principal         -"        
				echo "- ------------------------------------ -" 
				read -p "Digite la opción [1-7] " choicefirewall
				
				case $choicefirewall in
					1)
						echo -e "\n----------------------------------------------------------------------------------------" 
						read -p "   Desea habilitar servicio de firewall (y/n)? " answer
						if [[ $answer =~ ^[Yy]$ ]]
							then
								sudo ufw enable
								echo "Servicio de fireall habilitado"
						elif [[ $answer =~ ^[Nn]$ ]]
							then
								mainfirewall
						else
							echo "Opcion invalida"
						fi
						echo -e "\n----- Fin del Script -----------------------------------------------------------"            
						read -p "Press [Enter] key to continue..." readEnterKey
						;;
					2)
						echo -e "\n----------------------------------------------------------------------------------------"     
						echo "   Estado del firewall   : "
						sudo ufw status
						echo -e "\n----- Fin del Script -----------------------------------------------------------"            
						read -p "Press [Enter] key to continue..." readEnterKey
						;;
					3)  
						echo -e "\n----------------------------------------------------------------------------------------" 
						read -p "Desea habilitar un puerto TCP (y/n)? " answer
						if [[ $answer =~ ^[Yy]$ ]]
							then
								read -p "Ingrese el puerto que desea habilitar: " portTCP
								sudo ufw allow $portTCP/tcp
								echo "Puerto $portTCP/TCP habilitado "
						elif [[ $answer =~ ^[Nn]$ ]]
							then
								mainfirewall
						else
							echo "Opcion invalida"
						fi         
						echo -e "\n----- Fin del Script -----------------------------------------------------------"
						read -p "Press [Enter] key to continue..." readEnterKey
						;;
					4)
						echo -e "\n----------------------------------------------------------------------------------------" 
						read -p "Desea habilitar un puerto UDP (y/n)? " answer
						if [[ $answer =~ ^[Yy]$ ]]
							then
								read -p "Ingrese el puerto que desea habilitar: " portUDP
								sudo ufw allow $portUDP/udp
								echo "Puerto $portUDP/UDP habilitado "
						elif [[ $answer =~ ^[Nn]$ ]]
							then
								mainfirewall
						else
							echo "Opcion invalida"
						fi         
						echo -e "\n----- Fin del Script -----------------------------------------------------------"
						read -p "Press [Enter] key to continue..." readEnterKey
						;;
					5)
						echo -e "\n----------------------------------------------------------------------------------------" 
						read -p "Desea habilitar rango de puertos TCP (y/n)? " answer
						if [[ $answer =~ ^[Yy]$ ]]
							then
								read -p "Ingrese el rango de puertos que desea habilitar: (puerto:puerto)" portRange
								sudo ufw allow $portRange/tcp
								echo "Puerto $portRange/TCP habilitado "
						elif [[ $answer =~ ^[Nn]$ ]]
							then
								mainfirewall
						else
							echo "Opcion invalida"
						fi         
						echo -e "\n----- Fin del Script -----------------------------------------------------------"
						read -p "Press [Enter] key to continue..." readEnterKey
						;;
					6)
						echo -e "\n----------------------------------------------------------------------------------------" 
						read -p "Desea habilitar rango de puertos UDP (y/n)? " answer
						if [[ $answer =~ ^[Yy]$ ]]
							then
								read -p "Ingrese el rango de puertos que desea habilitar: (puerto:puerto)" portRangeUDP
								sudo ufw allow $portRangeUDP/udp
								echo "Puerto $portRangeUDP/UDP habilitado "
						elif [[ $answer =~ ^[Nn]$ ]]
							then
								mainfirewall
						else
							echo "Opcion invalida"
						fi         
						echo -e "\n----- Fin del Script -----------------------------------------------------------"
						read -p "Press [Enter] key to continue..." readEnterKey
						;;	
					7)  
            			main
						;;
        			*)
                		echo "Error: Invalid option..."                
						read -p "Press [Enter] key to continue..." 
						readEnterKey
            			;;
       				esac
				done		
			}
			mainfirewall

            echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
		6)  
            echo -e "\n----------------------------------------------------------------------------------------"     
			echo "   Informacion Actual de DNS   : "
			echo -e "\n"
			cat /etc/resolv.conf
			echo -e "\n----------------------------------------------------------------------------------------"    
			read -p "Desea editar este DNS (y/n)? " answer
			if [[ $answer =~ ^[Yy]$ ]]
				then
					read -p "Digite el nuevo DNS:  " newDNS
					sudo -- sh -c "echo nameserver "$newDNS" >> /etc/resolv.conf"
					echo "   El DNS fue modificado de manera exitosa "
					echo -e "\n"
					echo "   Asi queda su DNS actual"
					echo -e "----------------------------------------------------------------------------------------" 
					echo -e "\n"
					cat /etc/resolv.conf
			elif [[ $answer =~ ^[Nn]$ ]]
				then
					main
			else
				echo "Opcion invalida"
			fi
			echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
		7)  
            echo -e "\n----------------------------------------------------------------------------------------"     
			echo "   Configuracion de PROXY   : "
			echo -e "\n"
			echo 'PROXY_ENABLED="yes"'
			echo 'HTTP_PROXY="ip:puerto"'
			echo 'HTTPS_PROXY="ip:puerto"'
			echo 'FTP_PROXY="ip:puerto"'
			echo 'NO_PROXY="localhost,IP,"'
			echo -e "\n----------------------------------------------------------------------------------------"    
			read -p "Desea editar la configuracion del PROXY (y/n)? " answer
			if [[ $answer =~ ^[Yy]$ ]]
				then
					cd
					echo -e "\n"
					sudo -- sh -c 'echo #CONFIGURACION EDITADA DE PROXY >> .bashrc'
					sudo -- sh -c 'echo PROXY_ENABLED="yes" >> .bashrc'
					read -p "Ingrese el HTTP_PROXY: (ip:puerto)  " httpProxy
					sudo -- sh -c "echo HTTP_PROXY="$httpProxy" >> .bashrc"
					read -p "Ingrese el HTTPS_PROXY: (ip:puerto)  " httpsProxy
					sudo -- sh -c "echo HTTPS_PROXY="$httpsProxy" >> .bashrc"
					read -p "Ingrese el FTP_PROXY: (ip:puerto)  " ftpProxy
					sudo -- sh -c "echo FTP_PROXY="$ftpProxy" >> .bashrc"
					read -p "Ingrese el NO_PROXY: (localhost,IP,)  " noProxy
					sudo -- sh -c "echo NO_PROXY="$noProxy" >> .bashrc"
					echo -e "\n"
					echo "   El PROXY fue configurado de manera exitosa "
					echo -e "\n"
					echo "   Asi queda su DNS actual"
					echo -e "----------------------------------------------------------------------------------------" 
					echo -e "\n"
					cat .bashrc
			elif [[ $answer =~ ^[Nn]$ ]]
				then
					main
			else
				echo "Opcion invalida"
			fi
			echo -e "\n----- Fin del Script -----------------------------------------------------------"            
			read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        *)
                echo "Error: Invalid option..."                
				read -p "Press [Enter] key to continue..." 
				readEnterKey
            ;;
        esac
	done		
}
main
