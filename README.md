---
**PotoBW - WoW Text EN-ES ver 2.00**
  ===

  **WoW Text EN-ES** es un proyecto de código abierto escrito en diferentes lenguajes como [SQL][1], [JavaScript][4],
  [ PHP ][ 5 ] y [HTML][6]. El código [SQL][1] está programado para ser ejecutado en [MySQL][7], usamos herramientas
  auxiliares como [Navicat][8], [Visual Studio Code][9] y [PHPStorm][25].

  Si te gustó [World of Warcraft][2] pero el servidor está en inglés, proporcionamos una traducción al  español que puede
  ser utilizado para llenar las tablas de traducción en las bases de datos de su servidor privado si este está preparado
  para soportar traducciones.

  Cada texto fue traducido por la [API de traducción de Google][10] y actualmente se trabaja en su revisión.

  Requisitos
------------

- Usar [MySQL][7] como gestor de base de datos de nuestro servidor privado.
- Tener [PHP][5] y [Apache][11] instalado o usar [XAMPP][12], [WAMPP][13] u otro programa similar que garantice [PHP][5]
  y [Apache][11].
- Conocimiento de [PHP][5].
- Conocimiento de [SQL][1].

Herramientas
-----------------

- Ajustador de ids: Herramienta para ajustar los identificadores de los textos acabados de insertar para evitar
  errores en las demás herramientas. Está programado en [PHP][5], [SQL][1], [JavaScript][4], [HTML][6].
- Corrector de Texto: Permite sustituir cadenas o subcadenas de textos (parte del texto) por otra
  cadena definida por el usuario. Solo sustituye los textos en español. Está programado en [PHP][5], [SQL][1],
  [JavaScript][4], [HTML][6]. Esta Herramienta aun esta en la version 1.00. Pendiente a desarrollo.
- Extractor de texto: Herramienta para extraer los textos en ingles de un campo de una tabla e introducirlos en la
  base de datos para su posterior traducción. Está programado en [PHP][5], [SQL][1], [JavaScript][4], [HTML][6].
- Traductor de textos en Ingles: Herramienta que permite traducir todos los textos en inglés que no estén
  traducidos (esta traducción es proporcionada por Google y no está exenta de errores). Está programado en [PHP][5] y
  [SQL][1].
- Inyector de textos en Español: Herramienta que permite introducir los textos ya traducidos en las bases de datos
  del Core. Está programado en [PHP][5], [SQL][1],[JavaScript][4], [HTML][6].

Softwares, Lenguajes y Librerías
------------
Usamos las versiones de los siguientes softwares, lenguajes y librerías:

- [MySQL][7] – 5.5.62 o superior
- [XAMPP][12] – 8.1.12 o superior
- [PHP][5] – 8.1.12 o superior
- [Apache][11] – 2.4.58 o superior
- [Navicat][8] – 17.1.11 o superior
- [PHPStorm][25] – 2023.3.8 o superior

Las versiones que publicamos aquí son las que usamos, recomendamos usar las más modernas en medida de que sea
disponible, pero puede usar versiones viejas si así lo desea lo que puede atentar contra el correcto funcionamiento
del código.

**Contactos**
----

Mi nick es PotoBW, normalmente trabajo solo para producir estos códigos. En caso de que desea reportar errores,
sugerencias o necesidades use los siguientes contactos:

- **Celular, WhatApp, Telegram:**  +5355920042
- **Telegram:** [@PotoBW][24]
- **Correo:** dmosquerabw@gmail.com

**Errores**
----

Las palabras son traducidas por la [API de traducción de Google][10] por lo que no esta traducido 100% correctamente.
Trabajamos en revisar traducción por traducción, pero hay que entender que es un trabajo de eterna esclavitud.

Estamos usando una cuenta con la tarifa más baja esto solo permite traducir 1 texto por cada 64 segundos. Eso hace que
la herramienta de traducción sea excesivamente lenta. Espero entienda que nos es muy costoso pagar algo mejor.

En caso de encontrar errores, malas traducciones, textos incomprensibles o caracteres extraños nos es importante que
detalle en el reporte que nos hará llegar por medio de los contactos, definidos en este, documento parte del texto
o personaje, misión, objeto que lo dice. Esto agilizaría la solución del problema.




**Guía de Uso**
----
[![Alt text](https://img.youtube.com/vi/GnyrFtJyxGU/0.jpg)](https://www.youtube.com/watch?v=GnyrFtJyxGU)
[Youtube.](https://www.youtube.com/watch?v=GnyrFtJyxGU)

**Expansiones referidas a los textos**
----

- [WoW Classic (Vanilla)][27]

Nuestro equipo trabaja actualizando los textos de algunos servidores que están disponibles en internet de cada una de
las expansiones. Cualquier usuario nos puede pedir que incorporemos su repack para generar los textos en español 
automáticamente. Esperemos que servidores privados contacten con nosotros para mejorar el bienestar de la comunidad 
de habla hispana u otros lenguajes.

Trabajamos para incorporar otras expansiones, pero se debe entender que no debemos avanzar hacia otra expansión sin 
antes revisar al menos el 70% de los textos. De todas maneras, muchos textos de la primera entrega siguen siendo usados
en la última entrega.

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

[28]: https://code.visualstudio.com/download
