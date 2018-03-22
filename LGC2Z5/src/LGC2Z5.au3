#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_outfile=LGC2Z5.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Res_Comment=by Tristano Ajmone — www.zenfactor.org
#AutoIt3Wrapper_Res_Description=Libro Game Creator to Z-Machine Converter
#AutoIt3Wrapper_Res_LegalCopyright=No!Copyright
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.6.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <Array.au3>
#include <GUIConstantsEx.au3>
#include <IE.au3>
#include <String.au3>

#cs	###################################################
	############ DECLARATION OF VARIABLES #############
	###################################################
#ce

$App_Version = "1.3"

Global $LGC_File = ""



#cs	#####################################
	############ CREATE GUI #############
	#####################################
#ce

$ParentWin = GUICreate("LGC2Z5 - LGC to Z-Machine Converter (v " & $App_Version & " )", 500, 155, -1, -1)

GUISetFont(12, 400, 0, "Trebuchet MS")

; File Sorgente
$Button_Source_File = GUICtrlCreateButton ("File LGC sorgente:", 10, 10, 155)
GUICtrlSetTip  (-1, "Clicca per selezionare file sorgente")
$Label_Source_File = GUICtrlCreateLabel ("---", 170, 15, 315)
;GUICtrlSetBkColor(-1, 0xffffff)

; Z-Machine type - Selector
$Button_ZM = GUICtrlCreateButton ("Z-Machine v. 5", 10, 50, 155)

; Bottone Numerazione Paragrafi
$Button_Numerazione_Paragrafi = GUICtrlCreateButton ("Mantieni Numerazione Paragrafi", 170, 50, 320)

; Bottone Compila
$Button_Converti = GUICtrlCreateButton ("Converti", 10, 90, 155)

GUISetFont(24, 400, 0, "Trebuchet MS")
GUICtrlCreateLabel ("ZenFactor.org", 230, 90, 315)
GUICtrlSetColor (-1, 0x70869C)
; Menus
;--------------------------------------------------------------------------------
; #### STRUMENTI ###
$menu_tools = GUICtrlCreateMenu("&Strumenti")
$menu_tools_help = GUICtrlCreateMenuItem("Istruzioni", $menu_tools)
$menu_tools_app_folder = GUICtrlCreateMenuItem("Apri la cartella di LGC2Z5", $menu_tools)
$menu_tools_email = GUICtrlCreateMenuItem("Contatta Tristano via eMail", $menu_tools)
$menu_tools_homepage = GUICtrlCreateMenuItem("Home Page di LGC2Z5", $menu_tools)
$menu_tools_about = GUICtrlCreateMenuItem("Informazioni", $menu_tools)

; #### LINKS ###
$menu_links = GUICtrlCreateMenu("&Link")
$menu_links_ZenFactor = GUICtrlCreateMenuItem("ZenFactor.org", $menu_links)
$menu_links_LGC = GUICtrlCreateMenuItem("LGC - Libro Game Creator", $menu_links)
$menu_links_LibrogamesLand = GUICtrlCreateMenuItem("Librogame's Land", $menu_links)
$menu_links_MondoLibroGames = GUICtrlCreateMenuItem("Il Mondo dei Librogames", $menu_links)
$menu_links_Inform6 = GUICtrlCreateMenuItem("Inform 6", $menu_links)
$menu_links_Paolo_Lucchesi = GUICtrlCreateMenuItem("Paolo Lucchesi", $menu_links)
$menu_links_Libro_Angiolino = GUICtrlCreateMenuItem("Libro: Costruire i Libri-Gioco", $menu_links)


GUISetState(@SW_SHOW)

#cs	###############################################
	############ WAIT FOR USER ACTION #############
	###############################################
#ce
While 1
	Switch GUIGetMsg()
		; Menu > Tools
		Case $menu_tools_help
			If FileExists (@ScriptDir & "\Manuale LGC2Z5.htm") Then
				_IECreate (@ScriptDir & "\Manuale LGC2Z5.htm", 0, 1, 0)
			Else
				MsgBox(0, "ERROR!", "Could not find User Guide!")
			EndIf
		Case $menu_tools_app_folder
			Run("Explorer.exe " & @ScriptDir)
		Case $menu_tools_email
			if Run(@ProgramFilesDir & "\Outlook Express\msimn.exe /mailurl:mailto:tajmone@gmail.com") = 0 Then
				; If for any reason don't work, use quick and dirty way ...
				_IECreate ("mailto:tajmone@gmail.com", 0, 0, 0)
			EndIf
		Case $menu_tools_homepage
			_IECreate ("http://avventure-testuali.zenfactor.org/lgc2z5.htm", 0, 1, 0)
		Case $menu_tools_about
			MsgBox(0, "LGC2Z5", "LGC2Z5 v. " & $App_Version & " (Freeware)" & @CRLF & @CRLF & _
				"realizzato con AutoIt Script" & @CRLF & @CRLF & _
				"da Tristano Ajmone - Ottobre 2010" & @CRLF & @CRLF & _
				"www.ZenFactor.org")
		; Menu > Links
		Case $menu_links_ZenFactor
			_IECreate ("http://www.zenfactor.org", 0, 1, 0)
		Case $menu_links_LGC
			_IECreate ("http://lgc.altervista.org/", 0, 1, 0)
		Case $menu_links_LibrogamesLand
			_IECreate ("http://www.librogame.net/", 0, 1, 0)
		Case $menu_links_MondoLibroGames
			_IECreate ("http://www.librogame.com/", 0, 1, 0)
		Case $menu_links_Inform6
			_IECreate ("http://www.inform-fiction.org/inform6.html", 0, 1, 0)
		Case $menu_links_Paolo_Lucchesi
			_IECreate ("http://www.paololucchesi.it/", 0, 1, 0)
		Case $menu_links_Libro_Angiolino
			_IECreate ("http://www.sonda.it/Default.aspx?sezid=71&idlibro=309", 0, 1, 0)

		Case $Button_Source_File
			$LGC_File = FileOpenDialog("Scegli il Libro-Game sorgente", @ScriptDir & "\", "File LGC (*.lgc)", 1 + 2 )
			If @error Then
				; MsgBox(4096,"","No File(s) chosen")
			Else
				$slash_pos = StringInStr ($LGC_File, "\", 0, -1)
				$stripped_path = StringLeft ($LGC_File, $slash_pos - 1)
				$nome_file_scelto = StringRight ($LGC_File, StringLen($LGC_File)-$slash_pos)
				if $stripped_path <> @ScriptDir Then
					FileCopy($LGC_File, @ScriptDir & "\" & $nome_file_scelto)
					$LGC_File = @ScriptDir & "\" & $nome_file_scelto
					$LGC_File = $nome_file_scelto
					;MsgBox(0, "xxxx", "$LGC_File = " & $LGC_File & @CRLF & "$nome_file_scelto = " & $nome_file_scelto & @CRLF  & @ScriptDir)
				EndIf
				GUICtrlSetData ($Label_Source_File, $nome_file_scelto)
			EndIf
		Case $Button_ZM
			if GUICtrlRead ($Button_ZM) = "Z-Machine v. 5" Then
				GUICtrlSetData ($Button_ZM, "Z-Machine v. 8")
			Else
				GUICtrlSetData ($Button_ZM, "Z-Machine v. 5")
			EndIf
		Case $Button_Numerazione_Paragrafi
			if GUICtrlRead ($Button_Numerazione_Paragrafi) = "Mantieni Numerazione Paragrafi" Then
				GUICtrlSetData ($Button_Numerazione_Paragrafi, "Converti Numerazione Paragrafi")
			Else
				GUICtrlSetData ($Button_Numerazione_Paragrafi, "Mantieni Numerazione Paragrafi")
			EndIf
		Case $Button_Converti
			if GUICtrlRead ($Label_Source_File) <> "---" Then Converti()
		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
WEnd

; -------------------------------------- CONVERSIONE --------------------------------------
func Converti ()
	
#cs	#####################################
	############ INITIALIZE #############
	#####################################
#ce

FileChangeDir (@ScriptDir)

$I6_Output = StringTrimRight ($LGC_File, 3) & "inf"
; Stabilisci se ZM 5 o 8
if GUICtrlRead ($Button_ZM) = "Z-Machine v. 5" Then
	$ZM_Output = StringTrimRight ($LGC_File, 3) & "z5"
	$ZM_Option = "5"
Else
	$ZM_Output = StringTrimRight ($LGC_File, 3) & "z8"
	$ZM_Option = "8"
EndIf

; Rileva Conversione Numerazione Paragrafi
if GUICtrlRead ($Button_Numerazione_Paragrafi) = "Mantieni Numerazione Paragrafi" Then
	$Mantieni_Numerazione_Paragrafi = True
Else
	$Mantieni_Numerazione_Paragrafi = False
EndIf

$Objects_Counter = 0
$Max_Objects_Var = 0

; Cancella file output se esistono!
FileDelete ($I6_Output)
FileDelete ($ZM_Output)

; Apri sorgente in lettura
$SourceFile = FileOpen($LGC_File, 0)
; Check if file opened for reading OK
If $SourceFile = -1 Then
    MsgBox(0, "Errore", "Non è possibile aprire il file.")
    Exit
EndIf

; Apri destinazione in scrittura
$OutputFile = FileOpen($I6_Output, 1)
; Check if file opened for writing OK
If $OutputFile = -1 Then
    MsgBox(0, "Errore", "Non è possibile aprire il file.")
    Exit
EndIf
; Scrivi include libreria
if $Mantieni_Numerazione_Paragrafi = True Then
	FileWriteLine($OutputFile, '#include "lgc2z5_it_mant_np.h";')
Else
	FileWriteLine($OutputFile, '#include "lgc2z5_it_conv_np.h";')
EndIf

; Leggi titolo libro e autore
$void = FileReadLine($SourceFile)
$void = FileReadLine($SourceFile)
$book_title = FileReadLine($SourceFile)
$book_version = FileReadLine($SourceFile)
$book_author = FileReadLine($SourceFile)

; Salta header
$lineread = ""
While $lineread <> "END_HEADER"
	$lineread = FileReadLine($SourceFile)
WEnd

; Leggi tutto linea x linea

While True
	$paragraph_number = FileReadLine($SourceFile)
	if @error = -1 Then ExitLoop
	$paragraph_title = FileReadLine($SourceFile)
	$paragraph_jumps = FileReadLine($SourceFile)
	$paragraph_flags = FileReadLine($SourceFile)
	$void = FileReadLine($SourceFile)
	;$void = FileReadLine($SourceFile)

	$lineread = ""
	$paragraph_text = ""
	While True
		$lineread = FileReadLine($SourceFile)
		If $lineread = "END" Then
			ExitLoop
		Else
			$paragraph_text = $paragraph_text & "^" & $lineread
		EndIf
	WEnd
	; Ripulisci Test Paragrafo
	If $paragraph_jumps <> "" Then
		$Jumps = _StringExplode($paragraph_jumps, "*")
		if $Mantieni_Numerazione_Paragrafi = False Then
			; Sostituisci numeri paragrafo con numero scelta del menu...
			$counter = 0
			While $Jumps[$counter] <> ""
				$paragraph_text = StringReplace ($paragraph_text, "<" & $Jumps[$counter] & ">",  "<" & $counter+1 & ">")
				$counter = $counter +1
			WEnd
		EndIf
	EndIf
	; Sostituisci Virgolette
	$paragraph_text = StringReplace ($paragraph_text, '"', "~")
	; Sostituisci Virgolette Singole
	$paragraph_text = StringReplace ($paragraph_text, "`", "'")
	$paragraph_text = StringReplace ($paragraph_text, "‘", "'")
	$paragraph_text = StringReplace ($paragraph_text, "’", "'")
	; Sostituisci Lineette Medie e Lunghe con Segno meno
	$paragraph_text = StringReplace ($paragraph_text, "–", "-")
	$paragraph_text = StringReplace ($paragraph_text, "—", "-")

	
	

	; Scrivi Output I6
	$Objects_Counter += 1
	if $Mantieni_Numerazione_Paragrafi = False Then
		If $paragraph_title = "" Then $paragraph_title = "..."
	Else
		$paragraph_title = $paragraph_number & ". " & $paragraph_title
	EndIf
	FileWriteLine($OutputFile, "Node PAR" & $paragraph_number & ' "' & $paragraph_title & '"')
	FileWriteLine($OutputFile, '    with text "' & $paragraph_text & '";')
	FileWriteLine($OutputFile, "")
	If $paragraph_jumps <> "" Then
		$counter = 0
		While $Jumps[$counter] <> ""
			if $Mantieni_Numerazione_Paragrafi = True Then
				FileWriteLine($OutputFile, 'Option -> "Vai al ' & $Jumps[$counter] & '"')
			Else
				FileWriteLine($OutputFile, 'Option -> "' & $counter+1 & '"')
			EndIf
			FileWriteLine($OutputFile, '    with goto PAR' & $Jumps[$counter] & ";")
			FileWriteLine($OutputFile, "")
			$counter = $counter +1
			$Objects_Counter += 1
		WEnd
	Else
		FileWriteLine($OutputFile, "")
	EndIf
		
	; Salta Stream RTF
	$lineread = ""
	While $lineread <> "END_STREAM"
		$lineread = FileReadLine($SourceFile)
	WEnd

WEnd


FileWriteLine($OutputFile, "[ Init;")
FileWriteLine($OutputFile, '    print "^^' & $book_title & ' (v. ' & $book_version & ')^by ' & $book_author & '^^";')
FileWriteLine($OutputFile, "    moveto(PAR1);")
FileWriteLine($OutputFile, "];")

; Chiudi file
FileClose($SourceFile)
FileClose($OutputFile)

; Max Objects
$Max_Objects_Var = $Objects_Counter + 20

; Compila
$Stripped_I6_Output = StringReplace ($I6_Output, @ScriptDir & "\", "")
$Compiler_Parameters =  " -v" & $ZM_Option & " $MAX_OBJECTS=" & $Max_Objects_Var
ShellExecuteWait (@ScriptDir & "\inform.exe", $Stripped_I6_Output & $Compiler_Parameters, "")
;MsgBox(0, "", @ScriptDir & "\inform.exe " & $Stripped_I6_Output & $Compiler_Parameters)
if FileExists ($ZM_Output) Then
	MsgBox (0, "Coversione OK", "La conversione è andata a buon fine!")
Else
	MsgBox (16, "ERRORE!", "Qualcosa è andato storto, la compilazione non è riuscita!")
EndIf
EndFunc
