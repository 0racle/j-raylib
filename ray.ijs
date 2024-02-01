#!/usr/bin/env j

load 'j-raylib.ijs'
coinsert 'rl rlcolor rlenum'

arrows =: KEY_RIGHT,KEY_DOWN,KEY_LEFT,KEY_UP
dirs   =: (, -) =/~ i. 2
speed  =: 5

'width height' =: 800,450
cpos =: Vector2 <. 2 %~ width,height

Init =: {{
    InitWindow width;height;'test'
    SetTargetFPS 60
    ShowCursor ''
    SetMouseCursor MOUSE_CURSOR_CROSSHAIR
}}

Update =: {{
    dir =. speed * +/ dirs #~ IsKeyDown"0 arrows
    cpos =: (dir + ])&.Vector2_J cpos
}}

Draw =: {{
    ClearBackground DARKGRAY
    DrawText 'move the ball with the arrow keys';10;10;20;WHITE
    DrawCircleV cpos;50.0;GOLD
    if. IsCursorOnScreen '' do.
        mXY =. ',' joinstring ":&.> Vector2_J mpos =. GetMousePosition ''
        DrawText mXY;(width-100);(height-20);20;WHITE
        if. IsMouseButtonDown MOUSE_BUTTON_LEFT do.
            DrawCircleV mpos;10.0;BLUE
        end.
    end.
}}

MainLoop =: {{
    Update ''
    BeginDrawing ''
    Draw ''
    EndDrawing ''
    GetTime ''
}}

Init ''

(MainLoop)^:(-.@WindowShouldClose&'')^:(_) ''
