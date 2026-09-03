@echo on
echo Installing dependencies.
haxelib set actuate 1.9.0
haxelib set BrewScript 6.1.80
haxelib set flixel-addons 3.2.1
haxelib set flixel-tools 1.5.1
haxelib set flixel-ui 2.6.1
haxelib set flixel 5.5.0
haxelib set flxanimate git
haxelib set format 3.7.0
haxelib set hscript 2.5.0
haxelib set hxcpp-debug-server 1.2.4
haxelib set hxdiscord_rpc 1.3.0
haxelib set lime-samples 7.0.0
haxelib set lime 8.2.2
haxelib set openfl 9.4.1
haxelib set seedyrng 1.1.0
haxelib set SScript 7.7.0
haxelib set tjson 1.4.0
haxelib set hxvlc 2.0.1

echo Rebuilding hxcpp from git version
haxelib run lime rebuild hxcpp
echo Installed hxcpp to location:
haxelib libpath hxcpp
echo Here are your current library versions:
haxelib list
echo Finished! You can now close this window 
pause
