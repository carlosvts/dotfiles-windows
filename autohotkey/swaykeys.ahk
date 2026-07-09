#Requires AutoHotkey v2.0
#SingleInstance Force

; ==============================
; carlosvts Windows Sway-like keys
; AutoHotkey v2 + Komorebi + Flow Launcher
; ==============================

Komorebi(cmd) {
    komorebic := "C:\Program Files\komorebi\bin\komorebic.exe"
    Run '"' komorebic '" ' cmd, , "Hide"
}

; ------------------------------
; Apps
; ------------------------------

; Win + Enter -> Windows Terminal
#Enter::Run "wt.exe"

; Win + D -> Flow Launcher
; Flow deve ficar configurado como Alt+Space.
#d:: {
    KeyWait "LWin"
    KeyWait "RWin"
    Send "!{Space}"
}

; Win + Shift + Q -> fechar janela ativa
#+q::WinClose "A"

; ------------------------------
; Foco com setas
; ------------------------------

#Left::Komorebi("focus left")
#Down::Komorebi("focus down")
#Up::Komorebi("focus up")
#Right::Komorebi("focus right")

; ------------------------------
; Mover janela com Shift + setas
; ------------------------------

#+Left::Komorebi("move left")
#+Down::Komorebi("move down")
#+Up::Komorebi("move up")
#+Right::Komorebi("move right")

; ------------------------------
; Workspaces: Win + 1..9
; Komorebi usa índice começando em 0.
; ------------------------------

#1::Komorebi("focus-workspace 0")
#2::Komorebi("focus-workspace 1")
#3::Komorebi("focus-workspace 2")
#4::Komorebi("focus-workspace 3")
#5::Komorebi("focus-workspace 4")
#6::Komorebi("focus-workspace 5")
#7::Komorebi("focus-workspace 6")
#8::Komorebi("focus-workspace 7")
#9::Komorebi("focus-workspace 8")

; ------------------------------
; Mover janela para workspace
; ------------------------------

#+1::Komorebi("move-to-workspace 0")
#+2::Komorebi("move-to-workspace 1")
#+3::Komorebi("move-to-workspace 2")
#+4::Komorebi("move-to-workspace 3")
#+5::Komorebi("move-to-workspace 4")
#+6::Komorebi("move-to-workspace 5")
#+7::Komorebi("move-to-workspace 6")
#+8::Komorebi("move-to-workspace 7")
#+9::Komorebi("move-to-workspace 8")

; ------------------------------
; Layout / floating / maximize
; ------------------------------

; Win + Space -> floating toggle
#Space::Komorebi("toggle-float")

; Win + F -> maximize toggle
#f::Komorebi("toggle-maximize")

; Win + Shift + R -> reload komorebi config
#+r::Komorebi("reload-configuration")

; Win + Shift + C -> parar komorebi
#+c::Komorebi("stop")