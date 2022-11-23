$PBExportHeader$w_sig.srw
forward
global type w_sig from window
end type
type cb_2 from commandbutton within w_sig
end type
type cb_1 from commandbutton within w_sig
end type
type wb_1 from webbrowser within w_sig
end type
end forward

global type w_sig from window
integer width = 4306
integer height = 2640
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
wb_1 wb_1
end type
global w_sig w_sig

on w_sig.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.wb_1=create wb_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.wb_1}
end on

on w_sig.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.wb_1)
end on

type cb_2 from commandbutton within w_sig
integer x = 50
integer y = 24
integer width = 814
integer height = 148
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Abrir SIG"
end type

event clicked;
string ls_url = 'https://greensoft.com.ec/sig/credito.html'
wb_1.Navigate  (ls_url )
end event

type cb_1 from commandbutton within w_sig
boolean visible = false
integer x = 69
integer y = 32
integer width = 869
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

type wb_1 from webbrowser within w_sig
integer x = 23
integer y = 192
integer width = 4197
integer height = 2316
end type

