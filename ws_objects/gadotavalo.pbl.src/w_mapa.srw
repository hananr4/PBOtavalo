$PBExportHeader$w_mapa.srw
forward
global type w_mapa from window
end type
type sle_longitud from singlelineedit within w_mapa
end type
type sle_latitud from singlelineedit within w_mapa
end type
type cb_2 from commandbutton within w_mapa
end type
type cb_1 from commandbutton within w_mapa
end type
type wb_1 from webbrowser within w_mapa
end type
end forward

global type w_mapa from window
accessiblerole accessiblerole = defaultrole!
integer x = 0
integer y = 0
integer width = 4306
integer height = 2640
boolean enabled = true
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = false
boolean vscrollbar = false
boolean resizable = true
boolean border = true
windowtype windowtype = main!
windowstate windowstate = normal!
long backcolor = 67108864
string icon = "AppIcon!"
integer unitsperline = 0
integer linesperpage = 0
integer unitspercolumn = 0
integer columnsperpage = 0
boolean bringtotop = false
boolean toolbarvisible = true
toolbaralignment toolbaralignment = alignattop!
integer toolbarx = 0
integer toolbary = 0
integer toolbarwidth = 0
integer toolbarheight = 0
boolean righttoleft = false
boolean keyboardicon = true
boolean clientedge = false
boolean palettewindow = false
boolean contexthelp = false
boolean center = true
integer transparency = 0
windowanimationstyle openanimation = noanimation!
windowanimationstyle closeanimation = noanimation!
integer animationtime = 200
windowdockoptions windowdockoptions = windowdockoptionall!
windowdockstate windowdockstate = windowdockstatedocked!
long tabbeddocumenttabsareacolor = 1073741824
long tabbeddocumenttabsareagradientcolor = 1073741824
boolean tabbeddocumenttabsareagradientvert = false
long tabbedwindowtabsareacolor = 1073741824
long tabbedwindowtabsareagradientcolor = 1073741824
boolean tabbedwindowtabsareagradientvert = false
long titlebaractivecolor = 134217730
long titlebaractivegradientcolor = 134217730
boolean titlebaractivegradientvert = false
long titlebaractivetextcolor = 0
long titlebarinactivecolor = 134217731
long titlebarinactivegradientcolor = 134217731
boolean titlebarinactivegradientvert = false
long titlebarinactivetextcolor = 0
windowdocktabshape tabbeddocumenttabshape = windowdocktabrectangular!
windowdocktabclosebutton tabbeddocumenttabclosebutton = windowdocktabclosebuttononactive!
boolean tabbeddocumenttabicon = true
boolean tabbeddocumenttabscroll = false
windowdocktabshape tabbedwindowtabshape = windowdocktabrectangular!
windowdocktabclosebutton tabbedwindowtabclosebutton = windowdocktabclosebuttonnone!
boolean tabbedwindowtabicon = true
boolean tabbedwindowtabscroll = false
boolean tabbeddocumenttabcolorsusetheme = true
long tabbeddocumentactivetabbackcolor = 1073741824
long tabbeddocumentactivetabgradientbackcolor = 1073741824
long tabbeddocumentactivetabtextcolor = 0
long tabbeddocumentinactivetabbackcolor = 67108864
long tabbeddocumentinactivetabgradientbackcolor = 67108864
long tabbeddocumentinactivetabtextcolor = 0
long tabbeddocumentmouseovertabbackcolor = 67108864
long tabbeddocumentmouseovertabgradientbackcolor = 67108864
long tabbeddocumentmouseovertabtextcolor = 0
boolean tabbedwindowtabcolorsusetheme = true
long tabbedwindowactivetabbackcolor = 1073741824
long tabbedwindowactivetabgradientbackcolor = 1073741824
long tabbedwindowactivetabtextcolor = 0
long tabbedwindowinactivetabbackcolor = 67108864
long tabbedwindowinactivetabgradientbackcolor = 67108864
long tabbedwindowinactivetabtextcolor = 0
long tabbedwindowmouseovertabbackcolor = 67108864
long tabbedwindowmouseovertabgradientbackcolor = 67108864
long tabbedwindowmouseovertabtextcolor = 0
boolean toolbarinsheet = false
sle_longitud sle_longitud
sle_latitud sle_latitud
cb_2 cb_2
cb_1 cb_1
wb_1 wb_1
end type
global w_mapa w_mapa

on w_mapa.create
this.sle_longitud=create sle_longitud
this.sle_latitud=create sle_latitud
this.cb_2=create cb_2
this.cb_1=create cb_1
this.wb_1=create wb_1
this.Control[]={this.sle_longitud,&
this.sle_latitud,&
this.cb_2,&
this.cb_1,&
this.wb_1}
end on

on w_mapa.destroy
destroy(this.sle_longitud)
destroy(this.sle_latitud)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.wb_1)
end on

type sle_longitud from singlelineedit within w_mapa
integer x = 2336
integer y = 48
integer width = 530
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "-78.260729"
borderstyle borderstyle = stylelowered!
end type

type sle_latitud from singlelineedit within w_mapa
integer x = 1349
integer y = 52
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "0.233677"
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_mapa
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
string text = "Ir al mapa"
end type

event clicked;string ls_latitud 
string ls_longitud 


ls_latitud  = sle_latitud.text
ls_longitud = sle_longitud.text



string ls_url = 'https://www.google.com.ec/maps/@' + ls_latitud + ','+ ls_longitud+',18z?hl=es'
wb_1.Navigate  (ls_url )
end event

type cb_1 from commandbutton within w_mapa
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

type wb_1 from webbrowser within w_mapa
integer x = 23
integer y = 192
integer width = 4197
integer height = 2316
end type

