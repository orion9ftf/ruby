1...(?=.*[0-9]{2})[0-9a-zA-Z]{8,12}


Vamos a verlo por partes:

?= Va a buscar que la siguiente expresión se encuentre en el texto
.*[0-9] Un texto que contenga al menos un número
[0-9]{2} El número debe ser de dos dígitos
(?=.*[0-9]{2}) En lo que siga a esta expresión, se va a validar que exista un número de al menos dos dígitos
[0-9a-zA-Z] Un carácter entre números y letras mayúsculas o minúsculas
[0-9a-zA-Z]{8,12} Será una cadena de longitud mínima 8 y máxima 12
Por tanto, en una cadena de 8 a 12 caracteres alfanuméricos, se va a requerir que exista un número de al menos dos dígitos.