$PBExportHeader$w_api_rest.srw
forward
global type w_api_rest from window
end type
type cb_1 from commandbutton within w_api_rest
end type
end forward

global type w_api_rest from window
integer width = 8517
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
cb_1 cb_1
end type
global w_api_rest w_api_rest

on w_api_rest.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_api_rest.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_api_rest
integer x = 352
integer y = 212
integer width = 1339
integer height = 444
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "API"
end type

event clicked;String ls_url = 'https://pokeapi.co/api/v2/pokemon/ditto'

Integer li_rc
String ls_string
HttpClient lnv_HttpClient

lnv_HttpClient = Create HttpClient

// Sends request using GET method
li_rc = lnv_HttpClient.SendRequest("GET", ls_url)

// Obtains the response data
if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
	 lnv_HttpClient.GetResponseBody(ls_string)

		MessageBox("ls_string", ls_string)
	
		String ls_Error
		JsonParser lnv_JsonParser 
		lnv_JsonParser = Create JsonParser
		
		String ls_Json 

		ls_Json = ls_string
		
		ls_Error = lnv_JsonParser.LoadString(ls_Json)
		
		if Len(ls_Error) > 0 then
			MessageBox("Error", ls_Error)
		end if
		
		string ls_base_experience
		JsonPackage lnv_package
		lnv_package = create JsonPackage

		ls_Error = lnv_package.LoadString(ls_Json)

		
		ls_base_experience = lnv_package.GetValue("base_experience")

		 MessageBox ( 'ls_base_experience', ls_base_experience )		
		
end if

end event

