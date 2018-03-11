#!/bin/bash

printf '\n*********************
        \na.- Agregar Usuario
        \nb.- Eliminar Usuario
        \nc.- Agregar Grupo
        \nd.- Eliminar Grupo
        \nx.- Salir
        \n*********************\n'

read opt

case $opt in
    a)
        echo "Ingrese el nombre de usuario que desea AGREGAR: "
        read newYser
        useradd $newUser
    ;;
    b)
        echo "Ingrese el nombre de usuario que desea ELIMINAR: "
        read usuario
        deluser $usario
    ;;
    c)
        echo "Ingrese el nombre del grupo que desea CREAR: "
        read group
        groupadd $group
    ;;
    d)
        echo "Ingrese el nombre del grupo que desea ELIMINAR: "
        read group
        delgroup $group
    ;;
    *)
        exit
    ;;
esac