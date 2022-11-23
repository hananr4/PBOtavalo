$PBExportHeader$gadotavalo.sra
$PBExportComments$Generated Application Object
forward
global type gadotavalo from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type gadotavalo from application
string appname = "gadotavalo"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 22.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = true
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 5
long richtexteditx64type = 5
long richtexteditversion = 3
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "22.0.0.1878"
boolean manualsession = false
boolean unsupportedapierror = true
boolean bignoreservercertificate = false
uint ignoreservercertificate = 0
end type
global gadotavalo gadotavalo

on gadotavalo.create
appname="gadotavalo"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on gadotavalo.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open (w_persona)
//open (w_api_rest)

end event

