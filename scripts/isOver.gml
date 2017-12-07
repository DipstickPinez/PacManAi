///isOver(object, [x1, x2, y1, y2])
var i, arg, over, x1, x2, y1, y2;

if argument_count == 4 { //for passing in coordinates
    x1 = argument[0]
    x2 = argument[1];
    y1 = argument[2];
    y2 = argument[3];    
} else { //for passing in an object
    var target = argument[0];
    x1 = target.bbox_left;
    x2 = target.bbox_right;
    y1 = target.bbox_top;
    y2 = target.bbox_bottom;
}

if mouse_x > x1 && mouse_x < x2 {
    if mouse_y > y1 && mouse_y < y2 over = true;
    else over = false;
} else over = false;

return over;
