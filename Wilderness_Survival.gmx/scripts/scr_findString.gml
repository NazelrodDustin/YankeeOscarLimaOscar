///scr_findString(col, row, beginning);        
       
col = argument0;
row = argument1;
beginning = argument2;
 
var length = string_width(string(invSlot[col,row]));
var char;
for(char = 0; char <= length; char++;){
    if (string_char_at(string(invSlot[col,row]), char) == "y"){
        if (beginning){
            var invString = string_copy(string(invSlot[col,row]), 1, char);
        }else{
            var invString = string_copy(string(invSlot[col,row]), char + 2, length);
        }
        break;
    }else{
        var invString = string(invSlot[col,row]);
    }    
}

return invString;
