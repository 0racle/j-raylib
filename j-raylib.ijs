
cocurrent 'rl'

nixlib =. '/usr/local/lib/libraylib.so'
winlib =. jpath '~/raylib/lib/raylib.dll'
raylib =. IFUNIX {:: winlib;nixlib

Color =: {{
    'r g b a' =. >  y
    256 #. |. y
}}
Color_J  =: |.@((4 # 256) #: ]) :. Color

Vector2  =: {{
    'vx vy' =. > y
    {. _2 fc 1 fc vx,vy
}}
Vector2_J=:    (_1 fc 2 fc ])   :. Vector2

cocurrent 'rlcolor'

LIGHTGRAY    =: Color_rl_ 200 200 200 255    NB. Light Gray
GRAY         =: Color_rl_ 130 130 130 255    NB. Gray
DARKGRAY     =: Color_rl_  80  80  80 255    NB. Dark Gray
YELLOW       =: Color_rl_ 253 249   0 255    NB. Yellow
GOLD         =: Color_rl_ 255 203   0 255    NB. Gold
ORANGE       =: Color_rl_ 255 161   0 255    NB. Orange
PINK         =: Color_rl_ 255 109 194 255    NB. Pink
RED          =: Color_rl_ 230  41  55 255    NB. Red
MAROON       =: Color_rl_ 190  33  55 255    NB. Maroon
GREEN        =: Color_rl_   0 228  48 255    NB. Green
LIME         =: Color_rl_   0 158  47 255    NB. Lime
DARKGREEN    =: Color_rl_   0 117  44 255    NB. Dark Green
SKYBLUE      =: Color_rl_ 102 191 255 255    NB. Sky Blue
BLUE         =: Color_rl_   0 121 241 255    NB. Blue
DARKBLUE     =: Color_rl_   0  82 172 255    NB. Dark Blue
PURPLE       =: Color_rl_ 200 122 255 255    NB. Purple
VIOLET       =: Color_rl_ 135  60 190 255    NB. Violet
DARKPURPLE   =: Color_rl_ 112  31 126 255    NB. Dark Purple
BEIGE        =: Color_rl_ 211 176 131 255    NB. Beige
BROWN        =: Color_rl_ 127 106  79 255    NB. Brown
DARKBROWN    =: Color_rl_  76  63  47 255    NB. Dark Brown
WHITE        =: Color_rl_ 255 255 255 255    NB. White
BLACK        =: Color_rl_   0   0   0 255    NB. Black
BLANK        =: Color_rl_   0   0   0   0    NB. Blank (Transparent)
MAGENTA      =: Color_rl_ 255   0 255 255    NB. Magenta
RAYWHITE     =: Color_rl_ 245 245 245 255    NB. My own White (raylib logo)

cocurrent 'rlenum'

NB. cocurrent 'rlflag'

NB. System/Window config flags
FLAG_FULLSCREEN_MODE                     =: 2       NB. Set to run program in fullscreen
FLAG_WINDOW_RESIZABLE                    =: 4       NB. Set to allow resizable window
FLAG_WINDOW_UNDECORATED                  =: 8       NB. Set to disable window decoration (frame and buttons)
FLAG_WINDOW_TRANSPARENT                  =: 16      NB. Set to allow transparent framebuffer
FLAG_MSAA_4X_HINT                        =: 32      NB. Set to try enabling MSAA 4X
FLAG_VSYNC_HINT                          =: 64      NB. Set to try enabling V-Sync on GPU
FLAG_WINDOW_HIDDEN                       =: 128     NB. Set to hide window
FLAG_WINDOW_ALWAYS_RUN                   =: 256     NB. Set to allow windows running while minimized
FLAG_WINDOW_MINIMIZED                    =: 512     NB. Set to minimize window (iconify)
FLAG_WINDOW_MAXIMIZED                    =: 1024    NB. Set to maximize window (expanded to monitor)
FLAG_WINDOW_UNFOCUSED                    =: 2048    NB. Set to window non focused
FLAG_WINDOW_TOPMOST                      =: 4096    NB. Set to window always on top
FLAG_WINDOW_HIGHDPI                      =: 8192    NB. Set to support HighDPI
FLAG_WINDOW_MOUSE_PASSTHROUGH            =: 16384   NB. Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
FLAG_BORDERLESS_WINDOWED_MODE            =: 32768   NB. Set to run program in borderless windowed mode
FLAG_INTERLACED_HINT                     =: 65536   NB. Set to try enabling interlaced video format (for V3D)

NB. cocurrent 'rllog'

NB. Trace log level
LOG_ALL                                  =: 0       NB. Display all logs
LOG_TRACE                                =: 1       NB. Trace logging, intended for internal use only
LOG_DEBUG                                =: 2       NB. Debug logging, used for internal debugging, it should be disabled on release builds
LOG_INFO                                 =: 3       NB. Info logging, used for program execution info
LOG_WARNING                              =: 4       NB. Warning logging, used on recoverable failures
LOG_ERROR                                =: 5       NB. Error logging, used on unrecoverable failures
LOG_FATAL                                =: 6       NB. Fatal logging, used to abort program: exit(EXIT_FAILURE)
LOG_NONE                                 =: 7       NB. Disable logging

NB. cocurrent 'rlkey'

NB. Keyboard keys (US keyboard layout)
KEY_NULL                                 =: 0       NB. Key: NULL, used for no key pressed
KEY_BACK                                 =: 4       NB. Key: Android back button
KEY_MENU                                 =: 5       NB. Key: Android menu button
KEY_VOLUME_UP                            =: 24      NB. Key: Android volume up button
KEY_VOLUME_DOWN                          =: 25      NB. Key: Android volume down button
KEY_SPACE                                =: 32      NB. Key: Space
KEY_APOSTROPHE                           =: 39      NB. Key: '
KEY_COMMA                                =: 44      NB. Key: ,
KEY_MINUS                                =: 45      NB. Key: -
KEY_PERIOD                               =: 46      NB. Key: .
KEY_SLASH                                =: 47      NB. Key: /
KEY_ZERO                                 =: 48      NB. Key: 0
KEY_ONE                                  =: 49      NB. Key: 1
KEY_TWO                                  =: 50      NB. Key: 2
KEY_THREE                                =: 51      NB. Key: 3
KEY_FOUR                                 =: 52      NB. Key: 4
KEY_FIVE                                 =: 53      NB. Key: 5
KEY_SIX                                  =: 54      NB. Key: 6
KEY_SEVEN                                =: 55      NB. Key: 7
KEY_EIGHT                                =: 56      NB. Key: 8
KEY_NINE                                 =: 57      NB. Key: 9
KEY_SEMICOLON                            =: 59      NB. Key: ;
KEY_EQUAL                                =: 61      NB. Key: =
KEY_A                                    =: 65      NB. Key: A | a
KEY_B                                    =: 66      NB. Key: B | b
KEY_C                                    =: 67      NB. Key: C | c
KEY_D                                    =: 68      NB. Key: D | d
KEY_E                                    =: 69      NB. Key: E | e
KEY_F                                    =: 70      NB. Key: F | f
KEY_G                                    =: 71      NB. Key: G | g
KEY_H                                    =: 72      NB. Key: H | h
KEY_I                                    =: 73      NB. Key: I | i
KEY_J                                    =: 74      NB. Key: J | j
KEY_K                                    =: 75      NB. Key: K | k
KEY_L                                    =: 76      NB. Key: L | l
KEY_M                                    =: 77      NB. Key: M | m
KEY_N                                    =: 78      NB. Key: N | n
KEY_O                                    =: 79      NB. Key: O | o
KEY_P                                    =: 80      NB. Key: P | p
KEY_Q                                    =: 81      NB. Key: Q | q
KEY_R                                    =: 82      NB. Key: R | r
KEY_S                                    =: 83      NB. Key: S | s
KEY_T                                    =: 84      NB. Key: T | t
KEY_U                                    =: 85      NB. Key: U | u
KEY_V                                    =: 86      NB. Key: V | v
KEY_W                                    =: 87      NB. Key: W | w
KEY_X                                    =: 88      NB. Key: X | x
KEY_Y                                    =: 89      NB. Key: Y | y
KEY_Z                                    =: 90      NB. Key: Z | z
KEY_LEFT_BRACKET                         =: 91      NB. Key: [
KEY_BACKSLASH                            =: 92      NB. Key: '\'
KEY_RIGHT_BRACKET                        =: 93      NB. Key: ]
KEY_GRAVE                                =: 96      NB. Key: `
KEY_ESCAPE                               =: 256     NB. Key: Esc
KEY_ENTER                                =: 257     NB. Key: Enter
KEY_TAB                                  =: 258     NB. Key: Tab
KEY_BACKSPACE                            =: 259     NB. Key: Backspace
KEY_INSERT                               =: 260     NB. Key: Ins
KEY_DELETE                               =: 261     NB. Key: Del
KEY_RIGHT                                =: 262     NB. Key: Cursor right
KEY_LEFT                                 =: 263     NB. Key: Cursor left
KEY_DOWN                                 =: 264     NB. Key: Cursor down
KEY_UP                                   =: 265     NB. Key: Cursor up
KEY_PAGE_UP                              =: 266     NB. Key: Page up
KEY_PAGE_DOWN                            =: 267     NB. Key: Page down
KEY_HOME                                 =: 268     NB. Key: Home
KEY_END                                  =: 269     NB. Key: End
KEY_CAPS_LOCK                            =: 280     NB. Key: Caps lock
KEY_SCROLL_LOCK                          =: 281     NB. Key: Scroll down
KEY_NUM_LOCK                             =: 282     NB. Key: Num lock
KEY_PRINT_SCREEN                         =: 283     NB. Key: Print screen
KEY_PAUSE                                =: 284     NB. Key: Pause
KEY_F1                                   =: 290     NB. Key: F1
KEY_F2                                   =: 291     NB. Key: F2
KEY_F3                                   =: 292     NB. Key: F3
KEY_F4                                   =: 293     NB. Key: F4
KEY_F5                                   =: 294     NB. Key: F5
KEY_F6                                   =: 295     NB. Key: F6
KEY_F7                                   =: 296     NB. Key: F7
KEY_F8                                   =: 297     NB. Key: F8
KEY_F9                                   =: 298     NB. Key: F9
KEY_F10                                  =: 299     NB. Key: F10
KEY_F11                                  =: 300     NB. Key: F11
KEY_F12                                  =: 301     NB. Key: F12
KEY_KP_0                                 =: 320     NB. Key: Keypad 0
KEY_KP_1                                 =: 321     NB. Key: Keypad 1
KEY_KP_2                                 =: 322     NB. Key: Keypad 2
KEY_KP_3                                 =: 323     NB. Key: Keypad 3
KEY_KP_4                                 =: 324     NB. Key: Keypad 4
KEY_KP_5                                 =: 325     NB. Key: Keypad 5
KEY_KP_6                                 =: 326     NB. Key: Keypad 6
KEY_KP_7                                 =: 327     NB. Key: Keypad 7
KEY_KP_8                                 =: 328     NB. Key: Keypad 8
KEY_KP_9                                 =: 329     NB. Key: Keypad 9
KEY_KP_DECIMAL                           =: 330     NB. Key: Keypad .
KEY_KP_DIVIDE                            =: 331     NB. Key: Keypad /
KEY_KP_MULTIPLY                          =: 332     NB. Key: Keypad *
KEY_KP_SUBTRACT                          =: 333     NB. Key: Keypad -
KEY_KP_ADD                               =: 334     NB. Key: Keypad +
KEY_KP_ENTER                             =: 335     NB. Key: Keypad Enter
KEY_KP_EQUAL                             =: 336     NB. Key: Keypad =
KEY_LEFT_SHIFT                           =: 340     NB. Key: Shift left
KEY_LEFT_CONTROL                         =: 341     NB. Key: Control left
KEY_LEFT_ALT                             =: 342     NB. Key: Alt left
KEY_LEFT_SUPER                           =: 343     NB. Key: Super left
KEY_RIGHT_SHIFT                          =: 344     NB. Key: Shift right
KEY_RIGHT_CONTROL                        =: 345     NB. Key: Control right
KEY_RIGHT_ALT                            =: 346     NB. Key: Alt right
KEY_RIGHT_SUPER                          =: 347     NB. Key: Super right
KEY_KB_MENU                              =: 348     NB. Key: KB menu

NB. cocurrent 'rlmouse'

NB. Mouse buttons
MOUSE_BUTTON_LEFT                        =: 0       NB. Mouse button left
MOUSE_BUTTON_RIGHT                       =: 1       NB. Mouse button right
MOUSE_BUTTON_MIDDLE                      =: 2       NB. Mouse button middle (pressed wheel)
MOUSE_BUTTON_SIDE                        =: 3       NB. Mouse button side (advanced mouse device)
MOUSE_BUTTON_EXTRA                       =: 4       NB. Mouse button extra (advanced mouse device)
MOUSE_BUTTON_FORWARD                     =: 5       NB. Mouse button forward (advanced mouse device)
MOUSE_BUTTON_BACK                        =: 6       NB. Mouse button back (advanced mouse device)

NB. Mouse cursor
MOUSE_CURSOR_DEFAULT                     =: 0       NB. Default pointer shape
MOUSE_CURSOR_ARROW                       =: 1       NB. Arrow shape
MOUSE_CURSOR_IBEAM                       =: 2       NB. Text writing cursor shape
MOUSE_CURSOR_CROSSHAIR                   =: 3       NB. Cross shape
MOUSE_CURSOR_POINTING_HAND               =: 4       NB. Pointing hand cursor
MOUSE_CURSOR_RESIZE_EW                   =: 5       NB. Horizontal resize/move arrow shape
MOUSE_CURSOR_RESIZE_NS                   =: 6       NB. Vertical resize/move arrow shape
MOUSE_CURSOR_RESIZE_NWSE                 =: 7       NB. Top-left to bottom-right diagonal resize/move arrow shape
MOUSE_CURSOR_RESIZE_NESW                 =: 8       NB. The top-right to bottom-left diagonal resize/move arrow shape
MOUSE_CURSOR_RESIZE_ALL                  =: 9       NB. The omnidirectional resize/move cursor shape
MOUSE_CURSOR_NOT_ALLOWED                 =: 10      NB. The operation-not-allowed shape

NB. cocurrent 'rlgamepad'

NB. Gamepad buttons
GAMEPAD_BUTTON_UNKNOWN                   =: 0       NB. Unknown button, just for error checking
GAMEPAD_BUTTON_LEFT_FACE_UP              =: 1       NB. Gamepad left DPAD up button
GAMEPAD_BUTTON_LEFT_FACE_RIGHT           =: 2       NB. Gamepad left DPAD right button
GAMEPAD_BUTTON_LEFT_FACE_DOWN            =: 3       NB. Gamepad left DPAD down button
GAMEPAD_BUTTON_LEFT_FACE_LEFT            =: 4       NB. Gamepad left DPAD left button
GAMEPAD_BUTTON_RIGHT_FACE_UP             =: 5       NB. Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
GAMEPAD_BUTTON_RIGHT_FACE_RIGHT          =: 6       NB. Gamepad right button right (i.e. PS3: Square, Xbox: X)
GAMEPAD_BUTTON_RIGHT_FACE_DOWN           =: 7       NB. Gamepad right button down (i.e. PS3: Cross, Xbox: A)
GAMEPAD_BUTTON_RIGHT_FACE_LEFT           =: 8       NB. Gamepad right button left (i.e. PS3: Circle, Xbox: B)
GAMEPAD_BUTTON_LEFT_TRIGGER_1            =: 9       NB. Gamepad top/back trigger left (first), it could be a trailing button
GAMEPAD_BUTTON_LEFT_TRIGGER_2            =: 10      NB. Gamepad top/back trigger left (second), it could be a trailing button
GAMEPAD_BUTTON_RIGHT_TRIGGER_1           =: 11      NB. Gamepad top/back trigger right (one), it could be a trailing button
GAMEPAD_BUTTON_RIGHT_TRIGGER_2           =: 12      NB. Gamepad top/back trigger right (second), it could be a trailing button
GAMEPAD_BUTTON_MIDDLE_LEFT               =: 13      NB. Gamepad center buttons, left one (i.e. PS3: Select)
GAMEPAD_BUTTON_MIDDLE                    =: 14      NB. Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
GAMEPAD_BUTTON_MIDDLE_RIGHT              =: 15      NB. Gamepad center buttons, right one (i.e. PS3: Start)
GAMEPAD_BUTTON_LEFT_THUMB                =: 16      NB. Gamepad joystick pressed button left
GAMEPAD_BUTTON_RIGHT_THUMB               =: 17      NB. Gamepad joystick pressed button right

NB. Gamepad axis
GAMEPAD_AXIS_LEFT_X                      =: 0       NB. Gamepad left stick X axis
GAMEPAD_AXIS_LEFT_Y                      =: 1       NB. Gamepad left stick Y axis
GAMEPAD_AXIS_RIGHT_X                     =: 2       NB. Gamepad right stick X axis
GAMEPAD_AXIS_RIGHT_Y                     =: 3       NB. Gamepad right stick Y axis
GAMEPAD_AXIS_LEFT_TRIGGER                =: 4       NB. Gamepad back trigger left, pressure level: [1..-1]
GAMEPAD_AXIS_RIGHT_TRIGGER               =: 5       NB. Gamepad back trigger right, pressure level: [1..-1]

NB. cocurrent 'rlmatmap'

NB. Material map index
MATERIAL_MAP_ALBEDO                      =: 0       NB. Albedo material (same as: MATERIAL_MAP_DIFFUSE)
MATERIAL_MAP_METALNESS                   =: 1       NB. Metalness material (same as: MATERIAL_MAP_SPECULAR)
MATERIAL_MAP_NORMAL                      =: 2       NB. Normal material
MATERIAL_MAP_ROUGHNESS                   =: 3       NB. Roughness material
MATERIAL_MAP_OCCLUSION                   =: 4       NB. Ambient occlusion material
MATERIAL_MAP_EMISSION                    =: 5       NB. Emission material
MATERIAL_MAP_HEIGHT                      =: 6       NB. Heightmap material
MATERIAL_MAP_CUBEMAP                     =: 7       NB. Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MATERIAL_MAP_IRRADIANCE                  =: 8       NB. Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MATERIAL_MAP_PREFILTER                   =: 9       NB. Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MATERIAL_MAP_BRDF                        =: 10      NB. Brdf material

NB. cocurrent 'rlshader'

NB. Shader location index
SHADER_LOC_VERTEX_POSITION               =: 0       NB. Shader location: vertex attribute: position
SHADER_LOC_VERTEX_TEXCOORD01             =: 1       NB. Shader location: vertex attribute: texcoord01
SHADER_LOC_VERTEX_TEXCOORD02             =: 2       NB. Shader location: vertex attribute: texcoord02
SHADER_LOC_VERTEX_NORMAL                 =: 3       NB. Shader location: vertex attribute: normal
SHADER_LOC_VERTEX_TANGENT                =: 4       NB. Shader location: vertex attribute: tangent
SHADER_LOC_VERTEX_COLOR                  =: 5       NB. Shader location: vertex attribute: color
SHADER_LOC_MATRIX_MVP                    =: 6       NB. Shader location: matrix uniform: model-view-projection
SHADER_LOC_MATRIX_VIEW                   =: 7       NB. Shader location: matrix uniform: view (camera transform)
SHADER_LOC_MATRIX_PROJECTION             =: 8       NB. Shader location: matrix uniform: projection
SHADER_LOC_MATRIX_MODEL                  =: 9       NB. Shader location: matrix uniform: model (transform)
SHADER_LOC_MATRIX_NORMAL                 =: 10      NB. Shader location: matrix uniform: normal
SHADER_LOC_VECTOR_VIEW                   =: 11      NB. Shader location: vector uniform: view
SHADER_LOC_COLOR_DIFFUSE                 =: 12      NB. Shader location: vector uniform: diffuse color
SHADER_LOC_COLOR_SPECULAR                =: 13      NB. Shader location: vector uniform: specular color
SHADER_LOC_COLOR_AMBIENT                 =: 14      NB. Shader location: vector uniform: ambient color
SHADER_LOC_MAP_ALBEDO                    =: 15      NB. Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
SHADER_LOC_MAP_METALNESS                 =: 16      NB. Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
SHADER_LOC_MAP_NORMAL                    =: 17      NB. Shader location: sampler2d texture: normal
SHADER_LOC_MAP_ROUGHNESS                 =: 18      NB. Shader location: sampler2d texture: roughness
SHADER_LOC_MAP_OCCLUSION                 =: 19      NB. Shader location: sampler2d texture: occlusion
SHADER_LOC_MAP_EMISSION                  =: 20      NB. Shader location: sampler2d texture: emission
SHADER_LOC_MAP_HEIGHT                    =: 21      NB. Shader location: sampler2d texture: height
SHADER_LOC_MAP_CUBEMAP                   =: 22      NB. Shader location: samplerCube texture: cubemap
SHADER_LOC_MAP_IRRADIANCE                =: 23      NB. Shader location: samplerCube texture: irradiance
SHADER_LOC_MAP_PREFILTER                 =: 24      NB. Shader location: samplerCube texture: prefilter
SHADER_LOC_MAP_BRDF                      =: 25      NB. Shader location: sampler2d texture: brdf

NB. Shader uniform data type
SHADER_UNIFORM_FLOAT                     =: 0       NB. Shader uniform type: float
SHADER_UNIFORM_VEC2                      =: 1       NB. Shader uniform type: vec2 (2 float)
SHADER_UNIFORM_VEC3                      =: 2       NB. Shader uniform type: vec3 (3 float)
SHADER_UNIFORM_VEC4                      =: 3       NB. Shader uniform type: vec4 (4 float)
SHADER_UNIFORM_INT                       =: 4       NB. Shader uniform type: int
SHADER_UNIFORM_IVEC2                     =: 5       NB. Shader uniform type: ivec2 (2 int)
SHADER_UNIFORM_IVEC3                     =: 6       NB. Shader uniform type: ivec3 (3 int)
SHADER_UNIFORM_IVEC4                     =: 7       NB. Shader uniform type: ivec4 (4 int)
SHADER_UNIFORM_SAMPLER2D                 =: 8       NB. Shader uniform type: sampler2d

NB. Shader attribute data types
SHADER_ATTRIB_FLOAT                      =: 0       NB. Shader attribute type: float
SHADER_ATTRIB_VEC2                       =: 1       NB. Shader attribute type: vec2 (2 float)
SHADER_ATTRIB_VEC3                       =: 2       NB. Shader attribute type: vec3 (3 float)
SHADER_ATTRIB_VEC4                       =: 3       NB. Shader attribute type: vec4 (4 float)

NB. cocurrent 'rlpxlfmt'

NB. Pixel formats
PIXELFORMAT_UNCOMPRESSED_GRAYSCALE       =: 1       NB. 8 bit per pixel (no alpha)
PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA      =: 2       NB. 8*2 bpp (2 channels)
PIXELFORMAT_UNCOMPRESSED_R5G6B5          =: 3       NB. 16 bpp
PIXELFORMAT_UNCOMPRESSED_R8G8B8          =: 4       NB. 24 bpp
PIXELFORMAT_UNCOMPRESSED_R5G5B5A1        =: 5       NB. 16 bpp (1 bit alpha)
PIXELFORMAT_UNCOMPRESSED_R4G4B4A4        =: 6       NB. 16 bpp (4 bit alpha)
PIXELFORMAT_UNCOMPRESSED_R8G8B8A8        =: 7       NB. 32 bpp
PIXELFORMAT_UNCOMPRESSED_R32             =: 8       NB. 32 bpp (1 channel - float)
PIXELFORMAT_UNCOMPRESSED_R32G32B32       =: 9       NB. 32*3 bpp (3 channels - float)
PIXELFORMAT_UNCOMPRESSED_R32G32B32A32    =: 10      NB. 32*4 bpp (4 channels - float)
PIXELFORMAT_UNCOMPRESSED_R16             =: 11      NB. 16 bpp (1 channel - half float)
PIXELFORMAT_UNCOMPRESSED_R16G16B16       =: 12      NB. 16*3 bpp (3 channels - half float)
PIXELFORMAT_UNCOMPRESSED_R16G16B16A16    =: 13      NB. 16*4 bpp (4 channels - half float)
PIXELFORMAT_COMPRESSED_DXT1_RGB          =: 14      NB. 4 bpp (no alpha)
PIXELFORMAT_COMPRESSED_DXT1_RGBA         =: 15      NB. 4 bpp (1 bit alpha)
PIXELFORMAT_COMPRESSED_DXT3_RGBA         =: 16      NB. 8 bpp
PIXELFORMAT_COMPRESSED_DXT5_RGBA         =: 17      NB. 8 bpp
PIXELFORMAT_COMPRESSED_ETC1_RGB          =: 18      NB. 4 bpp
PIXELFORMAT_COMPRESSED_ETC2_RGB          =: 19      NB. 4 bpp
PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA     =: 20      NB. 8 bpp
PIXELFORMAT_COMPRESSED_PVRT_RGB          =: 21      NB. 4 bpp
PIXELFORMAT_COMPRESSED_PVRT_RGBA         =: 22      NB. 4 bpp
PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA     =: 23      NB. 8 bpp
PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA     =: 24      NB. 2 bpp

NB. cocurrent 'rltex'

NB. Texture parameters: filter mode
TEXTURE_FILTER_POINT                     =: 0       NB. No filter, just pixel approximation
TEXTURE_FILTER_BILINEAR                  =: 1       NB. Linear filtering
TEXTURE_FILTER_TRILINEAR                 =: 2       NB. Trilinear filtering (linear with mipmaps)
TEXTURE_FILTER_ANISOTROPIC_4X            =: 3       NB. Anisotropic filtering 4x
TEXTURE_FILTER_ANISOTROPIC_8X            =: 4       NB. Anisotropic filtering 8x
TEXTURE_FILTER_ANISOTROPIC_16X           =: 5       NB. Anisotropic filtering 16x

NB. Texture parameters: wrap mode
TEXTURE_WRAP_REPEAT                      =: 0       NB. Repeats texture in tiled mode
TEXTURE_WRAP_CLAMP                       =: 1       NB. Clamps texture to edge pixel in tiled mode
TEXTURE_WRAP_MIRROR_REPEAT               =: 2       NB. Mirrors and repeats the texture in tiled mode
TEXTURE_WRAP_MIRROR_CLAMP                =: 3       NB. Mirrors and clamps to border the texture in tiled mode

NB. cocurrent 'rlcubemap'

NB. Cubemap layouts
CUBEMAP_LAYOUT_AUTO_DETECT               =: 0       NB. Automatically detect layout type
CUBEMAP_LAYOUT_LINE_VERTICAL             =: 1       NB. Layout is defined by a vertical line with faces
CUBEMAP_LAYOUT_LINE_HORIZONTAL           =: 2       NB. Layout is defined by a horizontal line with faces
CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR       =: 3       NB. Layout is defined by a 3x4 cross with cubemap faces
CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE       =: 4       NB. Layout is defined by a 4x3 cross with cubemap faces
CUBEMAP_LAYOUT_PANORAMA                  =: 5       NB. Layout is defined by a panorama image (equirrectangular map)

NB. cocurrent 'rlfont'

NB. Font type, defines generation method
FONT_DEFAULT                             =: 0       NB. Default font generation, anti-aliased
FONT_BITMAP                              =: 1       NB. Bitmap font generation, no anti-aliasing
FONT_SDF                                 =: 2       NB. SDF font generation, requires external shader

NB. cocurrent 'rlblend'

NB. Color blending modes (pre-defined)
BLEND_ALPHA                              =: 0       NB. Blend textures considering alpha (default)
BLEND_ADDITIVE                           =: 1       NB. Blend textures adding colors
BLEND_MULTIPLIED                         =: 2       NB. Blend textures multiplying colors
BLEND_ADD_COLORS                         =: 3       NB. Blend textures adding colors (alternative)
BLEND_SUBTRACT_COLORS                    =: 4       NB. Blend textures subtracting colors (alternative)
BLEND_ALPHA_PREMULTIPLY                  =: 5       NB. Blend premultiplied textures considering alpha
BLEND_CUSTOM                             =: 6       NB. Blend textures using custom src/dst factors (use rlSetBlendFactors())
BLEND_CUSTOM_SEPARATE                    =: 7       NB. Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())

NB. cocurrent 'rlgesture'

NB. Gesture
GESTURE_NONE                             =: 0       NB. No gesture
GESTURE_TAP                              =: 1       NB. Tap gesture
GESTURE_DOUBLETAP                        =: 2       NB. Double tap gesture
GESTURE_HOLD                             =: 4       NB. Hold gesture
GESTURE_DRAG                             =: 8       NB. Drag gesture
GESTURE_SWIPE_RIGHT                      =: 16      NB. Swipe right gesture
GESTURE_SWIPE_LEFT                       =: 32      NB. Swipe left gesture
GESTURE_SWIPE_UP                         =: 64      NB. Swipe up gesture
GESTURE_SWIPE_DOWN                       =: 128     NB. Swipe down gesture
GESTURE_PINCH_IN                         =: 256     NB. Pinch in gesture
GESTURE_PINCH_OUT                        =: 512     NB. Pinch out gesture

NB. cocurrent 'rlcamera'

NB. Camera system modes
CAMERA_CUSTOM                            =: 0       NB. Custom camera
CAMERA_FREE                              =: 1       NB. Free camera
CAMERA_ORBITAL                           =: 2       NB. Orbital camera
CAMERA_FIRST_PERSON                      =: 3       NB. First person camera
CAMERA_THIRD_PERSON                      =: 4       NB. Third person camera

NB. Camera projection
CAMERA_PERSPECTIVE                       =: 0       NB. Perspective projection
CAMERA_ORTHOGRAPHIC                      =: 1       NB. Orthographic projection

NB. cocurrent 'rlnpatch'

NB. N-patch layout
NPATCH_NINE_PATCH                        =: 0       NB. Npatch layout: 3x3 tiles
NPATCH_THREE_PATCH_VERTICAL              =: 1       NB. Npatch layout: 1x3 tiles
NPATCH_THREE_PATCH_HORIZONTAL            =: 2       NB. Npatch layout: 3x1 tiles

cocurrent 'rl'

NB. void InitWindow(int width, int height, const char * title) // Initialize window and OpenGL context
InitWindow =: 0 {:: (raylib,' InitWindow n i i *c') cd ]
NB. void CloseWindow() // Close window and unload OpenGL context
CloseWindow =: 0 {:: (raylib,' CloseWindow n') cd ]
NB. bool WindowShouldClose() // Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
WindowShouldClose =: 0 {:: (raylib,' WindowShouldClose b') cd ]
NB. bool IsWindowReady() // Check if window has been initialized successfully
IsWindowReady =: 0 {:: (raylib,' IsWindowReady b') cd ]
NB. bool IsWindowFullscreen() // Check if window is currently fullscreen
IsWindowFullscreen =: 0 {:: (raylib,' IsWindowFullscreen b') cd ]
NB. bool IsWindowHidden() // Check if window is currently hidden (only PLATFORM_DESKTOP)
IsWindowHidden =: 0 {:: (raylib,' IsWindowHidden b') cd ]
NB. bool IsWindowMinimized() // Check if window is currently minimized (only PLATFORM_DESKTOP)
IsWindowMinimized =: 0 {:: (raylib,' IsWindowMinimized b') cd ]
NB. bool IsWindowMaximized() // Check if window is currently maximized (only PLATFORM_DESKTOP)
IsWindowMaximized =: 0 {:: (raylib,' IsWindowMaximized b') cd ]
NB. bool IsWindowFocused() // Check if window is currently focused (only PLATFORM_DESKTOP)
IsWindowFocused =: 0 {:: (raylib,' IsWindowFocused b') cd ]
NB. bool IsWindowResized() // Check if window has been resized last frame
IsWindowResized =: 0 {:: (raylib,' IsWindowResized b') cd ]
NB. bool IsWindowState(unsigned int flag) // Check if one specific window flag is enabled
IsWindowState =: 0 {:: (raylib,' IsWindowState b i') cd ]
NB. void SetWindowState(unsigned int flags) // Set window configuration state using flags (only PLATFORM_DESKTOP)
SetWindowState =: 0 {:: (raylib,' SetWindowState n i') cd ]
NB. void ClearWindowState(unsigned int flags) // Clear window configuration state flags
ClearWindowState =: 0 {:: (raylib,' ClearWindowState n i') cd ]
NB. void ToggleFullscreen() // Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
ToggleFullscreen =: 0 {:: (raylib,' ToggleFullscreen n') cd ]
NB. void ToggleBorderlessWindowed() // Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
ToggleBorderlessWindowed =: 0 {:: (raylib,' ToggleBorderlessWindowed n') cd ]
NB. void MaximizeWindow() // Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
MaximizeWindow =: 0 {:: (raylib,' MaximizeWindow n') cd ]
NB. void MinimizeWindow() // Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
MinimizeWindow =: 0 {:: (raylib,' MinimizeWindow n') cd ]
NB. void RestoreWindow() // Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
RestoreWindow =: 0 {:: (raylib,' RestoreWindow n') cd ]
NB. void SetWindowIcon(Image image) // Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
NB. void SetWindowIcons(Image * images, int count) // Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
NB. void SetWindowTitle(const char * title) // Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
SetWindowTitle =: 0 {:: (raylib,' SetWindowTitle n *c') cd ]
NB. void SetWindowPosition(int x, int y) // Set window position on screen (only PLATFORM_DESKTOP)
SetWindowPosition =: 0 {:: (raylib,' SetWindowPosition n i i') cd ]
NB. void SetWindowMonitor(int monitor) // Set monitor for the current window
SetWindowMonitor =: 0 {:: (raylib,' SetWindowMonitor n i') cd ]
NB. void SetWindowMinSize(int width, int height) // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
SetWindowMinSize =: 0 {:: (raylib,' SetWindowMinSize n i i') cd ]
NB. void SetWindowMaxSize(int width, int height) // Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
SetWindowMaxSize =: 0 {:: (raylib,' SetWindowMaxSize n i i') cd ]
NB. void SetWindowSize(int width, int height) // Set window dimensions
SetWindowSize =: 0 {:: (raylib,' SetWindowSize n i i') cd ]
NB. void SetWindowOpacity(float opacity) // Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
SetWindowOpacity =: 0 {:: (raylib,' SetWindowOpacity n f') cd ]
NB. void SetWindowFocused() // Set window focused (only PLATFORM_DESKTOP)
SetWindowFocused =: 0 {:: (raylib,' SetWindowFocused n') cd ]
NB. void * GetWindowHandle() // Get native window handle
NB. int GetScreenWidth() // Get current screen width
GetScreenWidth =: 0 {:: (raylib,' GetScreenWidth i') cd ]
NB. int GetScreenHeight() // Get current screen height
GetScreenHeight =: 0 {:: (raylib,' GetScreenHeight i') cd ]
NB. int GetRenderWidth() // Get current render width (it considers HiDPI)
GetRenderWidth =: 0 {:: (raylib,' GetRenderWidth i') cd ]
NB. int GetRenderHeight() // Get current render height (it considers HiDPI)
GetRenderHeight =: 0 {:: (raylib,' GetRenderHeight i') cd ]
NB. int GetMonitorCount() // Get number of connected monitors
GetMonitorCount =: 0 {:: (raylib,' GetMonitorCount i') cd ]
NB. int GetCurrentMonitor() // Get current connected monitor
GetCurrentMonitor =: 0 {:: (raylib,' GetCurrentMonitor i') cd ]
NB. Vector2 GetMonitorPosition(int monitor) // Get specified monitor position
GetMonitorPosition =: 0 {:: (raylib,' GetMonitorPosition d i') cd ]
NB. int GetMonitorWidth(int monitor) // Get specified monitor width (current video mode used by monitor)
GetMonitorWidth =: 0 {:: (raylib,' GetMonitorWidth i i') cd ]
NB. int GetMonitorHeight(int monitor) // Get specified monitor height (current video mode used by monitor)
GetMonitorHeight =: 0 {:: (raylib,' GetMonitorHeight i i') cd ]
NB. int GetMonitorPhysicalWidth(int monitor) // Get specified monitor physical width in millimetres
GetMonitorPhysicalWidth =: 0 {:: (raylib,' GetMonitorPhysicalWidth i i') cd ]
NB. int GetMonitorPhysicalHeight(int monitor) // Get specified monitor physical height in millimetres
GetMonitorPhysicalHeight =: 0 {:: (raylib,' GetMonitorPhysicalHeight i i') cd ]
NB. int GetMonitorRefreshRate(int monitor) // Get specified monitor refresh rate
GetMonitorRefreshRate =: 0 {:: (raylib,' GetMonitorRefreshRate i i') cd ]
NB. Vector2 GetWindowPosition() // Get window position XY on monitor
GetWindowPosition =: 0 {:: (raylib,' GetWindowPosition d') cd ]
NB. Vector2 GetWindowScaleDPI() // Get window scale DPI factor
GetWindowScaleDPI =: 0 {:: (raylib,' GetWindowScaleDPI d') cd ]
NB. const char * GetMonitorName(int monitor) // Get the human-readable, UTF-8 encoded name of the specified monitor
GetMonitorName =: 0 {:: (raylib,' GetMonitorName *c i') cd ]
NB. void SetClipboardText(const char * text) // Set clipboard text content
SetClipboardText =: 0 {:: (raylib,' SetClipboardText n *c') cd ]
NB. const char * GetClipboardText() // Get clipboard text content
GetClipboardText =: 0 {:: (raylib,' GetClipboardText *c') cd ]
NB. void EnableEventWaiting() // Enable waiting for events on EndDrawing(), no automatic event polling
EnableEventWaiting =: 0 {:: (raylib,' EnableEventWaiting n') cd ]
NB. void DisableEventWaiting() // Disable waiting for events on EndDrawing(), automatic events polling
DisableEventWaiting =: 0 {:: (raylib,' DisableEventWaiting n') cd ]
NB. void ShowCursor() // Shows cursor
ShowCursor =: 0 {:: (raylib,' ShowCursor n') cd ]
NB. void HideCursor() // Hides cursor
HideCursor =: 0 {:: (raylib,' HideCursor n') cd ]
NB. bool IsCursorHidden() // Check if cursor is not visible
IsCursorHidden =: 0 {:: (raylib,' IsCursorHidden b') cd ]
NB. void EnableCursor() // Enables cursor (unlock cursor)
EnableCursor =: 0 {:: (raylib,' EnableCursor n') cd ]
NB. void DisableCursor() // Disables cursor (lock cursor)
DisableCursor =: 0 {:: (raylib,' DisableCursor n') cd ]
NB. bool IsCursorOnScreen() // Check if cursor is on the screen
IsCursorOnScreen =: 0 {:: (raylib,' IsCursorOnScreen b') cd ]
NB. void ClearBackground(Color color) // Set background color (framebuffer clear color)
ClearBackground =: 0 {:: (raylib,' ClearBackground n i') cd ]
NB. void BeginDrawing() // Setup canvas (framebuffer) to start drawing
BeginDrawing =: 0 {:: (raylib,' BeginDrawing n') cd ]
NB. void EndDrawing() // End canvas drawing and swap buffers (double buffering)
EndDrawing =: 0 {:: (raylib,' EndDrawing n') cd ]
NB. void BeginMode2D(Camera2D camera) // Begin 2D mode with custom camera (2D)
NB. void EndMode2D() // Ends 2D mode with custom camera
EndMode2D =: 0 {:: (raylib,' EndMode2D n') cd ]
NB. void BeginMode3D(Camera3D camera) // Begin 3D mode with custom camera (3D)
NB. void EndMode3D() // Ends 3D mode and returns to default 2D orthographic mode
EndMode3D =: 0 {:: (raylib,' EndMode3D n') cd ]
NB. void BeginTextureMode(RenderTexture2D target) // Begin drawing to render texture
NB. void EndTextureMode() // Ends drawing to render texture
EndTextureMode =: 0 {:: (raylib,' EndTextureMode n') cd ]
NB. void BeginShaderMode(Shader shader) // Begin custom shader drawing
NB. void EndShaderMode() // End custom shader drawing (use default shader)
EndShaderMode =: 0 {:: (raylib,' EndShaderMode n') cd ]
NB. void BeginBlendMode(int mode) // Begin blending mode (alpha, additive, multiplied, subtract, custom)
BeginBlendMode =: 0 {:: (raylib,' BeginBlendMode n i') cd ]
NB. void EndBlendMode() // End blending mode (reset to default: alpha blending)
EndBlendMode =: 0 {:: (raylib,' EndBlendMode n') cd ]
NB. void BeginScissorMode(int x, int y, int width, int height) // Begin scissor mode (define screen area for following drawing)
BeginScissorMode =: 0 {:: (raylib,' BeginScissorMode n i i i i') cd ]
NB. void EndScissorMode() // End scissor mode
EndScissorMode =: 0 {:: (raylib,' EndScissorMode n') cd ]
NB. void BeginVrStereoMode(VrStereoConfig config) // Begin stereo rendering (requires VR simulator)
NB. void EndVrStereoMode() // End stereo rendering (requires VR simulator)
EndVrStereoMode =: 0 {:: (raylib,' EndVrStereoMode n') cd ]
NB. VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device) // Load VR stereo config for VR simulator device parameters
NB. void UnloadVrStereoConfig(VrStereoConfig config) // Unload VR stereo config
NB. Shader LoadShader(const char * vsFileName, const char * fsFileName) // Load shader from files and bind default locations
NB. Shader LoadShaderFromMemory(const char * vsCode, const char * fsCode) // Load shader from code strings and bind default locations
NB. bool IsShaderReady(Shader shader) // Check if a shader is ready
NB. int GetShaderLocation(Shader shader, const char * uniformName) // Get shader uniform location
NB. int GetShaderLocationAttrib(Shader shader, const char * attribName) // Get shader attribute location
NB. void SetShaderValue(Shader shader, int locIndex, const void * value, int uniformType) // Set shader uniform value
NB. void SetShaderValueV(Shader shader, int locIndex, const void * value, int uniformType, int count) // Set shader uniform value vector
NB. void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat) // Set shader uniform value (matrix 4x4)
NB. void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture) // Set shader uniform value for texture (sampler2d)
NB. void UnloadShader(Shader shader) // Unload shader from GPU memory (VRAM)
NB. Ray GetMouseRay(Vector2 mousePosition, Camera camera) // Get a ray trace from mouse position
NB. Matrix GetCameraMatrix(Camera camera) // Get camera transform matrix (view matrix)
NB. Matrix GetCameraMatrix2D(Camera2D camera) // Get camera 2d transform matrix
NB. Vector2 GetWorldToScreen(Vector3 position, Camera camera) // Get the screen space position for a 3d world space position
NB. Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera) // Get the world space position for a 2d camera screen space position
NB. Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height) // Get size position for a 3d world space position
NB. Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera) // Get the screen space position for a 2d camera world space position
NB. void SetTargetFPS(int fps) // Set target FPS (maximum)
SetTargetFPS =: 0 {:: (raylib,' SetTargetFPS n i') cd ]
NB. float GetFrameTime() // Get time in seconds for last frame drawn (delta time)
GetFrameTime =: 0 {:: (raylib,' GetFrameTime f') cd ]
NB. double GetTime() // Get elapsed time in seconds since InitWindow()
GetTime =: 0 {:: (raylib,' GetTime d') cd ]
NB. int GetFPS() // Get current FPS
GetFPS =: 0 {:: (raylib,' GetFPS i') cd ]
NB. void SwapScreenBuffer() // Swap back buffer with front buffer (screen drawing)
SwapScreenBuffer =: 0 {:: (raylib,' SwapScreenBuffer n') cd ]
NB. void PollInputEvents() // Register all input events
PollInputEvents =: 0 {:: (raylib,' PollInputEvents n') cd ]
NB. void WaitTime(double seconds) // Wait for some time (halt program execution)
WaitTime =: 0 {:: (raylib,' WaitTime n d') cd ]
NB. void SetRandomSeed(unsigned int seed) // Set the seed for the random number generator
SetRandomSeed =: 0 {:: (raylib,' SetRandomSeed n i') cd ]
NB. int GetRandomValue(int min, int max) // Get a random value between min and max (both included)
GetRandomValue =: 0 {:: (raylib,' GetRandomValue i i i') cd ]
NB. int * LoadRandomSequence(unsigned int count, int min, int max) // Load random values sequence, no values repeated
NB. void UnloadRandomSequence(int * sequence) // Unload random values sequence
NB. void TakeScreenshot(const char * fileName) // Takes a screenshot of current screen (filename extension defines format)
TakeScreenshot =: 0 {:: (raylib,' TakeScreenshot n *c') cd ]
NB. void SetConfigFlags(unsigned int flags) // Setup init configuration flags (view FLAGS)
SetConfigFlags =: 0 {:: (raylib,' SetConfigFlags n i') cd ]
NB. void OpenURL(const char * url) // Open URL with default system browser (if available)
OpenURL =: 0 {:: (raylib,' OpenURL n *c') cd ]
NB. void TraceLog(int logLevel, const char * text, ... args) // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
NB. void SetTraceLogLevel(int logLevel) // Set the current threshold (minimum) log level
SetTraceLogLevel =: 0 {:: (raylib,' SetTraceLogLevel n i') cd ]
NB. void * MemAlloc(unsigned int size) // Internal memory allocator
NB. void * MemRealloc(void * ptr, unsigned int size) // Internal memory reallocator
NB. void MemFree(void * ptr) // Internal memory free
NB. void SetTraceLogCallback(TraceLogCallback callback) // Set custom trace log
NB. void SetLoadFileDataCallback(LoadFileDataCallback callback) // Set custom file binary data loader
NB. void SetSaveFileDataCallback(SaveFileDataCallback callback) // Set custom file binary data saver
NB. void SetLoadFileTextCallback(LoadFileTextCallback callback) // Set custom file text data loader
NB. void SetSaveFileTextCallback(SaveFileTextCallback callback) // Set custom file text data saver
NB. unsigned char * LoadFileData(const char * fileName, int * dataSize) // Load file data as byte array (read)
NB. void UnloadFileData(unsigned char * data) // Unload file data allocated by LoadFileData()
NB. bool SaveFileData(const char * fileName, void * data, int dataSize) // Save data to file from byte array (write), returns true on success
NB. bool ExportDataAsCode(const unsigned char * data, int dataSize, const char * fileName) // Export data to code (.h), returns true on success
NB. char * LoadFileText(const char * fileName) // Load text data from file (read), returns a '\0' terminated string
NB. void UnloadFileText(char * text) // Unload file text data allocated by LoadFileText()
NB. bool SaveFileText(const char * fileName, char * text) // Save text data to file (write), string must be '\0' terminated, returns true on success
NB. bool FileExists(const char * fileName) // Check if file exists
FileExists =: 0 {:: (raylib,' FileExists b *c') cd ]
NB. bool DirectoryExists(const char * dirPath) // Check if a directory path exists
DirectoryExists =: 0 {:: (raylib,' DirectoryExists b *c') cd ]
NB. bool IsFileExtension(const char * fileName, const char * ext) // Check file extension (including point: .png, .wav)
IsFileExtension =: 0 {:: (raylib,' IsFileExtension b *c *c') cd ]
NB. int GetFileLength(const char * fileName) // Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
GetFileLength =: 0 {:: (raylib,' GetFileLength i *c') cd ]
NB. const char * GetFileExtension(const char * fileName) // Get pointer to extension for a filename string (includes dot: '.png')
GetFileExtension =: 0 {:: (raylib,' GetFileExtension *c *c') cd ]
NB. const char * GetFileName(const char * filePath) // Get pointer to filename for a path string
GetFileName =: 0 {:: (raylib,' GetFileName *c *c') cd ]
NB. const char * GetFileNameWithoutExt(const char * filePath) // Get filename string without extension (uses static string)
GetFileNameWithoutExt =: 0 {:: (raylib,' GetFileNameWithoutExt *c *c') cd ]
NB. const char * GetDirectoryPath(const char * filePath) // Get full path for a given fileName with path (uses static string)
GetDirectoryPath =: 0 {:: (raylib,' GetDirectoryPath *c *c') cd ]
NB. const char * GetPrevDirectoryPath(const char * dirPath) // Get previous directory path for a given path (uses static string)
GetPrevDirectoryPath =: 0 {:: (raylib,' GetPrevDirectoryPath *c *c') cd ]
NB. const char * GetWorkingDirectory() // Get current working directory (uses static string)
GetWorkingDirectory =: 0 {:: (raylib,' GetWorkingDirectory *c') cd ]
NB. const char * GetApplicationDirectory() // Get the directory of the running application (uses static string)
GetApplicationDirectory =: 0 {:: (raylib,' GetApplicationDirectory *c') cd ]
NB. bool ChangeDirectory(const char * dir) // Change working directory, return true on success
ChangeDirectory =: 0 {:: (raylib,' ChangeDirectory b *c') cd ]
NB. bool IsPathFile(const char * path) // Check if a given path is a file or a directory
IsPathFile =: 0 {:: (raylib,' IsPathFile b *c') cd ]
NB. FilePathList LoadDirectoryFiles(const char * dirPath) // Load directory filepaths
NB. FilePathList LoadDirectoryFilesEx(const char * basePath, const char * filter, bool scanSubdirs) // Load directory filepaths with extension filtering and recursive directory scan
NB. void UnloadDirectoryFiles(FilePathList files) // Unload filepaths
NB. bool IsFileDropped() // Check if a file has been dropped into window
IsFileDropped =: 0 {:: (raylib,' IsFileDropped b') cd ]
NB. FilePathList LoadDroppedFiles() // Load dropped filepaths
NB. void UnloadDroppedFiles(FilePathList files) // Unload dropped filepaths
NB. long GetFileModTime(const char * fileName) // Get file modification time (last write time)
NB. unsigned char * CompressData(const unsigned char * data, int dataSize, int * compDataSize) // Compress data (DEFLATE algorithm), memory must be MemFree()
NB. unsigned char * DecompressData(const unsigned char * compData, int compDataSize, int * dataSize) // Decompress data (DEFLATE algorithm), memory must be MemFree()
NB. char * EncodeDataBase64(const unsigned char * data, int dataSize, int * outputSize) // Encode data to Base64 string, memory must be MemFree()
NB. unsigned char * DecodeDataBase64(const unsigned char * data, int * outputSize) // Decode Base64 string data, memory must be MemFree()
NB. AutomationEventList LoadAutomationEventList(const char * fileName) // Load automation events list from file, NULL for empty list, capacity = MAX_AUTOMATION_EVENTS
NB. void UnloadAutomationEventList(AutomationEventList list) // Unload automation events list from file
NB. bool ExportAutomationEventList(AutomationEventList list, const char * fileName) // Export automation events list as text file
NB. void SetAutomationEventList(AutomationEventList * list) // Set automation event list to record to
NB. void SetAutomationEventBaseFrame(int frame) // Set automation event internal base frame to start recording
SetAutomationEventBaseFrame =: 0 {:: (raylib,' SetAutomationEventBaseFrame n i') cd ]
NB. void StartAutomationEventRecording() // Start recording automation events (AutomationEventList must be set)
StartAutomationEventRecording =: 0 {:: (raylib,' StartAutomationEventRecording n') cd ]
NB. void StopAutomationEventRecording() // Stop recording automation events
StopAutomationEventRecording =: 0 {:: (raylib,' StopAutomationEventRecording n') cd ]
NB. void PlayAutomationEvent(AutomationEvent event) // Play a recorded automation event
NB. bool IsKeyPressed(int key) // Check if a key has been pressed once
IsKeyPressed =: 0 {:: (raylib,' IsKeyPressed b i') cd ]
NB. bool IsKeyPressedRepeat(int key) // Check if a key has been pressed again (Only PLATFORM_DESKTOP)
IsKeyPressedRepeat =: 0 {:: (raylib,' IsKeyPressedRepeat b i') cd ]
NB. bool IsKeyDown(int key) // Check if a key is being pressed
IsKeyDown =: 0 {:: (raylib,' IsKeyDown b i') cd ]
NB. bool IsKeyReleased(int key) // Check if a key has been released once
IsKeyReleased =: 0 {:: (raylib,' IsKeyReleased b i') cd ]
NB. bool IsKeyUp(int key) // Check if a key is NOT being pressed
IsKeyUp =: 0 {:: (raylib,' IsKeyUp b i') cd ]
NB. int GetKeyPressed() // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
GetKeyPressed =: 0 {:: (raylib,' GetKeyPressed i') cd ]
NB. int GetCharPressed() // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
GetCharPressed =: 0 {:: (raylib,' GetCharPressed i') cd ]
NB. void SetExitKey(int key) // Set a custom key to exit program (default is ESC)
SetExitKey =: 0 {:: (raylib,' SetExitKey n i') cd ]
NB. bool IsGamepadAvailable(int gamepad) // Check if a gamepad is available
IsGamepadAvailable =: 0 {:: (raylib,' IsGamepadAvailable b i') cd ]
NB. const char * GetGamepadName(int gamepad) // Get gamepad internal name id
GetGamepadName =: 0 {:: (raylib,' GetGamepadName *c i') cd ]
NB. bool IsGamepadButtonPressed(int gamepad, int button) // Check if a gamepad button has been pressed once
IsGamepadButtonPressed =: 0 {:: (raylib,' IsGamepadButtonPressed b i i') cd ]
NB. bool IsGamepadButtonDown(int gamepad, int button) // Check if a gamepad button is being pressed
IsGamepadButtonDown =: 0 {:: (raylib,' IsGamepadButtonDown b i i') cd ]
NB. bool IsGamepadButtonReleased(int gamepad, int button) // Check if a gamepad button has been released once
IsGamepadButtonReleased =: 0 {:: (raylib,' IsGamepadButtonReleased b i i') cd ]
NB. bool IsGamepadButtonUp(int gamepad, int button) // Check if a gamepad button is NOT being pressed
IsGamepadButtonUp =: 0 {:: (raylib,' IsGamepadButtonUp b i i') cd ]
NB. int GetGamepadButtonPressed() // Get the last gamepad button pressed
GetGamepadButtonPressed =: 0 {:: (raylib,' GetGamepadButtonPressed i') cd ]
NB. int GetGamepadAxisCount(int gamepad) // Get gamepad axis count for a gamepad
GetGamepadAxisCount =: 0 {:: (raylib,' GetGamepadAxisCount i i') cd ]
NB. float GetGamepadAxisMovement(int gamepad, int axis) // Get axis movement value for a gamepad axis
GetGamepadAxisMovement =: 0 {:: (raylib,' GetGamepadAxisMovement f i i') cd ]
NB. int SetGamepadMappings(const char * mappings) // Set internal gamepad mappings (SDL_GameControllerDB)
SetGamepadMappings =: 0 {:: (raylib,' SetGamepadMappings i *c') cd ]
NB. bool IsMouseButtonPressed(int button) // Check if a mouse button has been pressed once
IsMouseButtonPressed =: 0 {:: (raylib,' IsMouseButtonPressed b i') cd ]
NB. bool IsMouseButtonDown(int button) // Check if a mouse button is being pressed
IsMouseButtonDown =: 0 {:: (raylib,' IsMouseButtonDown b i') cd ]
NB. bool IsMouseButtonReleased(int button) // Check if a mouse button has been released once
IsMouseButtonReleased =: 0 {:: (raylib,' IsMouseButtonReleased b i') cd ]
NB. bool IsMouseButtonUp(int button) // Check if a mouse button is NOT being pressed
IsMouseButtonUp =: 0 {:: (raylib,' IsMouseButtonUp b i') cd ]
NB. int GetMouseX() // Get mouse position X
GetMouseX =: 0 {:: (raylib,' GetMouseX i') cd ]
NB. int GetMouseY() // Get mouse position Y
GetMouseY =: 0 {:: (raylib,' GetMouseY i') cd ]
NB. Vector2 GetMousePosition() // Get mouse position XY
GetMousePosition =: 0 {:: (raylib,' GetMousePosition d') cd ]
NB. Vector2 GetMouseDelta() // Get mouse delta between frames
GetMouseDelta =: 0 {:: (raylib,' GetMouseDelta d') cd ]
NB. void SetMousePosition(int x, int y) // Set mouse position XY
SetMousePosition =: 0 {:: (raylib,' SetMousePosition n i i') cd ]
NB. void SetMouseOffset(int offsetX, int offsetY) // Set mouse offset
SetMouseOffset =: 0 {:: (raylib,' SetMouseOffset n i i') cd ]
NB. void SetMouseScale(float scaleX, float scaleY) // Set mouse scaling
SetMouseScale =: 0 {:: (raylib,' SetMouseScale n f f') cd ]
NB. float GetMouseWheelMove() // Get mouse wheel movement for X or Y, whichever is larger
GetMouseWheelMove =: 0 {:: (raylib,' GetMouseWheelMove f') cd ]
NB. Vector2 GetMouseWheelMoveV() // Get mouse wheel movement for both X and Y
GetMouseWheelMoveV =: 0 {:: (raylib,' GetMouseWheelMoveV d') cd ]
NB. void SetMouseCursor(int cursor) // Set mouse cursor
SetMouseCursor =: 0 {:: (raylib,' SetMouseCursor n i') cd ]
NB. int GetTouchX() // Get touch position X for touch point 0 (relative to screen size)
GetTouchX =: 0 {:: (raylib,' GetTouchX i') cd ]
NB. int GetTouchY() // Get touch position Y for touch point 0 (relative to screen size)
GetTouchY =: 0 {:: (raylib,' GetTouchY i') cd ]
NB. Vector2 GetTouchPosition(int index) // Get touch position XY for a touch point index (relative to screen size)
GetTouchPosition =: 0 {:: (raylib,' GetTouchPosition d i') cd ]
NB. int GetTouchPointId(int index) // Get touch point identifier for given index
GetTouchPointId =: 0 {:: (raylib,' GetTouchPointId i i') cd ]
NB. int GetTouchPointCount() // Get number of touch points
GetTouchPointCount =: 0 {:: (raylib,' GetTouchPointCount i') cd ]
NB. void SetGesturesEnabled(unsigned int flags) // Enable a set of gestures using flags
SetGesturesEnabled =: 0 {:: (raylib,' SetGesturesEnabled n i') cd ]
NB. bool IsGestureDetected(unsigned int gesture) // Check if a gesture have been detected
IsGestureDetected =: 0 {:: (raylib,' IsGestureDetected b i') cd ]
NB. int GetGestureDetected() // Get latest detected gesture
GetGestureDetected =: 0 {:: (raylib,' GetGestureDetected i') cd ]
NB. float GetGestureHoldDuration() // Get gesture hold time in milliseconds
GetGestureHoldDuration =: 0 {:: (raylib,' GetGestureHoldDuration f') cd ]
NB. Vector2 GetGestureDragVector() // Get gesture drag vector
GetGestureDragVector =: 0 {:: (raylib,' GetGestureDragVector d') cd ]
NB. float GetGestureDragAngle() // Get gesture drag angle
GetGestureDragAngle =: 0 {:: (raylib,' GetGestureDragAngle f') cd ]
NB. Vector2 GetGesturePinchVector() // Get gesture pinch delta
GetGesturePinchVector =: 0 {:: (raylib,' GetGesturePinchVector d') cd ]
NB. float GetGesturePinchAngle() // Get gesture pinch angle
GetGesturePinchAngle =: 0 {:: (raylib,' GetGesturePinchAngle f') cd ]
NB. void UpdateCamera(Camera * camera, int mode) // Update camera position for selected mode
NB. void UpdateCameraPro(Camera * camera, Vector3 movement, Vector3 rotation, float zoom) // Update camera movement/rotation
NB. void SetShapesTexture(Texture2D texture, Rectangle source) // Set texture and rectangle to be used on shapes drawing
NB. Texture2D GetShapesTexture() // Get texture that is used for shapes drawing
NB. Rectangle GetShapesTextureRectangle() // Get texture source rectangle that is used for shapes drawing
NB. void DrawPixel(int posX, int posY, Color color) // Draw a pixel
DrawPixel =: 0 {:: (raylib,' DrawPixel n i i i') cd ]
NB. void DrawPixelV(Vector2 position, Color color) // Draw a pixel (Vector version)
DrawPixelV =: 0 {:: (raylib,' DrawPixelV n d i') cd ]
NB. void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color) // Draw a line
DrawLine =: 0 {:: (raylib,' DrawLine n i i i i i') cd ]
NB. void DrawLineV(Vector2 startPos, Vector2 endPos, Color color) // Draw a line (using gl lines)
DrawLineV =: 0 {:: (raylib,' DrawLineV n d d i') cd ]
NB. void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color) // Draw a line (using triangles/quads)
DrawLineEx =: 0 {:: (raylib,' DrawLineEx n d d f i') cd ]
NB. void DrawLineStrip(Vector2 * points, int pointCount, Color color) // Draw lines sequence (using gl lines)
NB. void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color) // Draw line segment cubic-bezier in-out interpolation
DrawLineBezier =: 0 {:: (raylib,' DrawLineBezier n d d f i') cd ]
NB. void DrawCircle(int centerX, int centerY, float radius, Color color) // Draw a color-filled circle
DrawCircle =: 0 {:: (raylib,' DrawCircle n i i f i') cd ]
NB. void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color) // Draw a piece of a circle
DrawCircleSector =: 0 {:: (raylib,' DrawCircleSector n d f f f i i') cd ]
NB. void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color) // Draw circle sector outline
DrawCircleSectorLines =: 0 {:: (raylib,' DrawCircleSectorLines n d f f f i i') cd ]
NB. void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2) // Draw a gradient-filled circle
DrawCircleGradient =: 0 {:: (raylib,' DrawCircleGradient n i i f i i') cd ]
NB. void DrawCircleV(Vector2 center, float radius, Color color) // Draw a color-filled circle (Vector version)
DrawCircleV =: 0 {:: (raylib,' DrawCircleV n d f i') cd ]
NB. void DrawCircleLines(int centerX, int centerY, float radius, Color color) // Draw circle outline
DrawCircleLines =: 0 {:: (raylib,' DrawCircleLines n i i f i') cd ]
NB. void DrawCircleLinesV(Vector2 center, float radius, Color color) // Draw circle outline (Vector version)
DrawCircleLinesV =: 0 {:: (raylib,' DrawCircleLinesV n d f i') cd ]
NB. void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color) // Draw ellipse
DrawEllipse =: 0 {:: (raylib,' DrawEllipse n i i f f i') cd ]
NB. void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color) // Draw ellipse outline
DrawEllipseLines =: 0 {:: (raylib,' DrawEllipseLines n i i f f i') cd ]
NB. void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color) // Draw ring
DrawRing =: 0 {:: (raylib,' DrawRing n d f f f f i i') cd ]
NB. void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color) // Draw ring outline
DrawRingLines =: 0 {:: (raylib,' DrawRingLines n d f f f f i i') cd ]
NB. void DrawRectangle(int posX, int posY, int width, int height, Color color) // Draw a color-filled rectangle
DrawRectangle =: 0 {:: (raylib,' DrawRectangle n i i i i i') cd ]
NB. void DrawRectangleV(Vector2 position, Vector2 size, Color color) // Draw a color-filled rectangle (Vector version)
DrawRectangleV =: 0 {:: (raylib,' DrawRectangleV n d d i') cd ]
NB. void DrawRectangleRec(Rectangle rec, Color color) // Draw a color-filled rectangle
NB. void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color) // Draw a color-filled rectangle with pro parameters
NB. void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2) // Draw a vertical-gradient-filled rectangle
DrawRectangleGradientV =: 0 {:: (raylib,' DrawRectangleGradientV n i i i i i i') cd ]
NB. void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2) // Draw a horizontal-gradient-filled rectangle
DrawRectangleGradientH =: 0 {:: (raylib,' DrawRectangleGradientH n i i i i i i') cd ]
NB. void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4) // Draw a gradient-filled rectangle with custom vertex colors
NB. void DrawRectangleLines(int posX, int posY, int width, int height, Color color) // Draw rectangle outline
DrawRectangleLines =: 0 {:: (raylib,' DrawRectangleLines n i i i i i') cd ]
NB. void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color) // Draw rectangle outline with extended parameters
NB. void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color) // Draw rectangle with rounded edges
NB. void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color) // Draw rectangle with rounded edges outline
NB. void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color) // Draw a color-filled triangle (vertex in counter-clockwise order!)
DrawTriangle =: 0 {:: (raylib,' DrawTriangle n d d d i') cd ]
NB. void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color) // Draw triangle outline (vertex in counter-clockwise order!)
DrawTriangleLines =: 0 {:: (raylib,' DrawTriangleLines n d d d i') cd ]
NB. void DrawTriangleFan(Vector2 * points, int pointCount, Color color) // Draw a triangle fan defined by points (first vertex is the center)
NB. void DrawTriangleStrip(Vector2 * points, int pointCount, Color color) // Draw a triangle strip defined by points
NB. void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color) // Draw a regular polygon (Vector version)
DrawPoly =: 0 {:: (raylib,' DrawPoly n d i f f i') cd ]
NB. void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color) // Draw a polygon outline of n sides
DrawPolyLines =: 0 {:: (raylib,' DrawPolyLines n d i f f i') cd ]
NB. void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color) // Draw a polygon outline of n sides with extended parameters
DrawPolyLinesEx =: 0 {:: (raylib,' DrawPolyLinesEx n d i f f f i') cd ]
NB. void DrawSplineLinear(Vector2 * points, int pointCount, float thick, Color color) // Draw spline: Linear, minimum 2 points
NB. void DrawSplineBasis(Vector2 * points, int pointCount, float thick, Color color) // Draw spline: B-Spline, minimum 4 points
NB. void DrawSplineCatmullRom(Vector2 * points, int pointCount, float thick, Color color) // Draw spline: Catmull-Rom, minimum 4 points
NB. void DrawSplineBezierQuadratic(Vector2 * points, int pointCount, float thick, Color color) // Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
NB. void DrawSplineBezierCubic(Vector2 * points, int pointCount, float thick, Color color) // Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
NB. void DrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color) // Draw spline segment: Linear, 2 points
DrawSplineSegmentLinear =: 0 {:: (raylib,' DrawSplineSegmentLinear n d d f i') cd ]
NB. void DrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color) // Draw spline segment: B-Spline, 4 points
DrawSplineSegmentBasis =: 0 {:: (raylib,' DrawSplineSegmentBasis n d d d d f i') cd ]
NB. void DrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color) // Draw spline segment: Catmull-Rom, 4 points
DrawSplineSegmentCatmullRom =: 0 {:: (raylib,' DrawSplineSegmentCatmullRom n d d d d f i') cd ]
NB. void DrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color) // Draw spline segment: Quadratic Bezier, 2 points, 1 control point
DrawSplineSegmentBezierQuadratic =: 0 {:: (raylib,' DrawSplineSegmentBezierQuadratic n d d d f i') cd ]
NB. void DrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color) // Draw spline segment: Cubic Bezier, 2 points, 2 control points
DrawSplineSegmentBezierCubic =: 0 {:: (raylib,' DrawSplineSegmentBezierCubic n d d d d f i') cd ]
NB. Vector2 GetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t) // Get (evaluate) spline point: Linear
GetSplinePointLinear =: 0 {:: (raylib,' GetSplinePointLinear d d d f') cd ]
NB. Vector2 GetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t) // Get (evaluate) spline point: B-Spline
GetSplinePointBasis =: 0 {:: (raylib,' GetSplinePointBasis d d d d d f') cd ]
NB. Vector2 GetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t) // Get (evaluate) spline point: Catmull-Rom
GetSplinePointCatmullRom =: 0 {:: (raylib,' GetSplinePointCatmullRom d d d d d f') cd ]
NB. Vector2 GetSplinePointBezierQuad(Vector2 p1, Vector2 c2, Vector2 p3, float t) // Get (evaluate) spline point: Quadratic Bezier
GetSplinePointBezierQuad =: 0 {:: (raylib,' GetSplinePointBezierQuad d d d d f') cd ]
NB. Vector2 GetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t) // Get (evaluate) spline point: Cubic Bezier
GetSplinePointBezierCubic =: 0 {:: (raylib,' GetSplinePointBezierCubic d d d d d f') cd ]
NB. bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2) // Check collision between two rectangles
NB. bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2) // Check collision between two circles
CheckCollisionCircles =: 0 {:: (raylib,' CheckCollisionCircles b d f d f') cd ]
NB. bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec) // Check collision between circle and rectangle
NB. bool CheckCollisionPointRec(Vector2 point, Rectangle rec) // Check if point is inside rectangle
NB. bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius) // Check if point is inside circle
CheckCollisionPointCircle =: 0 {:: (raylib,' CheckCollisionPointCircle b d d f') cd ]
NB. bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3) // Check if point is inside a triangle
CheckCollisionPointTriangle =: 0 {:: (raylib,' CheckCollisionPointTriangle b d d d d') cd ]
NB. bool CheckCollisionPointPoly(Vector2 point, Vector2 * points, int pointCount) // Check if point is within a polygon described by array of vertices
NB. bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 * collisionPoint) // Check the collision between two lines defined by two points each, returns collision point by reference
NB. bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold) // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
CheckCollisionPointLine =: 0 {:: (raylib,' CheckCollisionPointLine b d d d i') cd ]
NB. Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2) // Get collision rectangle for two rectangles collision
NB. Image LoadImage(const char * fileName) // Load image from file into CPU memory (RAM)
NB. Image LoadImageRaw(const char * fileName, int width, int height, int format, int headerSize) // Load image from RAW file data
NB. Image LoadImageSvg(const char * fileNameOrString, int width, int height) // Load image from SVG file data or string with specified size
NB. Image LoadImageAnim(const char * fileName, int * frames) // Load image sequence from file (frames appended to image.data)
NB. Image LoadImageAnimFromMemory(const char * fileType, const unsigned char * fileData, int dataSize, int * frames) // Load image sequence from memory buffer
NB. Image LoadImageFromMemory(const char * fileType, const unsigned char * fileData, int dataSize) // Load image from memory buffer, fileType refers to extension: i.e. '.png'
NB. Image LoadImageFromTexture(Texture2D texture) // Load image from GPU texture data
NB. Image LoadImageFromScreen() // Load image from screen buffer and (screenshot)
NB. bool IsImageReady(Image image) // Check if an image is ready
NB. void UnloadImage(Image image) // Unload image from CPU memory (RAM)
NB. bool ExportImage(Image image, const char * fileName) // Export image data to file, returns true on success
NB. unsigned char * ExportImageToMemory(Image image, const char * fileType, int * fileSize) // Export image to memory buffer
NB. bool ExportImageAsCode(Image image, const char * fileName) // Export image as code file defining an array of bytes, returns true on success
NB. Image GenImageColor(int width, int height, Color color) // Generate image: plain color
NB. Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end) // Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
NB. Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer) // Generate image: radial gradient
NB. Image GenImageGradientSquare(int width, int height, float density, Color inner, Color outer) // Generate image: square gradient
NB. Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2) // Generate image: checked
NB. Image GenImageWhiteNoise(int width, int height, float factor) // Generate image: white noise
NB. Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale) // Generate image: perlin noise
NB. Image GenImageCellular(int width, int height, int tileSize) // Generate image: cellular algorithm, bigger tileSize means bigger cells
NB. Image GenImageText(int width, int height, const char * text) // Generate image: grayscale image from text data
NB. Image ImageCopy(Image image) // Create an image duplicate (useful for transformations)
NB. Image ImageFromImage(Image image, Rectangle rec) // Create an image from another image piece
NB. Image ImageText(const char * text, int fontSize, Color color) // Create an image from text (default font)
NB. Image ImageTextEx(Font font, const char * text, float fontSize, float spacing, Color tint) // Create an image from text (custom sprite font)
NB. void ImageFormat(Image * image, int newFormat) // Convert image data to desired format
NB. void ImageToPOT(Image * image, Color fill) // Convert image to POT (power-of-two)
NB. void ImageCrop(Image * image, Rectangle crop) // Crop an image to a defined rectangle
NB. void ImageAlphaCrop(Image * image, float threshold) // Crop image depending on alpha value
NB. void ImageAlphaClear(Image * image, Color color, float threshold) // Clear alpha channel to desired color
NB. void ImageAlphaMask(Image * image, Image alphaMask) // Apply alpha mask to image
NB. void ImageAlphaPremultiply(Image * image) // Premultiply alpha channel
NB. void ImageBlurGaussian(Image * image, int blurSize) // Apply Gaussian blur using a box blur approximation
NB. void ImageKernelConvolution(Image * image, float* kernel, int kernelSize) // Apply Custom Square image convolution kernel
NB. void ImageResize(Image * image, int newWidth, int newHeight) // Resize image (Bicubic scaling algorithm)
NB. void ImageResizeNN(Image * image, int newWidth, int newHeight) // Resize image (Nearest-Neighbor scaling algorithm)
NB. void ImageResizeCanvas(Image * image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill) // Resize canvas and fill with color
NB. void ImageMipmaps(Image * image) // Compute all mipmap levels for a provided image
NB. void ImageDither(Image * image, int rBpp, int gBpp, int bBpp, int aBpp) // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
NB. void ImageFlipVertical(Image * image) // Flip image vertically
NB. void ImageFlipHorizontal(Image * image) // Flip image horizontally
NB. void ImageRotate(Image * image, int degrees) // Rotate image by input angle in degrees (-359 to 359)
NB. void ImageRotateCW(Image * image) // Rotate image clockwise 90deg
NB. void ImageRotateCCW(Image * image) // Rotate image counter-clockwise 90deg
NB. void ImageColorTint(Image * image, Color color) // Modify image color: tint
NB. void ImageColorInvert(Image * image) // Modify image color: invert
NB. void ImageColorGrayscale(Image * image) // Modify image color: grayscale
NB. void ImageColorContrast(Image * image, float contrast) // Modify image color: contrast (-100 to 100)
NB. void ImageColorBrightness(Image * image, int brightness) // Modify image color: brightness (-255 to 255)
NB. void ImageColorReplace(Image * image, Color color, Color replace) // Modify image color: replace color
NB. Color * LoadImageColors(Image image) // Load color data from image as a Color array (RGBA - 32bit)
NB. Color * LoadImagePalette(Image image, int maxPaletteSize, int * colorCount) // Load colors palette from image as a Color array (RGBA - 32bit)
NB. void UnloadImageColors(Color * colors) // Unload color data loaded with LoadImageColors()
NB. void UnloadImagePalette(Color * colors) // Unload colors palette loaded with LoadImagePalette()
NB. Rectangle GetImageAlphaBorder(Image image, float threshold) // Get image alpha border rectangle
NB. Color GetImageColor(Image image, int x, int y) // Get image pixel color at (x, y) position
NB. void ImageClearBackground(Image * dst, Color color) // Clear image background with given color
NB. void ImageDrawPixel(Image * dst, int posX, int posY, Color color) // Draw pixel within an image
NB. void ImageDrawPixelV(Image * dst, Vector2 position, Color color) // Draw pixel within an image (Vector version)
NB. void ImageDrawLine(Image * dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color) // Draw line within an image
NB. void ImageDrawLineV(Image * dst, Vector2 start, Vector2 end, Color color) // Draw line within an image (Vector version)
NB. void ImageDrawCircle(Image * dst, int centerX, int centerY, int radius, Color color) // Draw a filled circle within an image
NB. void ImageDrawCircleV(Image * dst, Vector2 center, int radius, Color color) // Draw a filled circle within an image (Vector version)
NB. void ImageDrawCircleLines(Image * dst, int centerX, int centerY, int radius, Color color) // Draw circle outline within an image
NB. void ImageDrawCircleLinesV(Image * dst, Vector2 center, int radius, Color color) // Draw circle outline within an image (Vector version)
NB. void ImageDrawRectangle(Image * dst, int posX, int posY, int width, int height, Color color) // Draw rectangle within an image
NB. void ImageDrawRectangleV(Image * dst, Vector2 position, Vector2 size, Color color) // Draw rectangle within an image (Vector version)
NB. void ImageDrawRectangleRec(Image * dst, Rectangle rec, Color color) // Draw rectangle within an image
NB. void ImageDrawRectangleLines(Image * dst, Rectangle rec, int thick, Color color) // Draw rectangle lines within an image
NB. void ImageDraw(Image * dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint) // Draw a source image within a destination image (tint applied to source)
NB. void ImageDrawText(Image * dst, const char * text, int posX, int posY, int fontSize, Color color) // Draw text (using default font) within an image (destination)
NB. void ImageDrawTextEx(Image * dst, Font font, const char * text, Vector2 position, float fontSize, float spacing, Color tint) // Draw text (custom sprite font) within an image (destination)
NB. Texture2D LoadTexture(const char * fileName) // Load texture from file into GPU memory (VRAM)
NB. Texture2D LoadTextureFromImage(Image image) // Load texture from image data
NB. TextureCubemap LoadTextureCubemap(Image image, int layout) // Load cubemap from image, multiple image cubemap layouts supported
NB. RenderTexture2D LoadRenderTexture(int width, int height) // Load texture for rendering (framebuffer)
NB. bool IsTextureReady(Texture2D texture) // Check if a texture is ready
NB. void UnloadTexture(Texture2D texture) // Unload texture from GPU memory (VRAM)
NB. bool IsRenderTextureReady(RenderTexture2D target) // Check if a render texture is ready
NB. void UnloadRenderTexture(RenderTexture2D target) // Unload render texture from GPU memory (VRAM)
NB. void UpdateTexture(Texture2D texture, const void * pixels) // Update GPU texture with new data
NB. void UpdateTextureRec(Texture2D texture, Rectangle rec, const void * pixels) // Update GPU texture rectangle with new data
NB. void GenTextureMipmaps(Texture2D * texture) // Generate GPU mipmaps for a texture
NB. void SetTextureFilter(Texture2D texture, int filter) // Set texture scaling filter mode
NB. void SetTextureWrap(Texture2D texture, int wrap) // Set texture wrapping mode
NB. void DrawTexture(Texture2D texture, int posX, int posY, Color tint) // Draw a Texture2D
NB. void DrawTextureV(Texture2D texture, Vector2 position, Color tint) // Draw a Texture2D with position defined as Vector2
NB. void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint) // Draw a Texture2D with extended parameters
NB. void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint) // Draw a part of a texture defined by a rectangle
NB. void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint) // Draw a part of a texture defined by a rectangle with 'pro' parameters
NB. void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint) // Draws a texture (or part of it) that stretches or shrinks nicely
NB. Color Fade(Color color, float alpha) // Get color with alpha applied, alpha goes from 0.0f to 1.0f
Fade =: 0 {:: (raylib,' Fade i i f') cd ]
NB. int ColorToInt(Color color) // Get hexadecimal value for a Color
ColorToInt =: 0 {:: (raylib,' ColorToInt i i') cd ]
NB. Vector4 ColorNormalize(Color color) // Get Color normalized as float [0..1]
NB. Color ColorFromNormalized(Vector4 normalized) // Get Color from normalized values [0..1]
NB. Vector3 ColorToHSV(Color color) // Get HSV values for a Color, hue [0..360], saturation/value [0..1]
NB. Color ColorFromHSV(float hue, float saturation, float value) // Get a Color from HSV values, hue [0..360], saturation/value [0..1]
ColorFromHSV =: 0 {:: (raylib,' ColorFromHSV i f f f') cd ]
NB. Color ColorTint(Color color, Color tint) // Get color multiplied with another color
ColorTint =: 0 {:: (raylib,' ColorTint i i i') cd ]
NB. Color ColorBrightness(Color color, float factor) // Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
ColorBrightness =: 0 {:: (raylib,' ColorBrightness i i f') cd ]
NB. Color ColorContrast(Color color, float contrast) // Get color with contrast correction, contrast values between -1.0f and 1.0f
ColorContrast =: 0 {:: (raylib,' ColorContrast i i f') cd ]
NB. Color ColorAlpha(Color color, float alpha) // Get color with alpha applied, alpha goes from 0.0f to 1.0f
ColorAlpha =: 0 {:: (raylib,' ColorAlpha i i f') cd ]
NB. Color ColorAlphaBlend(Color dst, Color src, Color tint) // Get src alpha-blended into dst color with tint
ColorAlphaBlend =: 0 {:: (raylib,' ColorAlphaBlend i i i i') cd ]
NB. Color GetColor(unsigned int hexValue) // Get Color structure from hexadecimal value
GetColor =: 0 {:: (raylib,' GetColor i i') cd ]
NB. Color GetPixelColor(void * srcPtr, int format) // Get Color from a source pixel pointer of certain format
NB. void SetPixelColor(void * dstPtr, Color color, int format) // Set color formatted into destination pixel pointer
NB. int GetPixelDataSize(int width, int height, int format) // Get pixel data size in bytes for certain format
GetPixelDataSize =: 0 {:: (raylib,' GetPixelDataSize i i i i') cd ]
NB. Font GetFontDefault() // Get the default Font
NB. Font LoadFont(const char * fileName) // Load font from file into GPU memory (VRAM)
NB. Font LoadFontEx(const char * fileName, int fontSize, int * codepoints, int codepointCount) // Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character setFont
NB. Font LoadFontFromImage(Image image, Color key, int firstChar) // Load font from Image (XNA style)
NB. Font LoadFontFromMemory(const char * fileType, const unsigned char * fileData, int dataSize, int fontSize, int * codepoints, int codepointCount) // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
NB. bool IsFontReady(Font font) // Check if a font is ready
NB. GlyphInfo * LoadFontData(const unsigned char * fileData, int dataSize, int fontSize, int * codepoints, int codepointCount, int type) // Load font data for further use
NB. Image GenImageFontAtlas(const GlyphInfo * glyphs, Rectangle ** glyphRecs, int glyphCount, int fontSize, int padding, int packMethod) // Generate image font atlas using chars info
NB. void UnloadFontData(GlyphInfo * glyphs, int glyphCount) // Unload font chars info data (RAM)
NB. void UnloadFont(Font font) // Unload font from GPU memory (VRAM)
NB. bool ExportFontAsCode(Font font, const char * fileName) // Export font as code file, returns true on success
NB. void DrawFPS(int posX, int posY) // Draw current FPS
DrawFPS =: 0 {:: (raylib,' DrawFPS n i i') cd ]
NB. void DrawText(const char * text, int posX, int posY, int fontSize, Color color) // Draw text (using default font)
DrawText =: 0 {:: (raylib,' DrawText n *c i i i i') cd ]
NB. void DrawTextEx(Font font, const char * text, Vector2 position, float fontSize, float spacing, Color tint) // Draw text using font and additional parameters
NB. void DrawTextPro(Font font, const char * text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint) // Draw text using Font and pro parameters (rotation)
NB. void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint) // Draw one character (codepoint)
NB. void DrawTextCodepoints(Font font, const int * codepoints, int codepointCount, Vector2 position, float fontSize, float spacing, Color tint) // Draw multiple character (codepoint)
NB. void SetTextLineSpacing(int spacing) // Set vertical line spacing when drawing with line-breaks
SetTextLineSpacing =: 0 {:: (raylib,' SetTextLineSpacing n i') cd ]
NB. int MeasureText(const char * text, int fontSize) // Measure string width for default font
MeasureText =: 0 {:: (raylib,' MeasureText i *c i') cd ]
NB. Vector2 MeasureTextEx(Font font, const char * text, float fontSize, float spacing) // Measure string size for Font
NB. int GetGlyphIndex(Font font, int codepoint) // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
NB. GlyphInfo GetGlyphInfo(Font font, int codepoint) // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
NB. Rectangle GetGlyphAtlasRec(Font font, int codepoint) // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
NB. char * LoadUTF8(const int * codepoints, int length) // Load UTF-8 text encoded from codepoints array
NB. void UnloadUTF8(char * text) // Unload UTF-8 text encoded from codepoints array
NB. int * LoadCodepoints(const char * text, int * count) // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
NB. void UnloadCodepoints(int * codepoints) // Unload codepoints data from memory
NB. int GetCodepointCount(const char * text) // Get total number of codepoints in a UTF-8 encoded string
GetCodepointCount =: 0 {:: (raylib,' GetCodepointCount i *c') cd ]
NB. int GetCodepoint(const char * text, int * codepointSize) // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
NB. int GetCodepointNext(const char * text, int * codepointSize) // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
NB. int GetCodepointPrevious(const char * text, int * codepointSize) // Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
NB. const char * CodepointToUTF8(int codepoint, int * utf8Size) // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
NB. int TextCopy(char * dst, const char * src) // Copy one string to another, returns bytes copied
NB. bool TextIsEqual(const char * text1, const char * text2) // Check if two text string are equal
TextIsEqual =: 0 {:: (raylib,' TextIsEqual b *c *c') cd ]
NB. unsigned int TextLength(const char * text) // Get text length, checks for '\0' ending
TextLength =: 0 {:: (raylib,' TextLength i *c') cd ]
NB. const char * TextFormat(const char * text, ... args) // Text formatting with variables (sprintf() style)
NB. const char * TextSubtext(const char * text, int position, int length) // Get a piece of a text string
TextSubtext =: 0 {:: (raylib,' TextSubtext *c *c i i') cd ]
NB. char * TextReplace(const char * text, const char * replace, const char * by) // Replace text string (WARNING: memory must be freed!)
NB. char * TextInsert(const char * text, const char * insert, int position) // Insert text in a position (WARNING: memory must be freed!)
NB. const char * TextJoin(const char ** textList, int count, const char * delimiter) // Join text strings with delimiter
NB. const char ** TextSplit(const char * text, char delimiter, int * count) // Split text into multiple strings
NB. void TextAppend(char * text, const char * append, int * position) // Append text at specific position and move cursor!
NB. int TextFindIndex(const char * text, const char * find) // Find first text occurrence within a string
TextFindIndex =: 0 {:: (raylib,' TextFindIndex i *c *c') cd ]
NB. const char * TextToUpper(const char * text) // Get upper case version of provided string
TextToUpper =: 0 {:: (raylib,' TextToUpper *c *c') cd ]
NB. const char * TextToLower(const char * text) // Get lower case version of provided string
TextToLower =: 0 {:: (raylib,' TextToLower *c *c') cd ]
NB. const char * TextToPascal(const char * text) // Get Pascal case notation version of provided string
TextToPascal =: 0 {:: (raylib,' TextToPascal *c *c') cd ]
NB. int TextToInteger(const char * text) // Get integer value from text (negative values not supported)
TextToInteger =: 0 {:: (raylib,' TextToInteger i *c') cd ]
NB. float TextToFloat(const char * text) // Get float value from text (negative values not supported)
TextToFloat =: 0 {:: (raylib,' TextToFloat f *c') cd ]
NB. void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color) // Draw a line in 3D world space
NB. void DrawPoint3D(Vector3 position, Color color) // Draw a point in 3D space, actually a small line
NB. void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color) // Draw a circle in 3D world space
NB. void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color) // Draw a color-filled triangle (vertex in counter-clockwise order!)
NB. void DrawTriangleStrip3D(Vector3 * points, int pointCount, Color color) // Draw a triangle strip defined by points
NB. void DrawCube(Vector3 position, float width, float height, float length, Color color) // Draw cube
NB. void DrawCubeV(Vector3 position, Vector3 size, Color color) // Draw cube (Vector version)
NB. void DrawCubeWires(Vector3 position, float width, float height, float length, Color color) // Draw cube wires
NB. void DrawCubeWiresV(Vector3 position, Vector3 size, Color color) // Draw cube wires (Vector version)
NB. void DrawSphere(Vector3 centerPos, float radius, Color color) // Draw sphere
NB. void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color) // Draw sphere with extended parameters
NB. void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color) // Draw sphere wires
NB. void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color) // Draw a cylinder/cone
NB. void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color) // Draw a cylinder with base at startPos and top at endPos
NB. void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color) // Draw a cylinder/cone wires
NB. void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color) // Draw a cylinder wires with base at startPos and top at endPos
NB. void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color) // Draw a capsule with the center of its sphere caps at startPos and endPos
NB. void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color) // Draw capsule wireframe with the center of its sphere caps at startPos and endPos
NB. void DrawPlane(Vector3 centerPos, Vector2 size, Color color) // Draw a plane XZ
NB. void DrawRay(Ray ray, Color color) // Draw a ray line
NB. void DrawGrid(int slices, float spacing) // Draw a grid (centered at (0, 0, 0))
DrawGrid =: 0 {:: (raylib,' DrawGrid n i f') cd ]
NB. Model LoadModel(const char * fileName) // Load model from files (meshes and materials)
NB. Model LoadModelFromMesh(Mesh mesh) // Load model from generated mesh (default material)
NB. bool IsModelReady(Model model) // Check if a model is ready
NB. void UnloadModel(Model model) // Unload model (including meshes) from memory (RAM and/or VRAM)
NB. BoundingBox GetModelBoundingBox(Model model) // Compute model bounding box limits (considers all meshes)
NB. void DrawModel(Model model, Vector3 position, float scale, Color tint) // Draw a model (with texture if set)
NB. void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint) // Draw a model with extended parameters
NB. void DrawModelWires(Model model, Vector3 position, float scale, Color tint) // Draw a model wires (with texture if set)
NB. void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint) // Draw a model wires (with texture if set) with extended parameters
NB. void DrawBoundingBox(BoundingBox box, Color color) // Draw bounding box (wires)
NB. void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint) // Draw a billboard texture
NB. void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint) // Draw a billboard texture defined by source
NB. void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint) // Draw a billboard texture defined by source and rotation
NB. void UploadMesh(Mesh * mesh, bool dynamic) // Upload mesh vertex data in GPU and provide VAO/VBO ids
NB. void UpdateMeshBuffer(Mesh mesh, int index, const void * data, int dataSize, int offset) // Update mesh vertex data in GPU for a specific buffer index
NB. void UnloadMesh(Mesh mesh) // Unload mesh data from CPU and GPU
NB. void DrawMesh(Mesh mesh, Material material, Matrix transform) // Draw a 3d mesh with material and transform
NB. void DrawMeshInstanced(Mesh mesh, Material material, const Matrix * transforms, int instances) // Draw multiple mesh instances with material and different transforms
NB. BoundingBox GetMeshBoundingBox(Mesh mesh) // Compute mesh bounding box limits
NB. void GenMeshTangents(Mesh * mesh) // Compute mesh tangents
NB. bool ExportMesh(Mesh mesh, const char * fileName) // Export mesh data to file, returns true on success
NB. bool ExportMeshAsCode(Mesh mesh, const char * fileName) // Export mesh as code file (.h) defining multiple arrays of vertex attributes
NB. Mesh GenMeshPoly(int sides, float radius) // Generate polygonal mesh
NB. Mesh GenMeshPlane(float width, float length, int resX, int resZ) // Generate plane mesh (with subdivisions)
NB. Mesh GenMeshCube(float width, float height, float length) // Generate cuboid mesh
NB. Mesh GenMeshSphere(float radius, int rings, int slices) // Generate sphere mesh (standard sphere)
NB. Mesh GenMeshHemiSphere(float radius, int rings, int slices) // Generate half-sphere mesh (no bottom cap)
NB. Mesh GenMeshCylinder(float radius, float height, int slices) // Generate cylinder mesh
NB. Mesh GenMeshCone(float radius, float height, int slices) // Generate cone/pyramid mesh
NB. Mesh GenMeshTorus(float radius, float size, int radSeg, int sides) // Generate torus mesh
NB. Mesh GenMeshKnot(float radius, float size, int radSeg, int sides) // Generate trefoil knot mesh
NB. Mesh GenMeshHeightmap(Image heightmap, Vector3 size) // Generate heightmap mesh from image data
NB. Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize) // Generate cubes-based map mesh from image data
NB. Material * LoadMaterials(const char * fileName, int * materialCount) // Load materials from model file
NB. Material LoadMaterialDefault() // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
NB. bool IsMaterialReady(Material material) // Check if a material is ready
NB. void UnloadMaterial(Material material) // Unload material from GPU memory (VRAM)
NB. void SetMaterialTexture(Material * material, int mapType, Texture2D texture) // Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
NB. void SetModelMeshMaterial(Model * model, int meshId, int materialId) // Set material for a mesh
NB. ModelAnimation * LoadModelAnimations(const char * fileName, int * animCount) // Load model animations from file
NB. void UpdateModelAnimation(Model model, ModelAnimation anim, int frame) // Update model animation pose
NB. void UnloadModelAnimation(ModelAnimation anim) // Unload animation data
NB. void UnloadModelAnimations(ModelAnimation * animations, int animCount) // Unload animation array data
NB. bool IsModelAnimationValid(Model model, ModelAnimation anim) // Check model animation skeleton match
NB. bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2) // Check collision between two spheres
NB. bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2) // Check collision between two bounding boxes
NB. bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius) // Check collision between box and sphere
NB. RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius) // Get collision info between ray and sphere
NB. RayCollision GetRayCollisionBox(Ray ray, BoundingBox box) // Get collision info between ray and box
NB. RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform) // Get collision info between ray and mesh
NB. RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3) // Get collision info between ray and triangle
NB. RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4) // Get collision info between ray and quad
NB. void InitAudioDevice() // Initialize audio device and context
InitAudioDevice =: 0 {:: (raylib,' InitAudioDevice n') cd ]
NB. void CloseAudioDevice() // Close the audio device and context
CloseAudioDevice =: 0 {:: (raylib,' CloseAudioDevice n') cd ]
NB. bool IsAudioDeviceReady() // Check if audio device has been initialized successfully
IsAudioDeviceReady =: 0 {:: (raylib,' IsAudioDeviceReady b') cd ]
NB. void SetMasterVolume(float volume) // Set master volume (listener)
SetMasterVolume =: 0 {:: (raylib,' SetMasterVolume n f') cd ]
NB. float GetMasterVolume() // Get master volume (listener)
GetMasterVolume =: 0 {:: (raylib,' GetMasterVolume f') cd ]
NB. Wave LoadWave(const char * fileName) // Load wave data from file
NB. Wave LoadWaveFromMemory(const char * fileType, const unsigned char * fileData, int dataSize) // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
NB. bool IsWaveReady(Wave wave) // Checks if wave data is ready
NB. Sound LoadSound(const char * fileName) // Load sound from file
NB. Sound LoadSoundFromWave(Wave wave) // Load sound from wave data
NB. Sound LoadSoundAlias(Sound source) // Create a new sound that shares the same sample data as the source sound, does not own the sound data
NB. bool IsSoundReady(Sound sound) // Checks if a sound is ready
NB. void UpdateSound(Sound sound, const void * data, int sampleCount) // Update sound buffer with new data
NB. void UnloadWave(Wave wave) // Unload wave data
NB. void UnloadSound(Sound sound) // Unload sound
NB. void UnloadSoundAlias(Sound alias) // Unload a sound alias (does not deallocate sample data)
NB. bool ExportWave(Wave wave, const char * fileName) // Export wave data to file, returns true on success
NB. bool ExportWaveAsCode(Wave wave, const char * fileName) // Export wave sample data to code (.h), returns true on success
NB. void PlaySound(Sound sound) // Play a sound
NB. void StopSound(Sound sound) // Stop playing a sound
NB. void PauseSound(Sound sound) // Pause a sound
NB. void ResumeSound(Sound sound) // Resume a paused sound
NB. bool IsSoundPlaying(Sound sound) // Check if a sound is currently playing
NB. void SetSoundVolume(Sound sound, float volume) // Set volume for a sound (1.0 is max level)
NB. void SetSoundPitch(Sound sound, float pitch) // Set pitch for a sound (1.0 is base level)
NB. void SetSoundPan(Sound sound, float pan) // Set pan for a sound (0.5 is center)
NB. Wave WaveCopy(Wave wave) // Copy a wave to a new wave
NB. void WaveCrop(Wave * wave, int initSample, int finalSample) // Crop a wave to defined samples range
NB. void WaveFormat(Wave * wave, int sampleRate, int sampleSize, int channels) // Convert wave data to desired format
NB. float * LoadWaveSamples(Wave wave) // Load samples data from wave as a 32bit float data array
NB. void UnloadWaveSamples(float * samples) // Unload samples data loaded with LoadWaveSamples()
NB. Music LoadMusicStream(const char * fileName) // Load music stream from file
NB. Music LoadMusicStreamFromMemory(const char * fileType, const unsigned char * data, int dataSize) // Load music stream from data
NB. bool IsMusicReady(Music music) // Checks if a music stream is ready
NB. void UnloadMusicStream(Music music) // Unload music stream
NB. void PlayMusicStream(Music music) // Start music playing
NB. bool IsMusicStreamPlaying(Music music) // Check if music is playing
NB. void UpdateMusicStream(Music music) // Updates buffers for music streaming
NB. void StopMusicStream(Music music) // Stop music playing
NB. void PauseMusicStream(Music music) // Pause music playing
NB. void ResumeMusicStream(Music music) // Resume playing paused music
NB. void SeekMusicStream(Music music, float position) // Seek music to a position (in seconds)
NB. void SetMusicVolume(Music music, float volume) // Set volume for music (1.0 is max level)
NB. void SetMusicPitch(Music music, float pitch) // Set pitch for a music (1.0 is base level)
NB. void SetMusicPan(Music music, float pan) // Set pan for a music (0.5 is center)
NB. float GetMusicTimeLength(Music music) // Get music time length (in seconds)
NB. float GetMusicTimePlayed(Music music) // Get current music time played (in seconds)
NB. AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels) // Load audio stream (to stream raw audio pcm data)
NB. bool IsAudioStreamReady(AudioStream stream) // Checks if an audio stream is ready
NB. void UnloadAudioStream(AudioStream stream) // Unload audio stream and free memory
NB. void UpdateAudioStream(AudioStream stream, const void * data, int frameCount) // Update audio stream buffers with data
NB. bool IsAudioStreamProcessed(AudioStream stream) // Check if any audio stream buffers requires refill
NB. void PlayAudioStream(AudioStream stream) // Play audio stream
NB. void PauseAudioStream(AudioStream stream) // Pause audio stream
NB. void ResumeAudioStream(AudioStream stream) // Resume audio stream
NB. bool IsAudioStreamPlaying(AudioStream stream) // Check if audio stream is playing
NB. void StopAudioStream(AudioStream stream) // Stop audio stream
NB. void SetAudioStreamVolume(AudioStream stream, float volume) // Set volume for audio stream (1.0 is max level)
NB. void SetAudioStreamPitch(AudioStream stream, float pitch) // Set pitch for audio stream (1.0 is base level)
NB. void SetAudioStreamPan(AudioStream stream, float pan) // Set pan for audio stream (0.5 is centered)
NB. void SetAudioStreamBufferSizeDefault(int size) // Default size for new audio streams
SetAudioStreamBufferSizeDefault =: 0 {:: (raylib,' SetAudioStreamBufferSizeDefault n i') cd ]
NB. void SetAudioStreamCallback(AudioStream stream, AudioCallback callback) // Audio thread callback to request new data
NB. void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor) // Attach audio stream processor to stream, receives the samples as <float>s
NB. void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor) // Detach audio stream processor from stream
NB. void AttachAudioMixedProcessor(AudioCallback processor) // Attach audio stream processor to the entire audio pipeline, receives the samples as <float>s
NB. void DetachAudioMixedProcessor(AudioCallback processor) // Detach audio stream processor from the entire audio pipeline
