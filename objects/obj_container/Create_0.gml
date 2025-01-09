enum BOXTYPE {
GENERIC,
TECH,
CABINET,
TOILET
}

type = irandom(3)
sineWave = 0
item = chooseItem()
if item == ITEM.NONE
open = true
else
open = false