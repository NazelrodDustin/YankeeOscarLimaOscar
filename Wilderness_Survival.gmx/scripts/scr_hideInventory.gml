///scr_hideInventory(backpack width, backpack height)

backpackWidth = argument0; 
backpackHeight = argument1;

var row;
for(row = 0; row < backpackHeight; row++;){
    var col;
    for(col = 0; col < backpackWidth; col++;){
        var invString = scr_findString(col, row, true); 
        if (invString != "empty" && invString != "taken by"){
            invSlot[col,row].visible = false;
            invSlot[col,row].x = -50000;
            invSlot[col,row].y = -50000;
        }
    }
}
