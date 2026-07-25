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
