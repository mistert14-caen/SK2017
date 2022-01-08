require 'sketchup.rb'

module MSketchyPhysics3

if RUBY_PLATFORM =~ /mswin|mingw/i

  VK_LBUTTON    = 0x01  # Left mouse button
  VK_RBUTTON    = 0x02  # Right mouse button
  VK_CANCEL     = 0x03  # Control-break processing
  VK_MBUTTON    = 0x04  # Middle mouse button on a three-button mouse
  VK_XBUTTON1   = 0x05  # X1 mouse button
  VK_XBUTTON2   = 0x06  # X1 mouse button
  VK_BACK       = 0x08  # BACKSPACE key
  VK_TAB        = 0x09  # TAB key
  VK_CLEAR      = 0x0C  # CLEAR key
  VK_RETURN     = 0x0D  # ENTER key
  VK_SHIFT      = 0x10  # SHIFT key
  VK_CONTROL    = 0x11  # CTRL key
  VK_LOPTION    = 0x11  # CTRL key - Option key on Mac Support.
  VK_MENU       = 0x12  # ALT key
  VK_PAUSE      = 0x13  # PAUSE key
  VK_CAPSLOCK   = 0x14  # CAPS LOCK key
  VK_ESCAPE     = 0x1B  # ESC key
  VK_SPACE      = 0x20  # SPACEBAR
  VK_PRIOR      = 0x21  # PAGE UP key
  VK_NEXT       = 0x22  # PAGE DOWN key
  VK_END        = 0x23  # END key
  VK_HOME       = 0x24  # HOME key
  VK_LEFT       = 0x25  # LEFT ARROW key
  VK_UP         = 0x26  # UP ARROW key
  VK_RIGHT      = 0x27  # RIGHT ARROW key
  VK_DOWN       = 0x28  # DOWN ARROW key
  VK_SELECT     = 0x29  # SELECT key
  VK_PRINT      = 0x2A  # Print key
  VK_EXECUTE    = 0x2B  # EXECUTE key
  VK_SNAPSHOT   = 0x2C  # PRINT SCREEN key
  VK_INSERT     = 0x2D  # INS key
  VK_DELETE     = 0x2E  # DEL key
  VK_HELP       = 0x2F  # HELP key
  VK_0          = 0x30
  VK_1          = 0x31
  VK_2          = 0x32
  VK_3          = 0x33
  VK_4          = 0x34
  VK_5          = 0x35
  VK_6          = 0x36
  VK_7          = 0x37
  VK_8          = 0x38
  VK_9          = 0x39
  VK_A          = 0x41
  VK_B          = 0x42
  VK_C          = 0x43
  VK_D          = 0x44
  VK_E          = 0x45
  VK_F          = 0x46
  VK_G          = 0x47
  VK_H          = 0x48
  VK_I          = 0x49
  VK_J          = 0x4A
  VK_K          = 0x4B
  VK_L          = 0x4C
  VK_M          = 0x4D
  VK_N          = 0x4E
  VK_O          = 0x4F
  VK_P          = 0x50
  VK_Q          = 0x51
  VK_R          = 0x52
  VK_S          = 0x53
  VK_T          = 0x54
  VK_U          = 0x55
  VK_V          = 0x56
  VK_W          = 0x57
  VK_X          = 0x58
  VK_Y          = 0x59
  VK_Z          = 0x5A
  VK_LWIN       = 0x5B  # Left Windows key on a Microsoft Natural Keyboard
  VK_RWIN       = 0x5C  # Right Windows key on a Microsoft Natural Keyboard
  VK_APPS       = 0x5D  # Applications key on a Microsoft Natural Keyboard
  VK_SLEEP      = 0x5F  # Computer sleep key
  VK_NUMPAD0    = 0x60  # Numeric keypad 0 key
  VK_NUMPAD1    = 0x61  # Numeric keypad 1 key
  VK_NUMPAD2    = 0x62  # Numeric keypad 2 key
  VK_NUMPAD3    = 0x63  # Numeric keypad 3 key
  VK_NUMPAD4    = 0x64  # Numeric keypad 4 key
  VK_NUMPAD5    = 0x65  # Numeric keypad 5 key
  VK_NUMPAD6    = 0x66  # Numeric keypad 6 key
  VK_NUMPAD7    = 0x67  # Numeric keypad 7 key
  VK_NUMPAD8    = 0x68  # Numeric keypad 8 key
  VK_NUMPAD9    = 0x69  # Numeric keypad 9 key
  VK_MULTIPLY   = 0x6A  # Multiply key
  VK_ADD        = 0x6B  # Add key
  VK_SEPARATOR  = 0x6C  # Separator key
  VK_SUBTRACT   = 0x6D  # Subtract key
  VK_DECIMAL    = 0x6E  # Decimal key
  VK_DIVIDE     = 0x6F  # Divide key
  VK_F1         = 0x70  # F1 key
  VK_F2         = 0x71  # F2 key
  VK_F3         = 0x72  # F3 key
  VK_F4         = 0x73  # F4 key
  VK_F5         = 0x74  # F5 key
  VK_F6         = 0x75  # F6 key
  VK_F7         = 0x76  # F7 key
  VK_F8         = 0x77  # F8 key
  VK_F9         = 0x78  # F9 key
  VK_F10        = 0x79  # F10 key
  VK_F11        = 0x7A  # F11 key
  VK_F12        = 0x7B  # F12 key
  VK_F13        = 0x7C  # F13 key
  VK_F14        = 0x7D  # F14 key
  VK_F15        = 0x7E  # F15 key
  VK_F16        = 0x7F  # F16 key
  VK_F17        = 0x80  # F17 key
  VK_F18        = 0x81  # F18 key
  VK_F19        = 0x82  # F19 key
  VK_F20        = 0x83  # F20 key
  VK_F21        = 0x84  # F21 key
  VK_F22        = 0x85  # F22 key
  VK_F23        = 0x86  # F23 key
  VK_F24        = 0x87  # F24 key
  VK_NUMLOCK    = 0x90  # NUM LOCK key
  VK_SCROLL     = 0x91  # SCROLL LOCK key
  VK_LSHIFT     = 0xA0  # Left SHIFT
  VK_RSHIFT     = 0xA1  # Right SHIFT
  VK_LCONTROL   = 0xA2  # Left CTRL
  VK_RCONTROL   = 0xA3  # Right CTRL
  VK_LMENU      = 0xA4  # Left ALT
  VK_RMENU      = 0xA5  # Right ALT
  VK_ATTN       = 0xF6  # ATTN key
  VK_CRSEL      = 0xF7  # CRSEL key
  VK_EXSEL      = 0xF8  # EXSEL key
  VK_EREOF      = 0xF9  # Erase EOF key
  VK_PLAY       = 0xFA  # PLAY key
  VK_ZOOM       = 0xFB  # ZOOM key
  VK_PA1        = 0xFD  # PA1 key
  VK_OEM_CLEAR  = 0xFE  # CLEAR key

  # @see http://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx
  KEY_NAMES = {
    :lbutton        => 0x01,
    :rbutton        => 0x02,
    :cancel         => 0x03,
    :mbutton        => 0x04,
    :xbutton1       => 0x05,
    :xbutton2       => 0x06,
    :backspace      => 0x08,
    :back           => 0x08,
    :tab            => 0x09,
    :clear          => 0x0C,
    :return         => 0x0D,
    :enter          => 0x0D,
    :shift          => 0x10,
    :control        => 0x11,
    :ctrl           => 0x11,
    :menu           => 0x12,
    :alt            => 0x12,
    :pause          => 0x13,
    :break          => 0x13,
    :capital        => 0x14,
    :capslock       => 0x14,
    :escape         => 0x1B,
    :esc            => 0x1B,
    :space          => 0x20,
    :spacebar       => 0x20,
    :' '            => 0x20,
    :prior          => 0x21,
    :pageup         => 0x21,
    :next           => 0x22,
    :pagedown       => 0x22,
    :end            => 0x23,
    :home           => 0x24,
    :left           => 0x25,
    :←              => 0x25,
    :up             => 0x26,
    :↑              => 0x26,
    :right          => 0x27,
    :→              => 0x27,
    :down           => 0x28,
    :↓              => 0x28,
    :select         => 0x29,
    :print          => 0x2A,
    :execute        => 0x2B,
    :snapshot       => 0x2C,
    :printscreen    => 0x2C,
    :prtscn         => 0x2C,
    :insert         => 0x2D,
    :delete         => 0x2E,
    :help           => 0x2F,
    :'0'            => 0x30,
    :'1'            => 0x31,
    :'2'            => 0x32,
    :'3'            => 0x33,
    :'4'            => 0x34,
    :'5'            => 0x35,
    :'6'            => 0x36,
    :'7'            => 0x37,
    :'8'            => 0x38,
    :'9'            => 0x39,
    :a              => 0x41,
    :b              => 0x42,
    :c              => 0x43,
    :d              => 0x44,
    :e              => 0x45,
    :f              => 0x46,
    :g              => 0x47,
    :h              => 0x48,
    :i              => 0x49,
    :j              => 0x4A,
    :k              => 0x4B,
    :l              => 0x4C,
    :m              => 0x4D,
    :n              => 0x4E,
    :o              => 0x4F,
    :p              => 0x50,
    :q              => 0x51,
    :r              => 0x52,
    :s              => 0x53,
    :t              => 0x54,
    :u              => 0x55,
    :v              => 0x56,
    :w              => 0x57,
    :x              => 0x58,
    :y              => 0x59,
    :z              => 0x5A,
    :lwin           => 0x5B,
    :rwin           => 0x5C,
    :apps           => 0x5D,
    :sleep          => 0x5F,
    :numpad0        => 0x60,
    :numpad1        => 0x61,
    :numpad2        => 0x62,
    :numpad3        => 0x63,
    :numpad4        => 0x64,
    :numpad5        => 0x65,
    :numpad6        => 0x66,
    :numpad7        => 0x67,
    :numpad8        => 0x68,
    :numpad9        => 0x69,
    :multiply       => 0x6A,
    :*              => 0x6A,
    :add            => 0x6B,
    :+              => 0x6B,
    :separator      => 0x6C,
    :subtract       => 0x6D,
    :-              => 0x6D,
    :decimal        => 0x6E,
    :divide         => 0x6F,
    :/              => 0x6F,
    :f1             => 0x70,
    :f2             => 0x71,
    :f3             => 0x72,
    :f4             => 0x73,
    :f5             => 0x74,
    :f6             => 0x75,
    :f7             => 0x76,
    :f8             => 0x77,
    :f9             => 0x78,
    :f10            => 0x79,
    :f11            => 0x7A,
    :f12            => 0x7B,
    :f13            => 0x7C,
    :f14            => 0x7D,
    :f15            => 0x7E,
    :f16            => 0x7F,
    :f17            => 0x80,
    :f18            => 0x81,
    :f19            => 0x82,
    :f20            => 0x83,
    :f21            => 0x84,
    :f22            => 0x85,
    :f23            => 0x86,
    :f24            => 0x87,
    :numlock        => 0x90,
    :scroll         => 0x91,
    :scrolllock     => 0x91,
    :lshift         => 0xA0,
    :rshift         => 0xA1,
    :lcontrol       => 0xA2,
    :lctrl          => 0xA2,
    :rcontrol       => 0xA3,
    :rctrl          => 0xA3,
    :lmenu          => 0xA4,
    :lalt           => 0xA4,
    :rmenu          => 0xA5,
    :ralt           => 0xA5,
    :browserback    => 0xA6,
    :browserforward => 0xA7,
    :browserrefresh => 0xA8,
    :browserstop    => 0xA9,
    :browsersearch  => 0xAA,
    :browserfavorites   => 0xAB,
    :browserhome    => 0xAC,
    :volumemute     => 0xAD,
    :mute           => 0xAD,
    :volumedown     => 0xAE,
    :volumeup       => 0xAF,
    :medianexttrack => 0xB0,
    :medianext      => 0xB0,
    :mediaprevtrack => 0xB1,
    :mediaprev      => 0xB1,
    :mediastop      => 0xB2,
    :mediaplaypause => 0xB3,
    :mediatoggleplay    => 0xB3,
    :launchmail     => 0xB4,
    :mail           => 0xB4,
    :launchmediaselect  => 0xB5,
    :mediaselect    => 0xB5,
    :launchapp1     => 0xB6,
    :app1           => 0xB6,
    :launchapp2     => 0xB7,
    :app2           => 0xB7,
    :oem1           => 0xBA, # US keyboard : ;
    :colon          => 0xBA,
    :semicolon      => 0xBA,
    :':'            => 0xBA,
    :';'            => 0xBA,
    :oem_plus       => 0xBB, # US keyboard + =
    :plus           => 0xBB,
    :equals         => 0xBB,
    :'='            => 0xBB,
    :oemcomma       => 0xBC, # US keyboard < ,
    :comma          => 0xBC,
    :','            => 0xBC,
    :<              => 0xBC,
    :oemminus       => 0xBD, # US keyboard _ -
    :minus          => 0xBD,
    :dash           => 0xBD,
    :oemperiod      => 0xBE, # US keyboard > .
    :period         => 0xBE,
    :'.'            => 0xBE,
    :>              => 0xBE,
    :oem2           => 0xBF, # US keyboard ? /
    :questionmark   => 0xBF,
    :slash          => 0xBF,
    :'?'            => 0xBF,
    :oem3           => 0xC0, # US keyboard ~ `
    :tilde          => 0xC0,
    :~              => 0xC0,
    :oem4           => 0xDB, # US keyboard { [
    :openbrace      => 0xDB,
    :openbracket    => 0xDB,
    :'{'            => 0xDB,
    :'['            => 0xDB,
    :oem5           => 0xDC, # US keyboard | \
    :verticalbar    => 0xDC,
    :backslash      => 0xDC,
    :|              => 0xDC,
    :"\\"           => 0xDC,
    :oem6           => 0xDD, # US keyboard } ]
    :closebrace     => 0xDD,
    :closebracket   => 0xDD,
    :'}'            => 0xDD,
    :']'            => 0xDD,
    :oem7           => 0xDE, # US keyboard " '
    :quote          => 0xDE,
    :"\'"           => 0xDE,
    :"\""           => 0xDE,
    :oem8           => 0xDF,
    :attn           => 0xF6,
    :crsel          => 0xF7,
    :exsel          => 0xF8,
    :ereof          => 0xF9,
    :play           => 0xFA,
    :zoom           => 0xFB,
    :pa1            => 0xFD,
    :oemclear       => 0xFE
  }

else # Must be using a Mac on OS X, so here are the codes.

  VK_A = 0x00
  VK_B = 0x0B
  VK_C = 0x08
  VK_D = 0x02
  VK_E = 0x0E
  VK_F = 0x03
  VK_G = 0x05
  VK_H = 0x04
  VK_I = 0x22
  VK_J = 0x26
  VK_K = 0x28
  VK_L = 0x25
  VK_M = 0x2E
  VK_N = 0x2D
  VK_O = 0x1F
  VK_P = 0x23
  VK_Q = 0x0C
  VK_R = 0x0F
  VK_S = 0x01
  VK_T = 0x11
  VK_U = 0x20
  VK_V = 0x09
  VK_W = 0x0D
  VK_X = 0x07
  VK_Y = 0x10
  VK_Z = 0x06

  VK_1 = 0x12
  VK_2 = 0x13
  VK_3 = 0x14
  VK_4 = 0x15
  VK_5 = 0x17
  VK_6 = 0x16
  VK_7 = 0x1A
  VK_8 = 0x1C
  VK_9 = 0x19
  VK_0 = 0x1D

  VK_EQUALS = 0x18
  VK_MINUS = 0x1B
  VK_CLOSEBRACE = 0x1E
  VK_OPENBRACE = 0x21
  VK_ENTER = 0X24
  VK_QUOTE = 0x27
  VK_SEMICOLON = 0x29
  VK_BACKSLASH = 0x2A
  VK_COMMA = 0x2B
  VK_SLASH = 0x2C
  VK_PERIOD = 0x2F
  VK_TAB = 0x30
  VK_SPACE = 0x31
  VK_BACKQUOTE = 0x32
  VK_BACKSPACE = 0x33
  VK_ENTER = 0x34
  VK_RETURN = 0x34
  VK_ESC = 0x35
  VK_RCOMMAND = 0x36
  VK_LCOMMAND = 0x37
  VK_LSHIFT = 0x38
  VK_SHIFT = 0x38
  VK_CAPSLOCK = 0x39
  VK_LOPTION = 0x3A
  VK_LCONTROL = 0x3B
  VK_CONTROL = 0x3B
  VK_RSHIFT = 0x3C
  VK_ROPTION = 0x3D
  VK_RCONTROL = 0x3E
  VK_PERIOD_PAD = 0x41
  VK_ASTERISK_PAD = VK_MULTIPLY = 0x43
  VK_PLUS_PAD = VK_ADD = 0x45
  VK_NUMLOCK = 0x47
  VK_SLASH_PAD = VK_SEPARATOR =0x4B
  VK_ENTER_PAD = 0x4C
  VK_MINUS_PAD = VK_SUBTRACT = 0x4E
  VK_EQUALS_PAD = 0x51

  VK_0_PAD = 0x52
  VK_1_PAD = 0x53
  VK_2_PAD = 0x54
  VK_3_PAD = 0x55
  VK_4_PAD = 0x56
  VK_5_PAD = 0x57
  VK_6_PAD = 0x58
  VK_7_PAD = 0x59
  VK_8_PAD = 0x5B
  VK_9_PAD = 0x5C

  VK_NUMPAD0=VK_0_PAD   #Numeric keypad 0 key
  VK_NUMPAD1=VK_1_PAD   #Numeric keypad 1 key
  VK_NUMPAD2=VK_2_PAD   #Numeric keypad 2 key
  VK_NUMPAD3=VK_3_PAD   #Numeric keypad 3 key
  VK_NUMPAD4=VK_4_PAD   #Numeric keypad 4 key
  VK_NUMPAD5=VK_5_PAD   #Numeric keypad 5 key
  VK_NUMPAD6=VK_6_PAD   #Numeric keypad 6 key
  VK_NUMPAD7=VK_7_PAD   #Numeric keypad 7 key
  VK_NUMPAD8=VK_8_PAD   #Numeric keypad 8 key
  VK_NUMPAD9=VK_9_PAD   #Numeric keypad 9 key


  VK_F1 = 0x7A
  VK_F2 = 0x78
  VK_F3 = 0x63
  VK_F4 = 0x76
  VK_F5 = 0x60
  VK_F6 = 0x61
  VK_F7 = 0x62
  VK_F8 = 0x64
  VK_F9 = 0x65
  VK_F10 = 0x6D
  VK_F11 = 0x67
  VK_F12 = 0x6F

  VK_PRTSCR = 0x69
  VK_SCRLOCK = 0x6B
  VK_PAUSE = 0x71
  VK_INSERT = 0x72
  VK_HOME = 0x73
  VK_PGUP = 0x74
  VK_DEL = 0x75
  VK_END = 0x77
  VK_PGDN = 0x79
  VK_LEFT = 0x7B
  VK_RIGHT = 0x7C
  VK_DOWN = 0x7D
  VK_UP = 0x7E

  # @see http://stackoverflow.com/questions/3202629/where-can-i-find-a-list-of-mac-virtual-key-codes
  KEY_NAMES = {
    :a              => 0x00,
    :b              => 0x0B,
    :c              => 0x08,
    :d              => 0x02,
    :e              => 0x0E,
    :f              => 0x03,
    :g              => 0x05,
    :h              => 0x04,
    :i              => 0x22,
    :j              => 0x26,
    :k              => 0x28,
    :l              => 0x25,
    :m              => 0x2E,
    :n              => 0x2D,
    :o              => 0x1F,
    :p              => 0x23,
    :q              => 0x0C,
    :r              => 0x0F,
    :s              => 0x01,
    :t              => 0x11,
    :u              => 0x20,
    :v              => 0x09,
    :w              => 0x0D,
    :x              => 0x07,
    :y              => 0x10,
    :z              => 0x06,
    :'0'            => 0x1D,
    :'1'            => 0x12,
    :'2'            => 0x13,
    :'3'            => 0x14,
    :'4'            => 0x15,
    :'5'            => 0x17,
    :'6'            => 0x16,
    :'7'            => 0x1A,
    :'8'            => 0x1C,
    :'9'            => 0x19,
    :numpad0        => 0x52,
    :numpad1        => 0x53,
    :numpad2        => 0x54,
    :numpad3        => 0x55,
    :numpad4        => 0x56,
    :numpad5        => 0x57,
    :numpad6        => 0x58,
    :numpad7        => 0x59,
    :numpad8        => 0x5B,
    :numpad9        => 0x5C,
    :multiply       => 0x43,
    :*              => 0x43,
    :divide         => 0x4B,
    :/              => 0x4B,
    :add            => 0x45,
    :+              => 0x45,
    :subtract       => 0x4E,
    :-              => 0x4E,
    :decimal        => 0x41,
    :f1             => 0x7A,
    :f2             => 0x78,
    :f3             => 0x63,
    :f4             => 0x76,
    :f5             => 0x60,
    :f6             => 0x61,
    :f7             => 0x62,
    :f8             => 0x64,
    :f9             => 0x65,
    :f10            => 0x6D,
    :f11            => 0x67,
    :f12            => 0x6F,
    :left           => 0x7B,
    :←              => 0x7B,
    :up             => 0x7E,
    :↑              => 0x7E,
    :right          => 0x7C,
    :→              => 0x7C,
    :down           => 0x7D,
    :↓              => 0x7D,
    :space          => 0x31,
    :' '            => 0x31,
    :tab            => 0x30,
    :capital        => 0x39,
    :capslock       => 0x39,
    :return         => 0x34,
    :enter          => 0x34,
    :escape         => 0x35,
    :esc            => 0x35,
    :shift          => 0x38,
    :control        => 0x3B,
    :ctrl           => 0x3B,
    :lshift         => 0x38,
    :rshift         => 0x3C,
    :lcontrol       => 0x3B,
    :lctrl          => 0x3B,
    :rcontrol       => 0x3E,
    :rctrl          => 0x3E,
    :option         => 0x3A,
    :loption        => 0x3A,
    :roption        => 0x3D,
    :home           => 0x73,
    :end            => 0x77,
    :insert         => 0x72,
    :delete         => 0x75,
    :pageup         => 0x74,
    :prior          => 0x74,
    :pagedown       => 0x79,
    :next           => 0x79,
    :snapshot       => 0x69,
    :printscreen    => 0x69,
    :prtscn         => 0x69,
    :scroll         => 0x6B,
    :scrolllock     => 0x6B,
    :pause          => 0x71,
    :break          => 0x71,
  }

end
end # module MSketchyPhysics3