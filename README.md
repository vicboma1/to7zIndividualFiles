# To 7z
  Convert all individual files in a folder to 7z files

### Manual
* Download [script](https://github.com/vicboma1/to7zIndividualFiles/tree/master/script)
* Install [git](https://git-scm.com/download/win) for Windows
* Open git bash
* Go to folder script
* Run ./to7z.sh param1 param2
  * param1 -> Path to find the files..    
    * ex ) ../myPath/roms/
  * param2 -> Extension files..           
    * ex ) nes


### Example
```
vicboma_@vicboma MINGW64 /g
$ cd Hyperspin/utils/

vicboma_@vicboma MINGW64 /g/Hyperspin/utils
$ ./to7z.sh ../Emulators/MessUI\ 0.162\ 64/roms/famicom/ fds
Press enter to convert 90 games *.fds to *.7z...

...

7-Zip 18.05 (x64) : Copyright (c) 1999-2018 Igor Pavlov : 2018-04-30

Open archive: ../Emulators/MessUI 0.162 64/roms/famicom/target.7z
--
Path = ../Emulators/MessUI 0.162 64/roms/famicom/target.7z
Type = 7z
Physical Size = 5614
Headers Size = 130
Method = LZMA2:13
Solid = -
Blocks = 1

Scanning the drive:
1 file, 8192 bytes (8 KiB)

Updating archive: ../Emulators/MessUI 0.162 64/roms/famicom/target.7z

Add new data to archive: 1 file, 8192 bytes (8 KiB)


Files read from disk: 1
Archive size: 5614 bytes (6 KiB)
Everything is Ok

...

```
