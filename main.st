function_block add 
var_input
    run: bool;
end_var
var_output
    inverted: bool := true;
end_var

if run then
   inverted := false;
end_if
end_function_block

TYPE Point :
    STRUCT
        x : LREAL;
        y : LREAL;
    END_STRUCT
END_TYPE

function_block createPositions
   var_input
       radius : lreal;
   end_var
   var_output
       positions : Array[0..14] of Point;
   end_var
   
end_function_block