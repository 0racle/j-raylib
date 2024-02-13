load '../j-raylib.ijs'
coinsert 'rl rlcolor rlenum'

posK =: (0 1)  NB. position
velK =: (2 3)  NB. velocity
accK =: (4 5)  NB. acceleration
masK =: (  6)  NB. mass
resK =: (  7)  NB. restitution
radK =: (  8)  NB. radius
hueK =: (  9)  NB. hue
lifK =: ( 10)  NB. life

Dist  =: %:@+/@:(*:@-)
Angle =: ((180 % o. 1) * (12 o. ])@-~)&(j./)
Round =: <.@+&0.5

ColorFromHue =: {{ NB. Color with alpha from life %
    rgba =. Color_J ColorFromHSV (hueK { y),1,1
    Color (lifK { y)&(] 3}~ 255 <.@* 100 %~ [) rgba
}}

ApplyForce =: {{
    ((x %"1 0 masK {"1 y) + (accK {"1 y)) accK}"1 y
}}

Integrate =: {{ NB. Semi-implicit Euler integration
    y =. ((accK,:velK) +/@:{"2 1 y) velK}"1 y
    y =. ((velK,:posK) +/@:{"2 1 y) posK}"1 y
    (0 0) accK}"1 y
}}

Constrain =: {{
    'tl br' =. x
    pos =. posK {"1 y
    rad =. (radK,radK) {"1 y
    'min max' =. (rad +"1 tl),:(rad -"1~ br)
    mul =. ((- resK {"1 y),.1) {"1~ (>&min *. <&max) pos
    y =. (min >. pos <. max) posK}"1 y
    y =. (mul * velK {"1 y) velK}"1 y
}}

Speed =: {{ NB. Magnitude of velocity
    %: +/"1 (velK {"1 y) ^ 2
}}

UpdateLife =: {{ NB. reduce life on slow balls
    isSlow  =. 1 >: Round@Speed y
    (0 >. isSlow -~ lifK {"1 y) lifK}"0 1 y
}}

NewBall =: {{
    'a b' =. y
    'acc vel' =. (a (0.25 * -) b),:(0 0)
    mas =. 20 % rad =. 20 + ? 20
    'res hue lif' =. (0.9),(? 360),(100)
    (a,vel,acc,mas,res,rad,hue,lif)
}}

DrawBalls =: {{
    DrawCircle ((posK,radK) <@<.@{"1 y) ,. <@ColorFromHue"1 y
}}

Main =: {{

    'width height' =. 800 600

    SetTraceLogLevel LOG_ERROR
    InitWindow width;height;'shoot'

    NB. SetWindowState FLAG_FULLSCREEN_MODE
    NB. width  =. GetMonitorWidth 0
    NB. height =. GetMonitorHeight 0

    SetMouseCursor MOUSE_CURSOR_CROSSHAIR
    SetTargetFPS 60

    bs =. EMPTY
    grav =. 0 1
    'posA posB' =. 0 0

    while. -. WindowShouldClose '' do.

        if. IsMouseButtonPressed MOUSE_BUTTON_LEFT do.
            posA =. Vector2_J GetMousePosition ''
        elseif. IsMouseButtonDown MOUSE_BUTTON_LEFT do.
            posB =. Vector2_J GetMousePosition ''
        elseif. IsMouseButtonReleased MOUSE_BUTTON_LEFT do.
            bs =. bs,NewBall (posA,:posB)
            posA =. posB =. 0
        elseif. IsMouseButtonDown MOUSE_BUTTON_RIGHT do.
            posC =. Vector2_J GetMousePosition ''
            posR =. posC + (100 100) -~ ? (200 200)
            bs =. bs,NewBall (posC,:posR)
        end.

        BeginDrawing ''
        ClearBackground BLACK
        if. posA *. posB do.
            ad =. '°' ,~ ": Round posA Angle posB
            ds =. ": Round posA Dist posB
            cp =. 3 u: ucp ad,' | ',ds
            DrawText (< LoadUTF8 cp;# cp);(<"0 <. _40 + posA),(20;WHITE)
            DrawCircle (<"0 <. posA),(4;WHITE)
            DrawLineV (Vector2 posA);(Vector2 posB);WHITE
        end.
        if. * # bs do.
            DrawText (": # bs);10;10;20;WHITE
            bs =. (_0.01 * velK {"1 bs) ApplyForce bs  NB. apply friction
            bs =. grav ApplyForce bs                   NB. apply gravity
            bs =. Integrate bs                         NB. update position
            bs =. (0 0,:width,height) Constrain bs     NB. constrain edges
            bs =. UpdateLife bs                        NB. update life (alpha)
            bs =. (lifK *@{"1 bs) # bs                 NB. remove dead balls
            DrawBalls bs
        end.
        EndDrawing ''
    end.
    CloseWindow ''
}}

Main ''
