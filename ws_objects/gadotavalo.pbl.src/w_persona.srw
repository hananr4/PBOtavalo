$PBExportHeader$w_persona.srw
forward
global type w_persona from window
end type
type rte_1 from richtextedit within w_persona
end type
type cb_5 from commandbutton within w_persona
end type
type cb_4 from commandbutton within w_persona
end type
type cb_3 from commandbutton within w_persona
end type
type dw_2 from datawindow within w_persona
end type
type cb_2 from commandbutton within w_persona
end type
type cb_1 from commandbutton within w_persona
end type
type dw_1 from datawindow within w_persona
end type
end forward

global type w_persona from window
integer width = 4526
integer height = 2536
boolean border = false
long backcolor = 16777215
string icon = "AppIcon!"
boolean center = true
rte_1 rte_1
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
dw_2 dw_2
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_persona w_persona

on w_persona.create
this.rte_1=create rte_1
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.dw_2=create dw_2
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.rte_1,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.dw_2,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_persona.destroy
destroy(this.rte_1)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.dw_2)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_2.InsertRow(0)
end event

type rte_1 from richtextedit within w_persona
integer x = 1989
integer y = 1248
integer width = 2514
integer height = 1128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean init_hscrollbar = true
boolean init_vscrollbar = true
boolean init_wordwrap = true
boolean init_pictureframe = true
boolean init_rulerbar = true
boolean init_tabbar = true
boolean init_toolbar = true
boolean init_headerfooter = true
boolean init_popmenu = true
boolean init_displayonly = true
borderstyle borderstyle = stylelowered!
boolean resizable = true
end type

type cb_5 from commandbutton within w_persona
integer x = 983
integer y = 32
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Aplicar tema"
end type

event clicked; ApplyTheme ('Flat Design Blue')
// ApplyTheme ('Flat Design Dark')
// ApplyTheme ('Flat Design Grey')
// ApplyTheme ('Flat Design Silver')
end event

type cb_4 from commandbutton within w_persona
integer x = 901
integer y = 152
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;dw_1.saveas( )
end event

type cb_3 from commandbutton within w_persona
integer x = 1984
integer y = 140
integer width = 1275
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Guardar"
end type

event clicked;int li_id
String     ls_nombre, ls_direccion, ls_telefono, ls_msj 
datetime ldt_fecha_nacimiento 

dw_2.AcceptText()

li_id = dw_2.Object.id[1]
ls_nombre = dw_2.Object.nombre[1]
ls_telefono = dw_2.Object.telefono[1]
ls_direccion = dw_2.Object.direccion[1]
ldt_fecha_nacimiento = dw_2.Object.fecha_nacimiento[1]


DECLARE lsp_1 PROCEDURE FOR dbo.sp_persona_crear
			  @id         = :li_id
			, @nombre	= :ls_nombre   
			, @fecha_nacimiento	= :ldt_fecha_nacimiento 
			, @direccion	      = :ls_direccion
			, @telefono	       = :ls_telefono
			, @mensaje	        = '' OUTPUT
	USING sqlca;
 
EXECUTE lsp_1 ;

if SQLCA.SQLCode  <> 0 Then
	ROLLBACK USING sqlca;
	MessageBox ('Error', SQLCA.SQLErrText )
	return
end If

 
FETCH lsp_1 INTO :ls_msj ;
 
CLOSE lsp_1;
 
COMMIT USING sqlca;

MessageBox ( '', ls_msj  )
end event

type dw_2 from datawindow within w_persona
integer x = 1970
integer y = 364
integer width = 2162
integer height = 792
integer taborder = 20
string title = "none"
string dataobject = "dw_persona_crear"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_persona
integer x = 96
integer y = 152
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Retrieve"
end type

event clicked;dw_1.SetTransObject (SQLCA)
dw_1.Retrieve()

end event

type cb_1 from commandbutton within w_persona
integer x = 82
integer y = 20
integer width = 722
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Conectar a base de datos"
end type

event clicked;// Profile PBOtavalo
SQLCA.DBMS = "SNC SQL Native Client(OLE DB)"

SQLCA.LogPass = ''
SQLCA.LogId = ""
SQLCA.ServerName = ".\sql2016"

SQLCA.AutoCommit = False
SQLCA.DBParm = "Provider='SQLNCLI11',Database='PBOtavalo'"

connect using SQLCA;

end event

type dw_1 from datawindow within w_persona
integer x = 50
integer y = 328
integer width = 1737
integer height = 1748
integer taborder = 10
string title = "none"
string dataobject = "dw_persona"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

