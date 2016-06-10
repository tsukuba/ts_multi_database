#tag Window
Begin Window frmEdit
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   600
   Placement       =   1
   Resizeable      =   True
   Title           =   "Edit"
   Visible         =   True
   Width           =   600
   Begin Listbox lstEdit
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   183
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton btnEdit
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Edit"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   408
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   358
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnClose
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   500
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   358
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin GroupBox grpMode
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Edit Mode"
      Enabled         =   True
      Height          =   58
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   334
      Underline       =   False
      Visible         =   True
      Width           =   319
      Begin RadioButton rbnMode1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "名称未設定"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpMode"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   361
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin RadioButton rbnMode2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "名称未設定"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpMode"
         Italic          =   False
         Left            =   183
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   361
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin Label lblEdit
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "名称未設定"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin Separator sepEdit
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   4
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "lblEdit"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   30
         Visible         =   True
         Width           =   560
      End
   End
   Begin GroupBox grpEdit
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Overwrite"
      Enabled         =   True
      Height          =   81
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   241
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin PopupMenu pumEdit
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         InitialValue    =   ""
         Italic          =   False
         Left            =   40
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   277
         Underline       =   False
         Visible         =   True
         Width           =   237
      End
      Begin TextField txtEdit
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   323
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   277
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   237
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		  App.defIndex = frmEdit.pumEdit.ListIndex
		  
		  App.defData = ""
		  
		  // Clear Check Array Variable
		  If mode = 1 Then
		    ReDim App.defCheck(-1)
		  End If
		  
		  
		  For row As Integer = 0 To frmEdit.lstEdit.ListCount - 1
		    App.defData = App.defData + frmEdit.lstEdit.Cell(row, 1)
		    If row < frmEdit.lstEdit.ListCount - 1 Then
		      App.defData = App.defData + ","
		    End If
		    
		    If mode = 1 Then
		      // Save Check Status
		      App.defCheck.Append(frmEdit.lstEdit.CellState(row, 2))
		    End If
		  Next
		  
		  If frmEdit.rbnMode2.Value = True Then
		    App.showDBMain
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  mode = App.editMode
		  id = App.editId
		  
		  
		  If mode = 0 Then
		    // New Edit Mode
		    frmEdit.lblEdit.Text = "New"
		    frmEdit.Title = frmEdit.Title + " - New"
		    frmEdit.lstEdit.ColumnCount = 2
		    frmEdit.lstEdit.InitialValue = "Index"+Chr(9)+"Data"
		    frmEdit.lstEdit.ColumnSortDirection(0) = 0
		    
		    
		    frmEdit.rbnMode1.Enabled = True
		    frmEdit.rbnMode2.Enabled = True
		    frmEdit.rbnMode1.Caption = "single"
		    frmEdit.rbnMode2.Caption = "multiple"
		    frmEdit.rbnMode1.Value = True
		    
		    
		    
		    
		  ElseIf mode = 1 Then
		    // Single Edit Mode
		    frmEdit.lblEdit.Text = "Single Data"
		    frmEdit.Title = frmEdit.Title + " - Single Data"
		    frmEdit.lstEdit.ColumnCount = 3
		    frmEdit.lstEdit.InitialValue = "Index"+Chr(9)+"Data"+Chr(9)+"Update"
		    frmEdit.lstEdit.ColumnSortDirection(0) = 0
		    
		    frmEdit.rbnMode1.Enabled = True
		    frmEdit.rbnMode2.Enabled = False
		    frmEdit.rbnMode1.Caption = "single"
		    frmEdit.rbnMode2.Caption = "multiple"
		    frmEdit.rbnMode1.Value = True
		    
		    
		    
		    
		  ElseIf mode = 2 Then
		    // Multiple Edit Mode
		    frmEdit.Title = frmEdit.Title + " - Multiple Data"
		    
		    frmEdit.rbnMode1.Enabled = True
		    frmEdit.rbnMode2.Enabled = True
		    frmEdit.rbnMode1.Caption = "single"
		    frmEdit.rbnMode2.Caption = "multiple"
		    frmEdit.rbnMode1.Value = True
		    
		    
		  End If
		  
		  
		  
		  
		  // Overwrite Menu
		  Dim names() As String
		  names = Split(App.tblDataName, ",")
		  names.Remove(0)
		  frmEdit.pumEdit.AddRows(names)
		  frmEdit.pumEdit.ListIndex = App.defIndex
		  
		  For Each name As String In names
		    frmEdit.lstEdit.AddRow(Array(name))
		  Next
		  
		  
		  // Cell Mode Settings
		  For row As Integer = 0 To frmEdit.lstEdit.ListCount - 1
		    frmEdit.lstEdit.CellType(row, 1) = Listbox.TypeEditable
		    If App.editMode = 1 Then
		      frmEdit.lstEdit.CellType(row, 2) = Listbox.TypeCheckbox
		    End If
		  Next
		  
		  
		  // Read Data to Cell
		  
		  If mode = 0 Then
		    Dim data() As String
		    data() = Split(App.defData, ",")
		    For row As Integer = 0 To frmEdit.lstEdit.ListCount - 1
		      If data.Ubound = frmEdit.lstEdit.ListCount - 1 Then
		        frmEdit.lstEdit.Cell(row, 1) =  data(row)
		      End If
		    Next
		    
		  ElseIf mode = 1 Then
		    Dim rs As RecordSet
		    rs = App.sqlDataSelectAll(App.tblData, "id LIKE '" + Str(id(0)) + "'")
		    If rs <> Nil Then
		      While Not rs.EOF
		        For i As UInt32 = 0 To rs.FieldCount - 1
		          If i > 0 Then
		            frmEdit.lstEdit.Cell(i - 1, 1) = rs.IdxField(i + 1).StringValue
		          End If
		        Next
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		    
		    // Read Check Status
		    If App.defCheck.Ubound > 1 Then
		      For row As Integer = 0 To frmEdit.lstEdit.ListCount - 1
		        frmEdit.lstEdit.CellState(row, 2) = App.defCheck(row)
		      Next
		    End If
		    
		    
		  ElseIf mode = 2 Then
		    
		    
		    
		  End If
		  
		  
		  // Set Focus to Overwrite Text Box
		  frmEdit.txtEdit.SetFocus
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Clear()
		  
		  frmEdit.txtEdit.Text = ""
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub dataEdit()
		  
		  frmEdit.btnEdit.Enabled = False
		  
		  // Escape + * / - . ' :
		  
		  
		  If mode = 0 Then
		    Dim index() As String
		    index() = Split(Trim(App.tblDataInd), ",")
		    
		    Dim qName As String
		    Dim qData As String
		    
		    For row As Integer = 0 To frmEdit.lstEdit.ListCount - 1
		      Dim names() As String
		      names() =Split(Trim(index(row + 1)), " ")
		      
		      If frmEdit.txtEdit.Text <> "" and row = frmEdit.pumEdit.ListIndex Then
		        // Overwrite
		        qName = qName + App.RemoveQuotes(names(0)) + ","
		        qData = qData + "'" + txtEdit.Text + "'" + ","
		        
		      ElseIf  frmEdit.lstEdit.Cell(row, 1) <> "" Then
		        // Write
		        qName = qName + App.RemoveQuotes(names(0)) + ","
		        qData = qData + "'" + frmEdit.lstEdit.Cell(row, 1) + "'" + ","
		      End If
		      
		      
		    Next
		    
		    If Len(qName) > 0 Then
		      qName = Left(qName, Len(qName) -1)
		      qData = Left(qData, Len(qData) -1)
		      App.sqlDataInsert(App.tblData, qName, qData)
		    End If
		    
		    Clear()
		    frmEdit.btnEdit.Enabled = True
		    
		    If frmEdit.rbnMode1.Value = True Then
		      
		      App.showDBMain
		      frmEdit.Close
		    End If
		    
		    
		    
		  ElseIf mode = 1 Then
		    
		    Dim index() As String
		    index() = Split(Trim(App.tblDataInd), ",")
		    
		    Dim qSet As String
		    
		    For row As Integer = 0 To frmEdit.lstEdit.ListCount - 1
		      Dim names() As String
		      names() =Split(Trim(index(row + 1)))
		      
		      If frmEdit.txtEdit.Text <> "" and row = frmEdit.pumEdit.ListIndex Then
		        // Overwrite
		        qSet = qSet + App.RemoveQuotes(names(0)) + "="
		        qSet = qSet + "'" + txtEdit.Text + "'" + ","
		        
		      ElseIf  frmEdit.lstEdit.CellState(row, 2) = CheckBox.CheckedStates.Checked Then
		        // Write
		        qSet = qSet + App.RemoveQuotes(names(0)) + "="
		        qSet = qSet + "'" + frmEdit.lstEdit.Cell(row, 1) + "'" + ","
		      End If
		      
		    Next
		    
		    If Len(qSet) > 0 Then
		      qSet = Left(qSet, Len(qSet) -1)
		      App.sqlDataUpdate(App.tblData, qSet, "id=" + Str(id(0)))
		    End If
		    
		    App.showDBMain
		    frmEdit.Close
		    
		    
		  ElseIf mode = 2 Then
		    
		    
		    
		    
		    
		    
		    
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private id() As UInt64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mode As UInt8 = 0
	#tag EndProperty


#tag EndWindowCode

#tag Events lstEdit
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  If mode = 0 Then
		    frmEdit.lstEdit.EditCell(row, 1)
		    
		  ElseIf mode = 1 Then
		    frmEdit.lstEdit.EditCell(row, 1)
		    
		  End If
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnEdit
	#tag Event
		Sub Action()
		  
		  dataEdit()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnClose
	#tag Event
		Sub Action()
		  
		  frmEdit.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
