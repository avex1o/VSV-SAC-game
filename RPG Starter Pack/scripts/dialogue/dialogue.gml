function create_dialog(_msgs)
{
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.msgs = _msgs;
    _inst.current_msg = 0;
} 

char_colors = 
{
    "Congrats": c_yellow,
    "Rubik": c_green,
    "Strange man" : c_red,
    "Oddly dressed boy": c_teal
} 

room1_end = 
[
{
    name: "Strange man",
    msg: "Good job on traversing the cave.\nHowever, there is more yet to explore."
},

{
    name: "Strange man",
    msg: "Proceed on ahead."
}
]

welcome_dialog = 
[
{
    name: "Strange man", msg: "Welcome!"
},
{
    name: "Rubik",
    msg: "Who am I.....?"    
} 
]

npc2_dialog = 
[{
        name: "Oddly dressed boy",
        msg: "Hi, how are ya?"
}]