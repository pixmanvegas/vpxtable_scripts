Option Explicit
On Error Resume Next
ExecuteGlobal GetTextFile("controller.vbs")
If Err Then MsgBox "You need the controller.vbs in order to run this table, available in the vp10 package"
On Error Goto 0


Dim VarRol
If Table1.ShowDT = true then VarRol=0 Else VarRol=1

SolCallback(11) = "setlampF10"
SolCallback(12) = "setlampF11"
SolCallback(13) = "setlampF12"
SolCallback(14) = "setlampF13"
SolCallback(15) = "setlampF14"
SolCallback(17) = "setlampF16"
SolCallback(18) = "setlampF17"
SolCallback(19) = "setlampF18"
SolCallback(20) = "setlampF19"
SolCallback(21) = "setlampF20"
'SolCallback(22) = "setlampF21"
SolCallback(23) = "setlampF22"
SolCallback(24) = "setlampF23"
SolCallback(25) = "setlampF24"
SolCallback(sLRFlipper) = "SolRFlipper"
 SolCallback(sLLFlipper) = "SolLFlipper"

	Sub SolLFlipper(Enabled)
		If Enabled Then
		PlaySound SoundFX("FlipperUp",DOFFlippers)
		LeftFlipper.RotateToEnd
		Flipper1.RotateToEnd
     Else
		 PlaySound SoundFX("FlipperDown",DOFFlippers)
		 LeftFlipper.RotateToStart
		 Flipper1.RotateToStart
     End If
	End Sub

	Sub SolRFlipper(Enabled)
     If Enabled Then
		PlaySound SoundFX("FlipperUp",DOFFlippers)
		 RightFlipper.RotateToEnd
     Else
		 PlaySound SoundFX("FlipperDown",DOFFlippers)
		 RightFlipper.RotateToStart
     End If
	End Sub


Sub setlampF10(Enabled)
	If Enabled then F10.State=1 Else F10.State=0
End Sub

Sub setlampF11(Enabled)
	If Enabled then F11.State=1 Else F11.State=0
End Sub

Sub setlampF12(Enabled)
	If Enabled then F12.State=1 Else F12.State=0
End Sub

Sub setlampF13(Enabled)
	If Enabled then F13.State=1 Else F13.State=0
End Sub

Sub setlampF14(Enabled)
	If Enabled then F14.State=1 Else F14.State=0
End Sub

Sub setlampF16(Enabled)
	If Enabled then F16.State=1:F16a.visible=1 Else F16.State=0:F16a.visible=0
End Sub

Sub setlampF17(Enabled)
	If Enabled then F17.State=1:F17a.visible=1 Else F17.State=0:F17a.visible=0
End Sub

Sub setlampF18(Enabled)
	If Enabled then F18.State=1:F18a.visible=1 Else F18.State=0:F18a.visible=0
End Sub

Sub setlampF19(Enabled)
	If Enabled then F19.State=1:F19b.State=1:F19c.visible=1 Else F19.State=0:F19b.State=0:F19c.visible=0
End Sub

Sub setlampF10(Enabled)
	If Enabled then F10.State=1 Else F10.State=0
End Sub

Sub setlampF20(Enabled)
	If Enabled then F20.State=1:F20b.State=1:F20c.visible=1 Else F20.State=0:F20b.State=0:F20c.visible=0
End Sub

'Sub setlampF21(Enabled)
	'If Enabled then F21.State=1 Else F21.State=0
'End Sub

Sub setlampF22(Enabled)
	If Enabled then F22.State=1:F22b.State=1:F22c.visible=1 Else F22.State=0:F22b.State=0:F22c.visible=0
End Sub

Sub setlampF23(Enabled)
	If Enabled then F23.State=1:F23b.State=1:F23c.visible=1 Else F23.State=0:F23b.State=0:F23c.visible=0
End Sub

Sub setlampF24(Enabled)
	If Enabled then F24.State=1:F24c.visible=1 Else F24.State=0:F24c.visible=0
End Sub
		.Games(cGameName).Settings.Value("rol") = VarRol

	vpmMapLights AllLights
	If Primitive2.TransZ = -100 Then FatsoPos=1:FatsoTimer.Enabled=False
	If Primitive2.TransZ = 0 Then FatsoPos=0:FatsoTimer.Enabled=False


Sub flippers_Timer()
	LeftFlipperP.objRotZ = LeftFlipper.CurrentAngle-90
	LeftFlipperP1.objRotZ = Flipper1.CurrentAngle-90
	RightFlipperP.objRotZ = RightFlipper.CurrentAngle-90
End Sub