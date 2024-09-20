    Gui, Main: +AlwaysOnTop
    Gui, Main: Add, Text,, Reminder that F1 starts, and F5 stops
    Gui, Main: Add, Text,, Pump/melon=295 Wheat/potato/carrot=175
    Gui, Main: Add, Text,, Cocoa=225 Cactus=464 Shroom=232 -16/5.5
    Gui, Main: Add, Text,, Sugar cane=328 135/0
    Gui, Main: Add, Button, gShowScreen1, Farming
    Gui, Main: Add, Button, gButton1, Cobblestone
    Gui, Main: Add, Button, gButton2, Don't press
    Gui, Main: Add, Button, gButton3, Fishing
    Gui, Main: Add, Button, gButton4, Melody
    Gui, Main: Add, Button, gButton50, Experiment
    Gui, Main: Add, Button, gButton51, Exit

    Gui, Main: Add, Button, x150 y106 gButton5, Pump/melon 3 plot
    Gui, Main: Add, Button, gButton6, Wheat/potato/carrot 3 plot
    Gui, Main: Add, Button, gButton7, Cocoa 3 plot
    Gui, Main: Add, Button, gButton8, Cactus 3 plot
    Gui, Main: Add, Button, gButton9, Mushroom 3 plot
    Gui, Main: Add, Button, gButton10, Sugar 3 plot
    Gui, Main: Add, Button, gButton51, Exit
    Gui, Main: Show, w350 h400, Main Screen

    ; Create the first secondary GUI window
    Gui, Screen1: +AlwaysOnTop
    Gui, Screen1: Add, Text,, Pump/melon=295 Wheat/potato/carrot=175
    Gui, Screen1: Add, Text,, Cocoa=225 Cactus=464 Shroom=232 -16/5.5
    Gui, Screen1: Add, Text,, Sugar cane=328 135/0
    Gui, Screen1: Add, Button, gShowMain, Back to Main
    Gui, Screen1: Add, Button, gAction1, Pump/melon 2 plot
    Gui, Screen1: Add, Button, gAction2, Pump/melon 3 plot
    Gui, Screen1: Add, Button, gAction3, Wheat/potato/carrot 2 plot
    Gui, Screen1: Add, Button, gAction4, Wheat/potato/carrot 3 plot
    Gui, Screen1: Add, Button, gAction6, Wheat/potato/carrot 1 plot
    Gui, Screen1: Add, Button, gAction7, Cactus 3 plot
    Gui, Screen1: Add, Button, gAction9, Sugar 1 plot
    Gui, Screen1: Show, w350 h400, Screen 1
    Gui, Screen1: Hide
Return

Global buttonAction
Global sleepTimeforW
Global sleepTime
Global Movex
Global Movey

ShowScreen1:
    Gui, Main: Hide
    Gui, Screen1: Show
Return

ShowMain:
    Gui, Screen1: Hide
    Gui, Screen2: Hide
    Gui, Main: Show
    Return

;pump/melon 2 plot
Action1:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 28500
    Global sleepTime := 600
    Return

;pump/melon 2 plot
Action2:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 43000
    Global sleepTime := 600
    Return

;wheat/potato/carrot 2 plot
Action3:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 47500
    Global sleepTime := 1600
    Return

;wheat/potato/carrot 3 plot
Action4:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 72000
    Global sleepTime := 1600
    Return

;wheat/potato/carrot 1 plot
Action6:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 24000
    Global sleepTime := 1600
    Return

;cactus 3 plot
Action7:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 14700
    Global sleepTime := 400
    Return
;sugar
Action9:
    Gui, Hide
    Global buttonAction := 32
    Global sleepTimeUp := 9500
    Global sleepTimeDown := 9500
    Return

;cobble
Button1:
    Gui, Hide
    Global buttonAction := 1
    Return

;pump/melon 3 plot
Button2:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 43000
    Global sleepTime := 600
    Return

;fishing
Button3:
    Gui, Hide
    Global buttonAction := 3
    Return

;melody
Button4:
    Gui, Hide
    Global buttonAction := 4
    Return

;Pump/melon 3 plot
Button5:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 43000
    Global sleepTime := 1000
    Return

;Wheat/potato/carrot 3 plot
Button6:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 72000
    Global sleepTime := 1600
    Return

;Cocoa 3 plot
Button7:
    Gui, Hide
    Global buttonAction := 30
    Global sleepTimeUp := 42000
    Global sleepTimeDown := 57000
    Return

;Cactus 3 plot
Button8:
    Gui, Hide
    Global buttonAction := 2
    Global sleepTimeforW := 14700
    Global sleepTime := 400
    Return

;Mushroom 3 plot
Button9:
    Gui, Hide
    Global buttonAction := 31
    Global sleepTimeUp := 61500
    Global sleepTimeDown := 60000
    Return

;Sugar 3 plot
Button10:
    Gui, Hide
    Global buttonAction := 32
    Global sleepTimeUp := 28500
    Global sleepTimeDown := 28500
    Return

;experiment
Button50:
    Gui, Hide
    Global buttonAction := 50
    Return

;exit
Button51:
    Gui, Hide
    Global buttonAction := 51
    Return

F1::
    if (buttonAction = 1) {
        cobble()
    } else if (buttonAction = 2) {
        Pumpkin()
    } else if (buttonAction = 3) {
        fishing()
    } else if (buttonAction = 4) {
        melody()
    } else if (buttonAction = 5) {

    } else if (buttonAction = 30) {
        Cocoa()
    } else if (buttonAction = 31) {
        mushroom()
    } else if (buttonAction = 32) {
        sugar()
    } else if (buttonAction = 50) {
        GoodEnchant()
    }
    Return

F5:: ; Press F5 to release the left mouse button, W, A, and Shift (and show GUI)
    if (buttonAction != 51) {
        upEverything()
        Reload
    } else {
        GuiClose:
        ExitApp
    }





;---------------------------------------------------------------Functions below
    upEverything(){
        Click, up
        Send, {w up}
        Send, {a up}
        Send, {d up}
        Send, {s up}
        Sleep, 200
    }
;-----------------------------------------------------------------------------------experiment
    Getintotable(){
        Click, Right
        Sleep, 200
        MouseMove, 1039, 478
        Click
        Sleep, 200
        MouseMove, 1007, 461
        Click
        Sleep, 200
    }
    Unltras(){
        Loop
        {
            if(GreenBackgroundUltra())
            {
                MouseMove, Movex, Movey, 0
                Click
                Sleep, 10
            }
            
            if(LimeColor())
            {
                Send, {Escape 1}
                Sleep, 500
                Send, {Escape 1}
                Sleep, 500
                Click, Right
                Sleep, 500
                break
            }
        }
    }

    UnltrasToChronTrans(){
        MouseMove, 896, 476
	    Click 
        Sleep, 100
	    MouseMove,  1041, 461
        Click
	    Sleep, 2000
    }
    Chron1second(){
        if(GreenBackgroundChron()){
            Sleep, 1200
            MouseMove, Movex, Movey, 0
            Click
            Sleep, 400
        }
    }
    Chron(){
        While(true){
            if(Clock()){
                if(GreenBackgroundChron()){
                    Sleep, 350
                    MouseMove, Movex, Movey, 0
                    Click
                    Sleep, 400
                }
            }else{
                break
            }
        }
    }
    GoodEnchant(){
        Getintotable()
        Unltras()
        UnltrasToChronTrans()
        while(true){
            StartTime := A_TickCount

            while (A_TickCount - StartTime < 160000){
                if(Clock()){
                    Chron1second()
                    Chron()
                }
            }
            break
        }
    }

;---------------------------------------------------------------------------------------------------------farm
    cobble(){
        While(true){
            Click, down
            Send, {w down}
        }
    }
    Pumpkin(){
        PumpkinRight()
    }
    PumpkinRight(){
        Sleep, 100
        Click, down
        Send, {d down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true

            while (A_TickCount - StartTime < sleepTimeforW){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    PumpkinRight()
                }
                Sleep, 100
            }
            break
        }
        PumpkinTans()
        PumpkinLeft()
    }
    PumpkinLeft(){
        Sleep, 100
        Click, down
        Send, {a down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true
            
            while (A_TickCount - StartTime < sleepTimeforW){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    PumpkinRight()
                }
                Sleep, 100
            }
            break
        }
        PumpkinTans()
        PumpkinRight()
    }
    PumpkinTans(){
        upEverything()
        Sleep, 100
        Send, {w down}
        Sleep, sleepTime
        Send, {w up}
    }
    Cocoa(){
        CocoaDown()
    }
    CocoaUp(){
        upEverything()
        Click, down
        Send, {w down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true

            while (A_TickCount - StartTime < sleepTimeUp){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    CocoaDown()
                }
                Sleep, 100
            }
            break
        }
        CocoaTans()
        CocoaDown()
    }

    CocoaDown(){
        upEverything()
        Click, down
        Send, {s down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true

            while (A_TickCount - StartTime < sleepTimeDown){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    CocoaDown()
                }
                Sleep, 100
            }
            break
        }
        CocoaTans()
        CocoaUp()
    }
    CocoaTans(){
        upEverything()
        Sleep, 100
        Send, {d down}
        Sleep, 800
        Send, {d up}
    }

    mushroom(){
        mushroomDown()
    }
    mushroomDown(){
        upEverything()
        Sleep, 100
        Click, down
        Send, {d down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true

            while (A_TickCount - StartTime < sleepTimeDown){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    mushroomDown()
                }
                if(FishingRed() && FishingRedBack()){
                    Sleep, 100
                    Click, Right
                    Sleep, 3000
                }
                Sleep, 100
            }
            break
        }
        shroom := "down"
        mushroomTrans(shroom)
        mushroomUp()
    }
    mushroomUp(){
        upEverything()
        Sleep, 100
        Click, down
        Send, {a down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true
            
            while (A_TickCount - StartTime < sleepTimeUp){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    mushroomDown()
                }
                if(FishingRed() && FishingRedBack()){
                    Sleep, 100
                    Click, Right
                    Sleep, 3000
                }
                Sleep, 100
            }
            break
        }
        shroom := "up"
        mushroomTrans(shroom)
        mushroomDown()
    }
    mushroomTrans(shroom){
        upEverything()
        Sleep, 100
        if(shroom = "up"){
            Send, {w down}
        }
        else{
            Send, {d down}
        }
        Sleep, 1700
        upEverything()
    }

    sugar(){
        sugarUp()
    }
    sugarUp(){
        upEverything()
        Sleep, 100
        Click, down
        Send, {a down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true
            
            while (A_TickCount - StartTime < sleepTimeUp){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    sugarUp()
                }
                Sleep, 100
            }
            break
        }
        sugars := "up"
        sugarTrans(sugars)
        sugarDown()
    }
    sugarDown(){
        upEverything()
        Sleep, 100
        Click, down
        Send, {s down}
        Sleep, 100
        while(true){
            StartTime := A_TickCount
            found := true

            while (A_TickCount - StartTime < sleepTimeDown){
                if(CheckYellowTop() || CheckYellowSide()){
                    PerformYellowWoolActions()
                    Sleep, 1000
                    sugarUp()
                }
                Sleep, 100
            }
            break
        }
        sugars := "down"
        sugarTrans(sugars)
        sugarUp()
    }
    sugarTrans(sugar){
        upEverything()
        Sleep, 100
        if(sugar = "up"){
            Send, {w down}
        }
        else{
            Send, {d down}
        }
        Sleep, 500
        upEverything()
    }
;--------------------------------------------------------------------------------------------------------------------- melody
    melody(){
        while(true){
            if(Quartz() || QuartzHover()){
                MouseMove, Movex, Movey, 0
   
            }
        }
    }
;---------------------------------------------------------------------------------------------idk+fishing
    fishing(){
        While(true){
            if(FishingRed() && FishingRedBack()){
                Sleep, 300
                Click, Right
                Sleep, 1000
                Click, Right
            }
                
        }
    }

    PerformYellowWoolActions(){
        upEverything()
        Sleep, 200
        gotoGarden()
    }
    SmoothTurn(x, y, steps){
        Loop %steps%
        {
            DllCall("mouse_event", "UInt", 0x01, "Int", x, "Int", y, "UInt", 0, "Int", 0)
            Sleep, 10 ; Adjust the delay for smoother movement
        }
    }
;---------------------------------------------------------------------------------------------color
    FishingRedBack(){
        PixelSearch, gx, gy, 656, 542, 1042, 624, 0x3F1515, 0, Fast RGB
        if (ErrorLevel = 0){
            Return true
        }
    }
    FishingRed(){
        PixelSearch, gx, gy, 656, 542, 1042, 624, 0xFF5555, 0, Fast RGB
        if (ErrorLevel = 0){
            Return true
        }
    }
    Quartz(){
        PixelSearch, gx, gy, 833, 495, 1085, 531, 0x979592, 0, Fast RGB ;979592 quartz
        if (ErrorLevel = 0){
            Movex:=gx
            Movey:=gy
            Return true
        }
    }
    QuartzHover(){
        PixelSearch, gx, gy, 833, 495, 1085, 531, 0xF8F7F4, 0, Fast RGB ;F8F7F4 quartz hover
        if (ErrorLevel = 0){
            Movex:=gx
            Movey:=gy
            Return true
        }
    }
    Clock(){
        PixelSearch, gx, gy, 930, 577, 1005, 522, 0xE1E1E1, 0, Fast RGB
        if (ErrorLevel = 0){
            Return true
        }
    }
    GreenBackgroundChron(){
        PixelSearch, gx, gy, 500, 370, 1415, 659, 0x3EE83E, 5, Fast RGB
        if (ErrorLevel = 0){
            Movex:=gx
            Movey:=gy
            Return true
        }
    }
    GreenBackgroundUltra(){
        PixelSearch, gx, gy, 500, 370, 1415, 659, 0x45641C, 5, Fast RGB
        if (ErrorLevel = 0){
            Movex:=gx
            Movey:=gy
            Return true
        }
    }
    LimeColor(){
        PixelSearch, gx, gy, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x83D41C, 0, Fast RGB
        if (ErrorLevel = 0){
            Return true
        }
    }
    CheckYellowTop(){
        PixelSearch, gx, gy, 636, 368, 1412, 943, 0xFFDE1C, 0, Fast RGB; Search for yellow concrete
        if (ErrorLevel = 0){
            Return true
        }
    }
    CheckYellowSide(){
        PixelSearch, gx, gy, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x977B0D, 0, Fast RGB;
        if (ErrorLevel = 0){
            Return true
        }
    }
;-------------------------------------------------------------------------------------------------/ commands
    gotoSkyblock(){
        Sleep, 500
        Send, {enter}
        Sleep, 500
        Send, {/}
        Sleep, 200
        Send, {p}
        Sleep, 200
        Send, {l}
        Sleep, 200
        Send, {a}
        Sleep, 200
        Send, {y}
        Sleep, 200
        Send, {Space}
        Sleep, 200
        Send, {s}
        Sleep, 200
        Send, {k}
        Sleep, 200
        Send, {y}
        Sleep, 200
        Send, {b}
        Sleep, 200
        Send, {l}
        Sleep, 200
        Send, {o}
        Sleep, 200
        Send, {c}
        Sleep, 200
        Send, {k}
        Sleep, 200
        Send, {enter}
        Sleep, 5000
    }
    gotoGarden(){
        Send, {Enter}
        Sleep, 200
        Send, {/}
        Sleep, 200
        Send, {g}
        Sleep, 200
        Send, {a}
        Sleep, 200
        Send, {r}
        Sleep, 200
        Send, {d}
        Sleep, 200
        Send, {e}
        Sleep, 200
        Send, {n}
        Sleep, 200
        Send, {Enter}
        Sleep, 1000
    }