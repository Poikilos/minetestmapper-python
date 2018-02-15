# minetestmapper-python
Use python to make minetest maps.

## Goals:
* Conform syntax and features to the new official [https://github.com/minetest/minetestmapper](minetestmapper) which is in C++
* Add all features (especially standard output of geometry) from minetestmapper-numpy.py to minetestmapper.py
* Maintain minetestmapper-numpy.py (minetestmapper.py is considered low priority)
* Keep pace with changes to Python and minetest maps

## Replaces the following deprecated projects:
* minetestmapper.py (and related sectors2sqlite.py) formerly located at <https://github.com/minetest/minetest/tree/master/util>
* minetestmapper-numpy.py stranded as a pull request (in spillz' minetest fork) then apparently abandoned

## Reason for forking
* **minetestmapper.py**: The official python mapper util was discontinued by the minetest team because making maps using python is difficult to do efficiently considering the amount of data, and it was no longer considered necessary since they are now maintaining a C++ port at <https://github.com/minetest/minetestmapper> (the problem was eliminated by eliminating the python mappers from the repo, though spillz had significantly improved the performance using numpy in a fork).
* **minetestmapper-numpy.py**: Unfortunately, support requests directed to spillz have been on his [official thread](https://forum.minetest.net/viewtopic.php?f=14&t=8730) for a long time now, so I am placing that here. In addition, there is no reason to fork minetest to work on these mappers (spillz' version is in his fork of minetest), as the python mapper is no longer there. I suggest to spillz that if he continues his work on it, that he forks from here for that reason.
* **minetestmapper**: As for the C++ version of minetestmapper, for now it lacks some of the functionality of these mappers, and must be compiled from source in order to be installed. In addition, many steps are required in order to create a colors.txt file that covers all of your mods. Many authors have created some great colors.txt files, so all of that will be combined into this project's colors.txt (for reasons such as VenessaE's colors.txt makes prettier maps). This project can continue alongside the C++ version but hopefully the C++ version will integrate some important features so it can be used by web map projects.
