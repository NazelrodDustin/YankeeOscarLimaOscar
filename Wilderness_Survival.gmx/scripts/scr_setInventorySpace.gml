///scr_setInventorySpace(item width, item height, item position x, item position y, item id, fill with object)


width = argument0;
height = argument1;
posX = argument2;
posY = argument3;
objID = argument4;
fillWithObject = argument5;


var row
for(row = 0; row < height; row++;){
    var col
    for(col = 0; col < width; col++;){
        if (fillWithObject){
            if (col == 0 && row == 0){
                invSlot[posX, posY] = objID;
            }else{ 
                invSlot[posX + col, posY + row] = ("taken by " + string(invSlot[posX, posY]));
            }
        }else{
            invSlot[posX + col, posY + row] = ("empty");
        }
    }
}
