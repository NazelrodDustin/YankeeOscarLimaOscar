///scr_checkInventorySpace(item width, item height, item position x, item position y)

width = argument0;
height = argument1;
posX = argument2;
posY = argument3;

canPlace = false;
exitScript = false;

var row
for(row = 0; row < height; row++;){
    var col
    for(col = 0; col < width; col++;){
        if (invSlot[posX + col, posY + row] != "empty"){
            canPlace = false;
            exitScript = true;
            break;
        }else{
            if (exitScript == false){
                canPlace = true;
            }else{
                canPlace = false;
            }
        }
    }
}

return canPlace;
