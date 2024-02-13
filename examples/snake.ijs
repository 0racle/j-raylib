#!/usr/bin/env j

load '../j-raylib.ijs'
coinsert 'rl rlcolor rlenum'

GridRect=: {{
    'px py' =. >: m * y
    DrawRectangle px;py;(<: m);(<: m);x
}}

GridCircle =: {{
    'px py' =. <. (-: m) + m * y
    DrawCircle px;py;(<: -: m);x
}}

DrawScore =: {{
    'rows cols' =. <. n
    DrawRectangle m;(m * <: rows);(m * 2 -~ cols);m;DARKBLUE
    DrawText ('SCORE: ', ": y);m;(m * <: rows);m;x
}}

NewGame =: {{

    'right down left up' =. dirs =. (, -) =/~ i. 2
    arrows =. KEY_RIGHT,KEY_DOWN,KEY_LEFT,KEY_UP
    wasd   =. KEY_D    ,KEY_S   ,KEY_A   ,KEY_W

    sbuf  =. 5 ,.~ 5 - i. 5
    dbuf  =. ,: 1 0
    speed =. 12
    score =. 0
    frame =. 0

    nib =. {. sbuf
    while. nib e. sbuf do.
        nib =. (>: 0 0) ([ + ?@-~) (<: y)
    end.

    BeginDrawing ''
    ClearBackground DARKBLUE

    NB. Draw grid, leaving border for the wall
    inner =. (1 1) {{ x +"1 ,/@(,"0/)&i./ x - y }} (<: y) 
    BLACK x GridRect"1 1 inner

    NB. Draw snake initial position
    GOLD x GridRect {. sbuf
    LIME x GridRect"1 }. sbuf

    NB. Draw nibble and score
    RED x GridCircle nib
    WHITE x DrawScore y score

    EndDrawing ''

    while. -. WindowShouldClose '' do.

        NB. Get input, ignoring current and opposite dirs
        dbuf =. dbuf, ((,: -) {: dbuf) -.~ dirs #~ IsKeyPressed"0 arrows

        BeginDrawing ''
        if. (0 = speed | frame =. >: frame) do.

            dbuf =. (}.)^:(1 < #) dbuf
            sbuf =. (dbuf +&{. sbuf), sbuf

            if. nib -: {. sbuf do.
                BLACK x GridRect nib
                while. nib e. sbuf do.
                    nib =. (>: 0 0) ([ + ?@-~) (<: y)
                end.
                score =. >: score
                speed =. speed - (0 = 20 | ]) score
                RED x GridCircle nib
                WHITE x DrawScore y score
            else.
                BLACK x GridRect {: sbuf
                sbuf =. }: sbuf
            end.

            if. (,: {. sbuf) e. (}. sbuf) do.
                1 return.  NB. self hit
            elseif. +./ ((1 1)&> +. (<: y)&<:) {. sbuf do.
                1 return.  NB. wall hit
            end.

            GOLD x GridRect 0 { sbuf
            LIME x GridRect 1 { sbuf

        end.
        EndDrawing ''

    end.
}}

Main =: {{
    'width height' =. ,~ 600
    'cols rows' =. ,~ 16
    block =. <. width % cols

    SetTraceLogLevel LOG_ERROR
    InitWindow width;height;'SNAKE'
    SetTargetFPS 60

    while. block NewGame (cols,rows) do. end.
}}

Main ''
