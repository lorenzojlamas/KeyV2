include <../layout.scad>

helix_layout = [
  [1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 1, 1],
];

helix_layout_legends = [
    ["ª","1","2","3","4","5","","","","6","7","8","9","0","Del",],
    ["TAB","q","w","e","r","t","","","","y","u","i","o","p","Ent",],
    ["BLCK","a","s","d","f","g","","","","h","j","k","l","ñ","'",],
    ["Shift","z","x","c","v","b","{","}","n","m","<",",","Up",".",],
    ["Fn","","","","","","","","","","","<","DWON",">",]
];

helix_layout_front_legends = [
    ["\"","F1","F2","F3","F4","F5","","","","","","","","",],
    ["","","","","","","","","","","","","","",],
    ["","","","","","","","","","","","","","",],
    ["","","","","","","","","","","","","","",],
    ["","","","","","","","","","","","","","",]
];


module helix_legends(profile, row_sculpting_offset=1, column_override=undef) {
  layout(helix_layout, profile, legends=helix_layout_legends, front_legends=helix_layout_front_legends, row_sculpting_offset=row_sculpting_offset, column_override=column_override, column_sculpt_profile="cresting_wave") children();
}