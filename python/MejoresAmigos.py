import mysql.connector #--- LIBRERIA PARA PODER CONECTAR A BASES DE DATOS


usuarios=[] #--- VARIABLE QUE VA A GUARDAR LOS USUARIOS REGISTRADOS EN LA BD
evaluar=[]  #--- VARIABLE QUE VA A GUARDAR LOS DATOS EVALUAR

#------------------------------------
#++++++++++++++++ Inicio de conexion a base de datos +++++++++++++++++
#------------------------------------

conexion=mysql.connector.connect(host="localhost", 
                                  user="root", 
                                  passwd="", 
                                  database="datosamigos") #----- CONEXION A LA BD --------


cursor=conexion.cursor() #--- VARIABLE PARA EJECUTAR CONSULTAS SQL

cursor.execute("SELECT * FROM usuarios;")#--- EJECUCION DE CONSULTA SQL, QUE ES JALAR TODOS LOS DATOS DE USUARIOS REGISTRADOS

for tabla in cursor: #--- CICLO PARA GUARDAR TODOS LOS REGISTROS EN UNA LISTA
    usuarios.append(tabla)

cursor.execute("select * from evaluar;") #--- CICLO PARA EXTRAER LOS DATOS A EVALUAR
for tabla in cursor:
    evaluar.append(tabla)
evaluar=evaluar[0] #--- COMO SOLO TRAE UN SOLO ELEMENTO LO IGUALAMOS A ESTE UNICO PARA TENER UNA LISTA SIMPLE

#************ SUJETO A CAMBIOS PARA OBTENER LOS DATOS A EVALUAR ****************

conexion.close() #--- SE CIERRA LA CONEXION A LA BD PARA QUE NO CRASHEE NI NADA

#------------------------------------
#++++++++++++++++ FIN de conexion a base de datos +++++++++++++++++
#------------------------------------


i=5 #+++ VARIABLE QUE AYUDA A ITERAR LISTAS
j=0 #+++ VARIABLE QUE AYUDA A ITERAR LISTAS

interseccion=0 #+++ VARIABLE QUE AYUDA A SUMAR LAS INTERSECCIONES (VALORES MINIMOS)

#-------- LINEAS PARA EVALUAR Y SACAR LAS SUMATORIAS DE CADA REGISTRO ---------------

while j < len(usuarios): #+++++++ CICLO QUE ITERA ENTRE ELEMENTOS QUE SE TRAJERON DE LA BD

    while i <20: #++++++ CICLO QUE ITERA ENTRE COLUMNAS PARA EVALUAR

        ######## EVALUACION DE EL DATO MENOR #############
        if evaluar[i] < usuarios [j][i]: #--- SE COMPARA EL VALOR A EVALUAR CON UN REGISTRO EN LA BASE DE DATOS
            min=evaluar[i]
        else:
            min=usuarios[j][i]
        #### EL DATO QUE RESULTE MENOR SE ALMACENA EN "min"
        ######## FIN DE EVALUACION ##################
        interseccion = interseccion + min #----- SE HACE LA SUMA DEL VALOR MINIMO A LA VARIABLE QUE LLEVA LA SUMA
        i=i+1 #------ SE AUMENTA "i" PARA CONTINUAR ITERANDO ENTRE LAS COLUMNAS

    nuevo = list(usuarios[j]) #+++ CONVERTIR DE TUPLE A LISTA Y GUARDARLO EN "nuevo"
                              #+++ AQUI "nuevo" TIENE LOS VALORES DE UN REGISTRO DE LA BD
    
    if(evaluar[2]==usuarios[j][2]): #+++ COMPARACION PARA EVITAR QUE EL USUARIO A EVALUAR SE MUESTRE COMO CINCIDENCIA
        interseccion=0 #+++ PARA EVITAR QUE SE MUESTRE HACEMOS SU "COMPATIBILIDAD" = 0

    nuevo.append(interseccion)#+++ LE AGREGAMOS EL VALOR DE "interseccion" QUE ES LA SUMA DE LOS MINIMOS
                              #+++ ESTA SUMA SE LE AGREGA PARA PODER ORDENARLOS SEGUN LA "COMPATIBILIDAD"
                              #+++ QUE ES EL METODO QUE PLANTEO LA MAESTRA EN CLASE

    usuarios[j]=nuevo #+++ SE SUSTITUYE EL REGISTRO DE LA BD POR EL QUE YA INCLUYE EL VALOR DE COMPATIBILIDAD

    interseccion = 0 #+++ SE LIMPIA VARIABLE PARA REPETIR EL PROCESO
    i=5 #+++ SE REINICIA LA VARIABLE QUE ITERA ENTRE COLUMNAS
    j=j+1 #+++ SE AUMENTA LA VARIBLE PARA PASAR AL SIGUIENTE REGISTRO

#-------- FIN DE LINEAS PARA EVALUAR Y SACAR LAS SUMATORIAS DE CADA REGISTRO ---------------

################################################################################
#--- "COMPATIVILIDAD" = variable "interseccion"

#--- ESTO ORDENA LOS USUARIOS SEGUN EL VALOR DE "COMPATIVILIDAD"

ordenar = sorted(usuarios, key=lambda estudiante: estudiante[20], reverse=True)
#--- SI QUIERES EL SIGNIFICADO DE CADA ARGUMENTO, AVISA QUE SI ES UN RELAJITO DE EXPLICAR EN TEXTO XD

################################################################################



#------------------------------------
#++++++++++++++++ Inicio de conexion a base de datos +++++++++++++++++
#------------------------------------

conexion=mysql.connector.connect(host="localhost", 
                                  user="root", 
                                  passwd="", 
                                  database="datosamigos") #+++ CONECTARSE A LA BD

cursor=conexion.cursor() #+++ VARIABLE PARA EJECUCION DE CONSULTAS
cursor.execute("DELETE FROM amigos;") #+++ PRIMERO LIMPIAMOS LA TABLA DE RESULTADOS

i=0 #+++ LIMPIAMOS EL CONTADOR

#++++++ CICLO PARA GUARDAR LOS REGISTROS CON MAYOR "COMPATIVILIDAD" ++++++
while i<3: #+++ SOLO SE ENVIARAN LOS 3 REGISTROS CON MAYOR COMPATIBILIDAD
    sql="INSERT INTO `amigos` (`id`, `nombre`, `usuario`, `edad`, `telefono`) VALUES (%s,%s,%s,%s,%s)" #+++ CREAMOS UNA "PLANTILLA" EJECUTAR SQL CON DIFERENTES VALORES
                                                                              #+++ LOS VALORES QUE SON "%s" ES DONDE SE AUTO-SUSTITUYEN POR LOS
                                                                              #+++ QUE DECIMOS MAS ABAJO

    datos=(ordenar[i][0], ordenar[i][1], ordenar[i][2], ordenar[i][3], ordenar[i][4]) #+++ EN ESTA VARIABLE SE GUARDAN LOS DATOS CON LOS QUE SE EJECUTARA LA CONSULTA
                                                        #+++ LOS QUE SE AUTO-SUSTITUYEN EN "%s"
                                                        #+++ LOS VALORES QUE SE ENVIAN SON "id", "nombre" Y "apellido"

    cursor.execute(sql, datos) #+++ EJECUTAMOS LA CONSULTA ENVIANDO LA PLANTILLA Y LOS DATOS CON LOS QUE SE EJECUTARA
    i=i+1 # AUMENTAMOS EL CONTADOR PARA PASAR AL SIGUIENTE REGISTRO
#++++++++++++ FIN DE CICLO ++++++++++++

conexion.commit() #+++ NI IDEA PARA QUE ES, PERO SI LO QUITAS CRASHEA TODO XDDD

conexion.close() #+++ CERRAMOS LA CONEXION A LA BD

#------------------------------------
#++++++++++++++++ FIN de conexion a base de datos +++++++++++++++++
#------------------------------------
