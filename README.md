# Pokémon Gold and Silver: Space World 1997 (English Translation)

This is a work-in-progress English translation of the Pokémon Gold and Pokémon Silver prototypes demoed at Space World 1997.

Based on the following translations:
 - https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Text
 - Additional translations provided by [@mauvesea](https://github.com/mauvesea/) and GlitterBerri
 
For safety reasons, some `text_far` calls and code modifications are padded back to the original length they were in the original ROM. This is due to the disassembly not yet being completed, which can cause shifting around things to get dangerous.

Big thanks to [@Narishma-gb](https://github.com/Narishma-gb/) for their disassemblies of the Japanese versions of the retail games. I wouldn't have been able to know where to look for various things without them.

Find a bug? Something untranslated? Something translated wrong? I made a dumb typo? Report it at the [issues tab](https://github.com/MDTravisYT/pokegold-spaceworld/issues)!

## Compiling
Until my dense head figures out how to work with makefiles, there are two makefiles for compiling Gold Version and Silver Version. Commands are as follows:

To make Gold Version:
```
make -j
```

To make Silver Version:
```
make -f MakefileSilver -j
```

To switch between versions:
```
make clean | [command for version to switch to]
```

To build with the Story Mode flag or bugfixes flag:
- Amend to `RGBASMFLAGS` in either one of the Makefiles:
  - `-DSTORY` for Story Mode
  - `-DFIXBUGS` for bugfixes
