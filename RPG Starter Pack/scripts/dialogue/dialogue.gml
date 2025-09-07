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
    "Voice in the Orb" : c_red,
    "Oddly dressed boy": c_teal
} 

room1_end = 
[
{
    name: "Oddly dressed boy",
    msg: "Wow, you sure don't see many people making it this far into these caves, huh?.\nHowever, there is more yet to explore beyond this place."
},

{
    name: "Oddly dressed boy",
    msg: "Please proceed on ahead."
}
]

room2_end = 
[
{
    name: "Oddly dressed boy",
    msg: "Wow, We meet again! I've heard that there was a dangerous creature down below in these parts.\nI'm really glad I didn't see it."
},

{
    name: "Oddly dressed boy",
    msg: "You should continue on down to the snowy area."
}
]

room3_end = 
[
{
    name: "Oddly dressed boy",
    msg: "RUBIK!\nTHANK GOODNESS YOU ARE HERE! I THOUGHT THOSE CREATURES WERE ABOUT TO DO SOMETHING HORRIFIC TO ME!\nMan, I wish I had come with you. "
},

{
    name: "Oddly dressed boy",
    msg: "You must've seen some pretty crazy things on your journey."
},
{
    name: "Rubik",
    msg: "No worries. But, for the amount of times we have met, I realize I do not even know your name."
},
{
    name: "Oddly dressed boy",
    msg: "I wish I could, but I do not remember my own name.\nThe last thing I remember was discovering a blue orb in some ruins, and after that it felt like a part of me had vanished."
},
{
    name: "Rubik",
    msg: "A blue orb you say? I happen to have seen it back by the caves. Maybe if I lead you to it, we will get our answer.\nLet us do this together, friend."
},
{
    name: "Oddly dressed boy",
    msg: "Yes, we should go Mr. Rubik.\nThank you so much."
}
]

welcome_dialog = 
[
{
    name: "Voice in the Orb", 
    msg: "…-……-…"
},
{
    name: "Voice in the Orb", 
    msg: "-Ca-Y-Ea-E-"
},
{
    name: "Voice in the Orb", 
    msg: "-CAN YOU HEAR ME?"
},
{
    name: "Rubik", 
    msg: "Yes,I think I can hear you."
},
{
    name: "Rubik", 
    msg: "Who are exactly even are you?"
},
{
    name: "Voice in the Orb", 
    msg: "Who I am is not important."
},
{
    name: "Voice in the Orb", 
    msg: "As for how I can talk with you, I simply speak directly to your brain."
},
{
    name: "Rubik", 
    msg: "How is that even possible?"
},
{
    name: "Voice in the Orb", 
    msg: "Dear Rubik, all you need to know is that you are the one."
},
{
    name: "Voice in the Orb", 
    msg: "The one with the curse of the Phoenix."
},
{
    name: "Voice in the Orb", 
    msg: "You may be able to resurrect infinitely, however each time you do, a small part of your sanity is stripped away from you."
},
{
    name: "Voice in the Orb", 
    msg: "Keep it up too long and you will eventually become a Void Cavity."
},
{
    name: "Voice in the Orb", 
    msg: "Void Cavities are beings that via the Phoenix curse, have died so many times that they became insane creatures, incapable of any sane thought, becoming worse the more they die."
},
{
    name: "Rubik", 
    msg: "What? But how? How did this happen to me?"
},
{
    name: "Voice in the Orb", 
    msg: "That is something you will need to figure out on your own, Rubik."
}, 
{
    name: "Voice in the Orb", 
    msg: "Find the end to this curse, and free yourself of this affliction, alongside everyone else who has been cursed."
},
{
    name: "Rubik", 
    msg: "I see. It appears I have no other purpose other than to find an end to this curse."
},
{
    name: "Voice in the Orb", 
    msg: "That is right Rubik, go on, filled with determination, and end this curse. I will be watching over you.\nJust remember, Space is to attack, Shift is to save, Ctrl is to load save, and Enter is to talk to people."
},
]

