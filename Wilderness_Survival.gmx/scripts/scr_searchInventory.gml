///scr_searchInventory(width, height, objID)

width = argument0;
height = argument1;
objID = argument2;

var row
for(row = 0; row < height; row++;){
    var col
    for(col = 0; col < width; col++;){
        show_debug_message(string(invSlot[col, row]) + " col = " + string(col) + " row = " +string(row));
        if (string(invSlot[col, row]) = objID){
            return invSlot[col, row];
        }
    }
}
