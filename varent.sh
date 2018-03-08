#!/bin/bash

ATT_SC = '/bin/ls -l $0'
echo "EL usuario '$USERNAME' ha ejecutado el script $0, en el servidor '$HOSTNAME'"
echo "el script tiene los siguiente atributos: "
echo $ATT_SC
