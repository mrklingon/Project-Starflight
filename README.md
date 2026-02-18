# Project-Starflight
Simple space game in PyBasic and CircuitPython

I've been enjoying playing with PyBasic on my FruitJam - trying the examples in the examples/ directory, and adding a few from [http://www.vintage-basic.net/games.html](http://www.vintage-basic.net/games.html) (adapting the ones that didn't work at first).

I wanted to go old-school and write a program in BASIC using [PyBasic](https://github.com/richpl/PyBasic). Been years (decades!) since I coded in BASIC, so it was a challenge. Eventually I got my Starflight.bas coded - worked fine, but then I wanted it in CircuitPython, so I asked duck.ai to find an AI that could do that. And... it did, even adding appropriate comments, even though I hadn't commented the BASIC version. I just needed a couple of tweeks to get it to  work in CircuitPython. Runs fine on FruitJam and even NeoTrinkey (using the REPL in Mu.)

I used [FantasyNameGenerators.com](https://FantasyNameGenerators.com) to create the ship names, stars and planets. 

Just copy it to the FruitJam 

* Starflight.bas - copy to apps/PyBasic/examples
* Starflight.py - copy to apps/PyDOS - I made a subdirectory "code/" and put it there. Just run PyDOS, and cd to PyDOS/code, then type "Starflight" For a NeoTrinkey, copy it to the name "code.py" - then run it with Thonny or Mu to see the program running in the REPL.
  

```
Do you need instructions? (y/n)

y
Yourare commanding a rescue ship that is tasked
with finding a ship that has crashed in a remote system.
Each star sytem has at least 3 tramlines to other star systems.
Your job is to pilot your ship until you can reach the
lost ship.
                   Good luck.

Welcome Captain. Please sign in with your name.
joel
Captain joel we're reviewing ships available.
ENM: 4
You are now in command of Hellhound.
Your mission is to travel from ekuasims to ikreglault
where the target ship Saber is reported to be
crashed on trilles 992.

Current tramline exits are:
--------------------------------
1: naithef
2: ezlaoct
3: sehle

Choose your tramline
1
Current tramline exits are:
--------------------------------
1: sehle
2: ikreglault
3: ezlaoct

Choose your tramline
4
Invalid choice. Please choose 1, 2, or 3.
Current tramline exits are:
--------------------------------
1: sehle
2: ikreglault
3: ezlaoct

Choose your tramline
1
Current tramline exits are:
--------------------------------
1: poaph
2: baeccays
3: otaeks

Choose your tramline
2
Current tramline exits are:
--------------------------------
1: sroi
2: ikreglault
3: ikreglault

Choose your tramline
2
Congratulations! You have rescued Saber!
```
