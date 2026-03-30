# Funkin' Legine

This is the repository for Funkin' Legine.

FNF but it's me doing art and coding using the 0.2.8 engine. An alternate path. Basically I do everything but music.

## Credits / shoutouts

- [Kawaisprite](https://twitter.com/kawaisprite) - Songs

# Compiling

Below are steps to compiling the mod. Y'know like the requirements and all that. Just know that the mod has only been tested on Windows. A command prompt is needed in order to follow the steps below.

## Setup

1. Install [Haxe](https://haxe.org/download).
2. Install [Git](https://www.git-scm.com).
3. Run `git clone https://github.com/bopel-maki-macohi/Funkin-Legine.git` from the folder where you want to store the repository.
4. Run `cd Funkin-Legine`.
5. Run `haxelib --global install hxpkg` and `haxelib --global run hxpkg setup`.
6. Run `hxpkg install --force`.
7. Run `haxelib run lime setup`.

## Platform Setup

Windows:

1. Install [Visual Studio Build Tools](https://aka.ms/vs/17/release/vs_BuildTools.exe).
2. Select "Individual Components" when prompted during the Build Tools installation process and install the following:
    - MSVC v143 VS 2022 C++ x64/x86 build tools.
    - Windows 10/11 SDK.

## Compiling

- Run `lime test <platform>` to compile.
- Run `lime run <platform>` if you want to relaunch.

