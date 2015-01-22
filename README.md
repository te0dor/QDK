# QDK
The project is fork qnap SDK 2.2.4

# QPKG Development Guidelines
----------------------------------

#Description

QDK is used to build QPKG files/applications for QNAP Turbo NAS. A QPKG file makes it easy for anyone to install and remove packages. It also gives a package maintainer almost total control on how the package is installed on the NAS.
The major design goal of QDK is to make it easy for the package maintainer to create simple QPKG files and at the same time also support more advanced packages. QDK started out as a simple modification of the first official release of the QPKG SDK, but now supersedes it. It includes many new features like architecture check at installation, support for digital signatures, different compression algorithms, a comprehensive option to check that other required QPKG packages or Optware packages are installed (or that conflicting packages are not installed), automatic installation of required Optware packages, and a powerful build script.

# License

QDK is distributed under the GPL making it completely open and available for anyone to use.

# Installation

Download and install the QPKG file and it will automatically create the system-wide configuration file, /etc/config/qdk.conf, and when enabled it also creates a symlink for qbuild in /usr/bin. The reference manual is included in a separate zip file. There is also a document (QDK Cookbook) with solutions to different common situations that you could run into when using QDK to build QPKG packages.
