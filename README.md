# LiQUiD Read – Enhanced PCBoard Message List & Reader PPE

`LiQUiD Read` is a PCBoard PPE (written in PPL) that provides an improved message list/message reader.
Providing a more modern message reader for Icy Board and PCBoard.

## LiQUiD

It's not officially back again but I just re-use that name. I was member and had
some releases under that label which I may update (lchat/ledit). Esp. the editor
is unfinished and a new release was promised...

LChat looks good but needs some configuration options - it's very limited.

## Configuration Files

### `lread.cfg`
Defines:
```
AreaX AreaY Lines
MsgHdrX1 MsgHdrY1
MsgHdrX2 MsgHdrY2
<MSG_HDR_ATTRIBUTE line>
<SELECTED_MSG_HDR_ATTRIBUTE line>
```
Controls where the header list is drawn and how many lines are visible.

### `msg.cfg`
Defines (in order):
```
ToX ToY ToLen
FromX FromY FromLen
SubjX SubjY SubjLen
NumberX NumberY
DateX DateY
MsgX1 MsgY1 MsgX2 MsgY2
PrevX,PrevY,PrevLabel
NextX,NextY,NextLabel
ReplyX,ReplyY,ReplyLabel
QuitX,QuitY,QuitLabel
----
(comment block for human reference)
```

Button lines are comma separated. Labels are used verbatim; their X positions can be edited (or later auto-centered).

## Key Bindings (List View)

| Key        | Action                                |
|------------|----------------------------------------|
| Up / Down  | Move selection one message             |
| Left / Right | Page up / down (Lines + 1)         |
| HOME / END | Jump to start / end of valid messages  |
| Enter      | Open current message in full reader    |
| H          | Help screen                           |
| ESC        | Exit PPE                               |

## Key Bindings (Reader)

| Key        | Action                                        |
|------------|-----------------------------------------------|
| Left / Right | Move lightbar focus (Prev / Next / Reply / Quit) |
| Enter      | Execute selected menu item                    |
| Up / Down  | Scroll one line of message body               |
| PGUP / PGDN| Jump to top block or near end block           |
| R          | Shortcut reply (same as “Reply” menu)         |
| H          | Help / return                                 |
| ESC / Quit | Return to message list                        |

## Building

Building requires the icy board ppl compiler in path.
Install just

`just build`

Artifacts will appear under `target/<pcboard_version>/`.

Running/cleaning with with propery set up icy board and ICB_PATH: 
`just run`
`just clean`

## Installation (PCBoard)

1. Build and locate `target/pcboard_<ver>/lread.ppe`.
2. Copy `lread.ppe`, `lread.cfg`, `msg.cfg`, and `data/*.pcb` into your PCBoard PPE / display directories (e.g. `\PCB\PPE\LREAD\`).
3. Add a CMD.LST entry for 'R' pointing to `\PCB\PPE\LREAD\LREAD.PPE`

## License

Apache/MIT X11
