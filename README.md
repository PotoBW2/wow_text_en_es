---
**PotoBW - WoW Text EN-ES ver 1.05**
===

**WoW Text EN-ES** es un proyecto de código abierto escrito en diferentes lenguajes como [SQL][1], 
[Python][3], [JavaScript][4], [PHP][5] y [HTML][6]; siendo el [SQL][1] el más importante. El código 
[SQL][1] está programado para ser ejecutado en [MySQL][7], usamos herramientas auxiliares como 
[Navicat][8], [PhpMyAdmin][9] y [PHPStorm][25].

Si te gustó [World of Warcraft][2] pero el servidor está en inglés, proporcionamos una traducción al 
español que puede ser utilizado para llenar las tablas de traducción en las bases de datos de su servidor 
privado si este está preparado para soportar traducciones.

Cada texto fue traducido por la [API de traducción de Google][10] y actualmente se trabaja en su revisión.

Requisitos
------------
- Usar [MySQL][7] como gestor de base de datos de nuestro servidor privado.
- Tener [PHP][5] y [Apache][11] instalado o usar [XAMPP][12], [WAMPP][13] u otro programa similar que 
garantice [PHP][5] y [Apache][11].
- Conocimiento de [PHP][5].
- Conocimiento de [SQL][1].

Herramientas
-----------------
- [Ajustador de ids][14]: Permite ajustar la columna 'id_text' para mejorar el orden, busqueda y tamaño de 
las tuplas en la base de datos. Está programado en [PHP][5], [SQL][1], [JavaScript][4], [HTML][6].
- [Corrector de Texto][15]: Permite sustituir cadenas o subcadenas de textos (parte del texto) por otra 
cadena definida por el usuario. Solo sustituye los textos en español. Está programado en [PHP][5], [SQL][1], 
[JavaScript][4], [HTML][6].
- [Extractor de texto][16]: Herramienta que permite extraer el texto en inglés y español (puede ser 
cualquier otro lenguaje que usted desee) del servidor privado y lo introduce en la base de datos de WoW 
Text EN-ES. Está programado en [PHP][5], [SQL][1], [JavaScript][4], [HTML][6].
- [Traductor][17]: Herramienta que permite traducir del inglés al español (puede cambiar el lenguaje si 
lo desea) y guardarlo en la base de datos de WoW Text EN-ES para su posterior uso. Está programado en 
[Python][3] y [SQL][1].
- [Inyector de SQL][26]: Permite introducir o actualizar los textos en lenguaje español en las tablas 
locales del servidor de bases de datos de nuestro servidor privado. Está programado en [PHP][5], [SQL][1], 
[JavaScript][4], [HTML][6].


Softwares, Lenguajes y Librerías
------------
Usamos las versiones de los siguientes softwares, lenguajes y librerías:
-	[MySQL][7] – 10.4.22-MariaDB o superior
-	[XAMPP][12] – 8.1.2 o superior
-	[PHP][5] – 8.1.2 o superior
-	[Python][3] – 3.9 o superior
-	[Apache][11] – 2.4.53 o superior
-	[PhpMyAdmin][9] – 5.1.1 o superior
-   [Navicat][8] – 16.0.9 o superior
-   [PHPStorm][25] – 2019.3 o superior
-   [certifi][18] - 2021.10.8
-   [charset-normalizer][19] - 2.0.12
-   [idna][20] - 3.3
-   [PyMySQL][21] - 1.0.2
-   [requests][22] - 2.27.1
-   [urllib3][23] - 1.26.9

Las versiones que publicamos aquí son las que usamos, recomendamos usar las mas
modernas en medida de que sea disponible, pero puede usar versiones viejas si 
así lo desea lo que puede atentar contra el correcto funcionamiento del código. 

**Contactos**
----

Mi cibernombre o nick es PotoBW, normalmente trabajo solo para producir estos 
códigos. En caso de que desea reportar errores, sugerencias o necesidades use 
los siguientes contactos: 

- **Celular, WhatApp, Telegram:**  +5355920042  - (Teléfono de Cuba)
- **Telegram:** [@PotoBW][24]
- **Correo:** dmosquerabw@gmail.com

**Errores**
----

Las palabras son traducidas por la [API de traducción de Google][10] por lo que no esta 
traducido 100% correctamente. Trabajamos en revisar traducción por traducción, 
pero hay que entender que es un trabajo de eterna esclavitud. 

En caso de encontrar errores, malas traducciones, textos incomprensibles o 
caracteres extraños nos es importante que detalle en el reporte que nos hará 
llegar por medio de los contactos definidos en este documento parte del texto 
o personaje, misión, objeto que lo dice. Esto agilizaría la solución del 
problema.


**Guías de Uso**
----

Actualmente lo tenemos ninguna guía disponible trabajamos arduamente en 
realizar almenos una.

**Expansiones referidas a los textos**
----
- [WoW Classic (Vanilla)][27]

Nuestro equipo trabaja actualizando los textos de algunos servidores que están disponibles en internet de cada una de 
las expansiones. Cualquier usuario nos puede pedir que incorporemos su repack 
para generar los textos en español automáticamente. Esperemos que servidores 
privados contacten con nosotros para mejorar el bienestar de la comunidad de 
habla hispana u otros lenguajes. 

Trabajamos para incorporar otras expiaciones, pero se debe entender que no 
debemos avanzar hacia otra expansión sin antes revisar al menos el 70% de los
textos. De todas maneras, muchos textos de la primera entrega siguen siendo 
usados en la última entrega. 

[1]: https://es.wikipedia.org/wiki/SQL
[2]: https://worldofwarcraft.com/ "World of Warcraft"
[3]: https://www.python.org/
[4]: https://es.wikipedia.org/wiki/JavaScript
[5]: https://www.php.net/manual/es/intro-whatis.php
[6]: https://es.wikipedia.org/wiki/HTML
[7]: https://dev.mysql.com/downloads/ "MySQL - The world's most popular open source database"
[8]: https://www.navicat.com/
[9]: https://www.phpmyadmin.net/
[10]: https://cloud.google.com/translate
[11]: https://httpd.apache.org/
[12]: https://www.apachefriends.org/es/index.html
[13]: https://www.wampserver.com/
[14]: https://github.com/PotoBW2/wow_text_en_es/tree/master/tools/adjust_id
[15]: https://github.com/PotoBW2/wow_text_en_es/tree/master/tools/corrector
[16]: https://github.com/PotoBW2/wow_text_en_es/tree/master/tools/extrat%20text
[17]: https://github.com/PotoBW2/wow_text_en_es/tree/master/tools/traslater_tool_python
[18]: https://pypi.org/project/certifi/
[19]: https://pypi.org/project/charset-normalizer/
[20]: https://pypi.org/project/idna/
[21]: https://pypi.org/project/PyMySQL/
[22]: https://pypi.org/project/requests/
[23]: https://pypi.org/project/urllib3/
[24]: https://t.me/PotoBW
[25]: https://www.jetbrains.com/es-es/phpstorm/
[26]: https://github.com/PotoBW2/wow_text_en_es/tree/master/tools/inyect_locales
[27]: https://github.com/PotoBW2/wow_text_en_es/tree/master/path/path_1
