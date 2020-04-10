# haxeheapsbasegame3d

# Created by: Lightnet

# License: MIT

# Required:
 * haxe 4.0.5
 * vscode 1.44.0
 * hashlink 1.11

# Information:
    work in progress test.

    It is to learn how heaps.io game engine works.

    To create game base template for 3D. (might not work just idea.)

# command line:

## setup:
    Notes you need to install lib from haxe command line.
```
    haxelib install <package name>
	haxelib git <package name> <git url> //to get the latest version
```

```
    haxelib git heaps https://github.com/HeapsIO/heaps
	haxelib git castle https://github.com/ncannasse/castle
	haxelib git hxbit https://github.com/ncannasse/hxbit
	haxelib git hscript https://github.com/HaxeFoundation/hscript
	haxelib git hxnodejs https://github.com/HaxeFoundation/hxnodejs
	haxelib git domkit https://github.com/HeapsIO/domkit
	haxelib git hx3compat https://github.com/HaxeFoundation/hx3compat
	
    haxelib install format
    haxelib install hldx
    haxelib install hlopenal
    haxelib install hlsdl
```

 download install hashlink

## command line build:
```
haxe build.js.hxml //browser js
haxe build.hl.hxml //application
```
# Links:
 * https://www.youtube.com/watch?v=Nm4eFGE
* https://www.gamefromscratch.com/post/2020/04/07/Shiros-Game-Technology-Stack.aspx
* https://haxe.org/blog/shirogames-stack/

Hide ( Editor / IDE)
Domkit ( UI )
heaps ( Game Engine )
castle db ( Database / Editor )
hscript ( script lang )
MPMan ( Network / close src )
HxBit ( Serialization and Network )
