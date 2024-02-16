load '../j-raylib.ijs'
coinsert 'rl rlcolor rlenum'

Note ''
Inspired by [BQN-80][1] (which itself is inspired by TIC-80)

Define a Verb where
   x: current frame, starting from 1, incrementing each frame
   m: list of Raylib Colors defining the color pallette
   y: a matrix of numbers which will be mapped to the pallette `m`

Then call `Run` where
   x: the color pallette
   u: the above defined verb
   y: the numeric matrix

[1]: https://dancek.github.io/bqn-80/
)

'WIDTH HEIGHT' =: 500 500

COLORS =: Color@".;._2 {{)n
 26  28  44 255
 93  39  93 255
177  62  83 255
239 125  87 255
255 205 117 255
167 240 112 255
 56 183 100 255
 37 113 121 255
 41  54 111 255
 59  93 201 255
 65 166 246 255
115 239 247 255
244 244 244 255
148 176 194 255
 86 108 134 255
 51  60  87 255
}}

NB. Rainbow colors
NB. COLORS =: ColorFromHSV 1,.~ 1,.~ (,. 10 * i. 36)

Init =: {{
    SetTraceLogLevel LOG_ERROR
    InitWindow WIDTH;HEIGHT;'raymat'
    SetTargetFPS 60
}}

Map =: {{
    ({. n) + (%/ -/ n,.m) <.@* (y - {. m)
}}

DrawMat =: {{)d
    'min max' =. (<./ , >./), y
    q =. |. >. (HEIGHT,WIDTH) % $ y
    a =. <"0 q,"1~ q *"1 |."1 (#: i.@(*/)) $ y
    c =. <"0 x {~ (min,max) Map (0, <: # x) , y
    DrawRectangle a ,. c
}}

Run =: {{
    Init ''
    fc =. 0
    while. -. WindowShouldClose '' do.
        fc =. >: fc
        BeginDrawing ''
        try.
            x DrawMat y =. fc u y
        catch.
            echo dberm ''
            break.
        end.
        EndDrawing ''
    end.
    CloseWindow ''
}}

NB. Example 1
a =. |. <. {.@*. (_1 + 0.4 * ])@j./~ i. 40
Tick =: {{ (# COLORS) | <:^:(0 = 4 | x) y }}
COLORS Tick Run a

NB. Example 2
'pi tau' =: o. 1 2
atan =: 12 o. j.
a =. ((+&.*: -"2 atan) |:) (# ,:@(10 * <:@(2 * ] %~ i.))) 100
Tick =: {{ <. pi -~ tau | (x % 10) - m }}
COLORS (a Tick) Run ''

NB. Conway's Game of Life
g =. ? 100 100 $ 2
c =. <: (#: i.@(*/)) 3 3
Tick =: c {{ +./ (1 ,: y) *. (3 4) =/ +/ m |. y }}
NB. Force monadic call to ignore x
(BLACK,GOLD) Tick@] Run g 
