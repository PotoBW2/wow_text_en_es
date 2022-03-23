---
**PotoBW - WoW Text EN-ES**
===

**WoW Text EN-ES** es un proyecto de código abierto escrito en diferentes lenguajes como [SQL][1], [Python][3], [JavaScript][4], [PHP][5] y [HTML][6]; siendo el 
[SQL][1] el más importante. El código [SQL][1] está programado para ser ejecutado en [MySQL][7], usamos herramientas auxiliares como [Navicat][8] y [PhpMyAdmin][9].

Si te gustó [World of Warcraft][2] pero el servidor está en inglés, proporcionamos una traducción al español que puede ser utilizado para llenar las tablas de 
traducción en las bases de datos de su servidor privado si este está preparado para soportar traducciones.

Cada texto fue traducido por la [API de traducción de Google][10] y actualmente se trabaja en su revisión.

Requisitos
------------
- Usar MySQL como gestor de base de datos de nuestro servidor privado.
- Tener PHP y Apache instalado o usar XAMPP, LAMPP, WAMPP u otro programa similar que garantice PHP y Apache.
- Conocimiento de PHP.
- Conocimiento de SQL.


Operating systems
-----------------
Currently we support running the server on the following operating systems:

* **[Windows][20]**, 32 bit and 64 bit. Windows Server 2008 (or newer) or Windows 8 (or newer) is recommended.
* **Linux**, 32 bit and 64 bit. [Debian 7][21] and [Ubuntu 12.04 LTS][22] are
  recommended. Other distributions with similar package versions will work, too.
* **BSD**, 32 bit and 64 bit. [FreeBSD][23], [NetBSD][24], [OpenBSD][25] are recommended.

Of course, newer versions should work, too. In the case of Windows, matching
server versions will work, too.

Compilers
---------
Building the server is currently possible with these compilers:

* **[Microsoft Visual Studio][31] 32 bit and 64 bit.** All editions of Visual Studio
from 2015 upwards are officially supported (although support for 2015 and 2017 are end of life.)

* **[Clang][33]**, 32 bit and 64 bit. The Clang compiler can be used on any
  supported operating system.

Dependencies
------------
The server stands on the shoulders of several well-known Open Source libraries plus
a few awesome, but less known libraries to prevent us from inventing the wheel again.

**Please note that Linux and Mac OS X users should install packages using
their systems package management instead of source packages.**

* **[Git][34] / [Github for Windows][35]**: This version control software allows you to get the source files in the first place.
* **[MySQL][40]** / **[MariaDB][41]**: These databases are used to store content and user data.
* **[ACE][43]**: aka Adaptive Communication Environment, provides us with a solid cross-platform framework for abstracting operating system specific details.
* **[Recast][44]**: In order to create navigation data from the client's map files, Recast is used to do the dirty work. It provides functions for rendering, pathing, etc.
* **[G3D][45]**: This engine provides the basic framework for handling 3D data and is used to handle basic map data.
* **[Stormlib][46]**: Provides an abstraction layer for reading from the client's data files.
* **[Zlib][53]/[Zlib for Windows][51]** provides compression algorithms used in both MPQ archive handling and the client/server protocol.
* **[Bzip2][54]/[Bzip2 for Windows][52]** provides compression algorithms used in MPQ archives.
* **[OpenSSL][48]/[OpenSSL for Windows][55]** provides encryption algorithms used when authenticating clients.

**ACE**, **Recast**, **G3D**, **Stormlib**, **Zlib** and **Bzip2** are included in the standard distribution as
we rely on specific versions.

Optional dependencies
---------------------

* **[Doxygen][49]**: If you want to export HTML or PDF formatted documentation for the Mangos API, you should install this.


<br>We have a small, but extremely friendly and helpful community managed by MadMax and Antz.


Our discord/forum motto is: 
```js
'Be nice or Be somewhere else'
```
Any trolling or unpleasantness is swiftly dealt with !!

**Official Website**
----

We welcome anyone who is interested in enjoying older versions of wow or contributing and helping out !

* [**Official MaNGOS Website**][3]  

**Discord Server**
----

We also have a Discord server where many of us hang out and discuss Mangos related stuff.

* [**Discord Server**][9]

**Main Wiki**
----

The repository of as much information as we can pack in. Details regarding the Database, file type definitions, packet definitons etc.

* [**Wiki Table of Contents**][15]


**Bug / Issue Tracker**
----

Found an issue or something which doesn't seem right, please log it in the relevant section of the Bug Tracker.

* [**Bug Tracker**][16]

**Installation Guides**
----

Installation instructions for various operation systems can be found here.

* [**Installation Guides**][17] 


License
-------
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 51 Franklin
Street, Fifth Floor, Boston, MA 02110-1301 USA.

The full license is included in the file [LICENSE](LICENSE).

We have all put in hundreds of hours of time for free to make the server what it
is today.
<br>All we ask is that if you modify the code and make improvements, please have
the decency to feed those changes back to us.

In addition, as a special exception, permission is granted to link the code of
*Mangos* with the OpenSSL project's [OpenSSL library][48] (or with modified
versions of it that use the same license as the OpenSSL library), and distribute
the linked executables. You must obey the GNU General Public License in all
respects for all of the code used other than [OpenSSL][48].

Acknowledgements
--------
World of Warcraft, and all related art, images, and lore are copyright [Blizzard Entertainment, Inc.][1]


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
[11]: https://ci.appveyor.com/project/MaNGOS/server-9fytl/history "AppVeyor Scan - Windows build status"
[12]: https://app.codacy.com/gh/mangoszero/server/dashboard "Codacy Code Status"
[13]: https://www.codefactor.io/repository/github/mangoszero/server "Codefactor Code Status"
[14]: http://makeapullrequest.com "Show PR's Welcome Icon"
[15]: http://getmangos.eu/wiki "Mangos Wiki"
[16]: https://www.getmangos.eu/bug-tracker/mangos-zero/ "Mangos Online tracker"
[17]: https://www.getmangos.eu/wiki/documentation/installation-guides/ "Installation Guides"
[19]: http://www.cmake.org/ "CMake - Cross Platform Make"
[20]: http://windows.microsoft.com/ "Microsoft Windows"
[21]: http://www.debian.org/ "Debian - The Universal Operating System"
[22]: http://www.ubuntu.com/ "Ubuntu - The world's most popular free OS"
[23]: http://www.freebsd.org/ "FreeBSD - The Power To Serve"
[24]: http://www.netbsd.org/ "NetBSD - The NetBSD Project"
[25]: http://www.openbsd.org/ "OpenBSD - Free, functional and secure"
[31]: https://visualstudio.microsoft.com/vs/older-downloads/ "Visual Studio Downloads"
[33]: http://clang.llvm.org/ "clang - a C language family frontend for LLVM"
[34]: http://git-scm.com/ "Git - Distributed version control system"
[35]: http://windows.github.com/ "github - windows client"

[41]: https://mariadb.org/download/ "MariaDB - An enhanced, drop-in replacement for MySQL"
[43]: http://www.dre.vanderbilt.edu/~schmidt/ACE.html "ACE - The ADAPTIVE Communication Environment"
[44]: http://github.com/memononen/recastnavigation "Recast - Navigation-mesh Toolset for Games"
[45]: http://sourceforge.net/projects/g3d/ "G3D - G3D Innovation Engine"
[46]: http://zezula.net/en/mpq/stormlib.html "Stormlib - A library for reading data from MPQ archives"
[48]: http://www.openssl.org/ "OpenSSL - The Open Source toolkit for SSL/TLS"
[49]: https://www.doxygen.nl/download.html "Doxygen - API documentation generator"
[51]: http://gnuwin32.sourceforge.net/packages/zlib.htm "Zlib for Windows"
[52]: http://gnuwin32.sourceforge.net/packages/bzip2.htm "Bzip2 for Windows"
[53]: http://www.zlib.net/ "Zlib"
[54]: http://www.bzip.org/ "Bzip2"
[55]: http://slproweb.com/products/Win32OpenSSL.html "OpenSSL for Windows"
