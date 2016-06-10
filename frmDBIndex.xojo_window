#tag Window
Begin Window frmDBIndex
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   500
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "Set Database Index"
   Visible         =   True
   Width           =   700
   Begin PushButton btnSave
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   508
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
      Top             =   459
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnClose
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   600
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
      Top             =   459
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Timer tmrPing
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   2
      Period          =   60000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Listbox lstIndex
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
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   407
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   376
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton btnAllClear
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "All Clear"
      Default         =   False
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   416
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   458
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin GroupBox grpTemplate
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Template"
      Enabled         =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   433
      Underline       =   False
      Visible         =   True
      Width           =   376
      Begin PopupMenu pumTemplate
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpTemplate"
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
         Top             =   455
         Underline       =   False
         Visible         =   True
         Width           =   244
      End
      Begin PushButton btnImport
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Import"
         Default         =   False
         Enabled         =   True
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpTemplate"
         Italic          =   False
         Left            =   296
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
         Top             =   458
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin GroupBox grpEdit
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Edit"
      Enabled         =   True
      Height          =   407
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   416
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "メイリオ"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   264
      Begin TextField txtId
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
         Left            =   436
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   82
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   224
      End
      Begin TextField txtName
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
         Left            =   436
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
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
         Top             =   182
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   224
      End
      Begin PopupMenu pumType
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
         Left            =   436
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   282
         Underline       =   False
         Visible         =   True
         Width           =   224
      End
      Begin PushButton btnAdd
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Add"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   580
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   345
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnDelete
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Delete"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   580
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   379
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnUp
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Move Up"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   436
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   345
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnDown
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Move Down"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   436
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   379
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label lblId
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   436
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "ID: (Alphanumeric Characters Only)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   224
      End
      Begin Label lblName
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   436
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         Text            =   "Name:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   150
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   224
      End
      Begin Label lblType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEdit"
         Italic          =   False
         Left            =   436
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         Text            =   "Type:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "メイリオ"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   250
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   224
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  listClear()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub addTemplate(id As Integer)
		  
		  Select Case id
		  Case 0 // Books
		    
		    lstIndex.AddRow(Array("isbn", "ISBN", "TINYTEXT UNICODE"))
		    lstIndex.AddRow(Array("title", "タイトル", "TEXT UNICODE"))
		    lstIndex.AddRow(Array("title_kana", "タイトルカナ", "TEXT UNICODE"))
		    lstIndex.AddRow(Array("subtitle", "サブタイトル", "TEXT UNICODE"))
		    lstIndex.AddRow(Array("volume", "巻", "TINYINT UNSIGNED"))
		    lstIndex.AddRow(Array("writer", "作者", "TEXT UNICODE"))
		    lstIndex.AddRow(Array("writer_kana", "作者カナ", "TEXT UNICODE"))
		    lstIndex.AddRow(Array("writer2", "作者2", "TEXT UNICODE"))
		    lstIndex.AddRow(Array("writer2_kana", "作者2カナ", "TEXT UNICODE"))
		    
		    '分類コード
		    '分類
		    '発行所
		    'レーベル
		    'シリーズ
		    'サイズ
		    '購入・未購入
		    '定価
		    '消費税
		    '購入価格
		    '消費税
		    'ページ数
		    '内容
		    'リンク
		    '初版発行日
		    '発行予定日
		    '保管場所
		    '貸出場所
		    '貸出日
		    '既読未読
		    '読書開始日
		    '読書終了日
		    '備考
		    
		  Case 1 // Parts
		    
		    lstIndex.AddRow(Array("code", "管理コード", "TINYTEXT UNICODE"))
		    
		    '型番
		    'メーカー
		    'パッケージ
		    'シリーズ
		    '値
		    'グレード
		    '在庫数量
		    '推奨在庫個数
		    '単位
		    '保管方法
		    '保管場所
		    '更新日時
		    '継続購入
		    '概要
		    'メモ
		    '外部データシート
		    'データシート
		    'CAD1
		    'CAD2
		    '購入先1
		    '購入先2
		    '購入先3
		    '購入先4
		    '購入先5
		    
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub listClear()
		  
		  lstIndex.DeleteAllRows
		  lstIndex.ColumnCount = 3
		  lstIndex.InitialValue = ReplaceAll("ID,Name,Type", ",", Chr(9))
		  
		  // ID Default
		  lstIndex.AddRow(Array("id", "ID", "BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT"))
		  
		  // Type Default
		  pumType.DeleteAllRows
		  pumType.AddRow("TINYTEXT UNICODE")
		  pumType.AddRow("TEXT UNICODE")
		  pumType.AddRow("MEDIUMTEXT UNICODE")
		  pumType.AddRow("LONGTEXT UNICODE")
		  
		  pumType.AddRow("DATETIME")
		  pumType.AddRow("DATE")
		  pumType.AddRow("TIME")
		  
		  pumType.AddRow("TINYINT")
		  pumType.AddRow("TINYINT UNSIGNED")
		  pumType.AddRow("SMALLINT")
		  pumType.AddRow("SMALLINT UNSIGNED")
		  pumType.AddRow("MEDIUMINT")
		  pumType.AddRow("MEDIUMINT UNSIGNED")
		  pumType.AddRow("INT")
		  pumType.AddRow("INT UNSIGNED")
		  pumType.AddRow("BIGINT")
		  pumType.AddRow("BIGINT UNSIGNED")
		  
		  pumType.ListIndex = 0
		  
		  // Set Template
		  pumTemplate.DeleteAllRows
		  pumTemplate.AddRow("蔵書管理テンプレート")
		  pumTemplate.AddRow("部品在庫管理テンプレート")
		  
		  pumTemplate.ListIndex = 0
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events btnSave
	#tag Event
		Sub Action()
		  
		  Dim index() As String
		  Dim name() As String
		  Dim type() As String
		  
		  For i As Integer = 0 To lstIndex.ListCount - 1
		    index.Append(lstIndex.Cell(i, 0))
		    name.Append(lstIndex.Cell(i, 1))
		    type.Append(lstIndex.Cell(i, 2))
		  Next
		  
		  App.tblDataInd = index
		  App.tblDataName = name
		  App.tblDataType = type
		  
		  frmDBIndex.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnClose
	#tag Event
		Sub Action()
		  
		  Quit()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrPing
	#tag Event
		Sub Action()
		  
		  App.dbPing
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAllClear
	#tag Event
		Sub Action()
		  
		  listClear()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImport
	#tag Event
		Sub Action()
		  
		  Dim id As Integer = pumTemplate.ListIndex
		  listClear()
		  addTemplate(id)
		  
		  MsgBox "Imported"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAdd
	#tag Event
		Sub Action()
		  
		  If txtId.Text <> "" And txtName.Text <> "" And pumType.Text <> "" Then
		    
		    Dim chk As Boolean = True
		    If lstIndex.ListCount > 0 Then
		      // ID Check
		      For i As Integer = 0 To lstIndex.ListCount - 1
		        If lstIndex.Cell(i, 0) = txtId.Text Then
		          chk = False
		          MsgBox "ID is Already Exists"
		        End If
		      Next
		      
		    End If
		    
		    If chk Then
		      lstIndex.AddRow(Array(txtId.Text, txtName.Text, pumType.Text))
		    End If
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDelete
	#tag Event
		Sub Action()
		  
		  //Delete
		  
		  If lstIndex.ListIndex = -1 Then
		    // Not Select
		    MsgBox "Please Select"
		    
		  ElseIf lstIndex.ListIndex = 0 Then
		    // Select ID
		    MsgBox "You Can Not Delete 'ID'"
		    
		  Else
		    // Delete
		    lstIndex.RemoveRow(lstIndex.ListIndex)
		    
		  End If
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnUp
	#tag Event
		Sub Action()
		  
		  // Move Up
		  
		  If lstIndex.ListIndex = -1 Then
		    // Not Select
		    MsgBox "Please Select"
		    
		  ElseIf lstIndex.ListIndex = 0 Then
		    // Move ID
		    MsgBox "You Can Not Move Data"
		    
		  ElseIf lstIndex.ListIndex = 1 Then
		    // Move ID
		    MsgBox "You Can Not Move Data"
		    
		  Else
		    // Move Up
		    Dim tmp(3) As String
		    tmp(0) = lstIndex.Cell(lstIndex.ListIndex, 0)
		    tmp(1) = lstIndex.Cell(lstIndex.ListIndex, 1)
		    tmp(2) = lstIndex.Cell(lstIndex.ListIndex, 2)
		    
		    Dim i As Integer = lstIndex.ListIndex
		    lstIndex.RemoveRow(i)
		    lstIndex.InsertRow(i - 1, tmp(0))
		    lstIndex.Cell(i - 1, 1) = tmp(1)
		    lstIndex.Cell(i - 1, 2) = tmp(2)
		    
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDown
	#tag Event
		Sub Action()
		  
		  // Move Down
		  
		  If lstIndex.ListIndex = -1 Then
		    // Not Select
		    MsgBox "Please Select"
		    
		  ElseIf lstIndex.ListIndex = 0 Then
		    // Move ID
		    MsgBox "You Can Not Move Data"
		    
		  ElseIf lstIndex.ListIndex = lstIndex.ListCount - 1 Then
		    // Move ID
		    MsgBox "You Can Not Move Data"
		    
		  Else
		    // Move Up
		    Dim tmp(3) As String
		    tmp(0) = lstIndex.Cell(lstIndex.ListIndex, 0)
		    tmp(1) = lstIndex.Cell(lstIndex.ListIndex, 1)
		    tmp(2) = lstIndex.Cell(lstIndex.ListIndex, 2)
		    
		    Dim i As Integer = lstIndex.ListIndex
		    lstIndex.RemoveRow(i)
		    lstIndex.InsertRow(i + 1, tmp(0))
		    lstIndex.Cell(i + 1, 1) = tmp(1)
		    lstIndex.Cell(i + 1, 2) = tmp(2)
		    
		  End If
		  
		  
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
