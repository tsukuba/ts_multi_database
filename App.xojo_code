#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  // App Setting
		  App.AutoQuit = True
		  
		  
		  // DB
		  dbClose()
		  db=New MySQLCommunityServer
		  
		  
		  // Read Settings
		  confRead()
		  
		  
		  // Show Window
		  frmMain.Hide
		  frmLog.Hide
		  
		  frmLog.Left = frmMain.Left
		  frmLog.Top = frmMain.Top+frmMain.Height+60
		  
		  frmMain.Show
		  frmLog.Show
		  frmMain.SetFocus
		  
		  
		  // Show Information
		  //showInfo()
		  
		  
		  
		  // Connect to DB
		  dbConnect()
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub confRead()
		  //
		  // ERROR_CODE 10XXX
		  
		  
		  // mkdir
		  fileSettingFolder = SpecialFolder.ApplicationData
		  If Not fileSettingFolder.Exists Then
		    //frmLog.addLog(1,10101,New Date,"Not Found Application Data Folder: " + fileSettingFolder.NativePath)
		    
		  End If
		  
		  #If TargetLinux Then
		    fileSettingFolder = fileSettingFolder.Child("." + CompanyName)
		  #Else
		    fileSettingFolder = fileSettingFolder.Child(CompanyName)
		  #Endif
		  
		  If Not fileSettingFolder.Exists Then
		    fileSettingFolder.CreateAsFolder
		    //frmLog.addLog(3,10301,New Date,"Config Data Folder Created: " + fileSettingFolder.NativePath)
		  End If
		  
		  fileSettingFolder = fileSettingFolder.Child(AppName)
		  
		  If Not fileSettingFolder.Exists Then
		    fileSettingFolder.CreateAsFolder
		    //frmLog.addLog(3,10301,New Date,"Config Data Folder Created: " + fileSettingFolder.NativePath)
		  End If
		  
		  fileConnectFolder = fileSettingFolder.Child("Connections")
		  If Not fileConnectFolder.Exists Then
		    fileConnectFolder.CreateAsFolder
		    //frmLog.addLog(3,10301,New Date,"Connections Data Folder Created: " + fileConnectFolder.NativePath)
		  End If
		  
		  
		  // Setting File
		  fileSettingFile = fileSettingFolder.Child("Settings.xml")
		  fileConnectSettingFile = fileSettingFolder.Child("Connection.xml")
		  
		  If fileSettingFile <> Nil Then
		    If Not fileSettingFile.Exists Then
		      
		      
		    Else
		      // Read Setting File
		      
		      
		      
		    End If
		    
		    
		    // Command line arguments
		    
		    
		    If fileConnectSettingFile <> Nil Then
		      If Not fileConnectSettingFile.Exists Then
		        // DB Setting
		        frmDBConf.ShowModal
		        
		        Dim xml As New XmlDocument
		        Dim root As XmlNode
		        root = xml.AppendChild(xml.CreateElement("SETTING"))
		        root.SetAttribute("DEFAULT", fileConnectFile.Name)
		        root.SetAttribute("CONNECT", "AUTO")
		        confXMLSave(fileConnectSettingFile, xml)
		        
		      Else
		        // Read DB Setting
		        Dim xml As XmlDocument
		        xml = App.confXMLLoad(fileConnectSettingFile)
		        fileConnectFile = fileConnectFolder.Child(xml.DocumentElement.GetAttribute("DEFAULT"))
		        If xml.DocumentElement.GetAttribute("CONNECT") <> "AUTO" Then
		          // Show DB Select
		          frmDBSelect.ShowModal
		          
		        End If
		      End If
		    End If
		    
		    // Read Connection File
		    confReadConnect()
		    
		  End If
		  
		  
		  // API Server Mode
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub confReadConnect()
		  // Read Connection File
		  
		  If fileConnectFile <> Nil And fileConnectFile.Exists Then
		    
		    Dim xml As XmlDocument
		    xml = App.confXMLLoad(fileConnectFile)
		    
		    // xml.DocumentElement.GetAttribute("MODE") // ONLY MYSQL
		    
		    db.Host = xml.DocumentElement.Child(0).GetAttribute("HOST")
		    db.Port = Val(xml.DocumentElement.Child(1).GetAttribute("PORT"))
		    db.DatabaseName = xml.DocumentElement.Child(2).GetAttribute("NAME")
		    db.UserName = xml.DocumentElement.Child(3).GetAttribute("USER")
		    db.Password = xml.DocumentElement.Child(4).GetAttribute("PASS")
		    
		    db.Timeout = 5
		    
		  Else
		    // Error
		    MsgBox "Not Found Connect Setting File"
		    
		    // DB Setting
		    frmDBConf.ShowModal
		    
		    Dim xml As New XmlDocument
		    Dim root As XmlNode
		    root = xml.AppendChild(xml.CreateElement("SETTING"))
		    root.SetAttribute("DEFAULT", fileConnectFile.Name)
		    root.SetAttribute("CONNECT", "AUTO")
		    confXMLSave(fileConnectSettingFile, xml)
		    
		    Quit
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function confXMLLoad(file As FolderItem) As XmlDocument
		  //
		  // ERROR_CODE 11XXX
		  
		  
		  Dim xml As New XmlDocument
		  
		  Try
		    xml.LoadXml(file)
		  Catch e As XmlException
		    MsgBox("XML Read Error: " + e.Message)
		    Exit
		  End Try
		  
		  Return xml
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub confXMLSave(file As FolderItem, xml As XmlDocument)
		  //
		  // ERROR_CODE 12XXX
		  
		  
		  If Not file.Exists Then
		    //frmLog.addLog(3,12301,New Date,"Config File Created: " + file.NativePath)
		    
		  Else
		    //frmLog.addLog(3,12301,New Date,"Config File Overwrited: " + file.NativePath)
		    
		  End If
		  
		  xml.SaveXml(file)
		  
		  // Version
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dbCheck()
		  
		  // DB Check
		  
		  If Not sqlIsTableExists(tblLog) Then
		    sqlTableCreate(tblLog, tblLogInd)
		  End If
		  
		  'If Not sqlIsTableExists(tblCategory) Then
		  'sqlTableCreate(tblCategory, tblCategoryInd)
		  'End If
		  
		  If Not sqlIsTableExists(tblData) Then
		    frmDBIndex.ShowModal
		    sqlTableCreate(tblData, tblDataInd)
		  Else
		    // Set Index From DB
		    tblDataInd = sqlShowCreateTable(tblData)
		    
		    // Set Index Name From DB
		    //MsgBox tblDataInd
		    
		  End If
		  
		  
		  // Show DB
		  
		  showDBMain()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dbClose()
		  //
		  // ERROR_CODE 21XXX
		  
		  If db <> Nil Then
		    frmLog.addLog(1,21101,New Date,"Closed Connection to MySQL Server")
		    db.Close
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dbConnect()
		  //
		  // ERROR_CODE 20XXX
		  
		  frmLog.addLog(4,20401,New Date,"Connection Start to MySQL Server")
		  
		  If db.Connect Then
		    // Use the database
		    IsConnected = True
		    frmLog.addLog(4,20402,New Date,"Connected to MySQL Server")
		    dbCheck()
		  Else
		    // Connection error
		    IsConnected = False
		    frmLog.addLog(1,20101,New Date,"Connection Failure to MySQL Server: "+db.ErrorMessage)
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dbDelete()
		  
		  
		  sqlTableDelete(tblLog)
		  
		  sqlTableDelete(tblData)
		  
		  MsgBox "All Database Table Deleted"
		  
		  Quit()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function dbIsConnected() As Boolean
		  If db Is Nil Then
		    IsConnected = False
		  End If
		  
		  Return IsConnected
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dbPing()
		  //
		  // ERROR_CODE 21XXX
		  
		  If dbIsConnected Then
		    db.SQLExecute("SHOW STATUS")
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,21101,New Date,"SQL Error: " + db.ErrorMessage)
		    dbClose()
		  End If
		  
		  dbClose()
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveQuotes(text As String) As String
		  
		  text = Trim(text)
		  
		  If Left(text, 1) = Right(text, 1) Then
		    If Left(text, 1) = Chr(34) Or Left(text, 1) = Chr(39) Or Left(text, 1) = Chr(96) Then
		      Return Mid(text, 2, Len(text) - 2)
		    End If
		  End If
		  
		  Return text
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub showDBMain()
		  //
		  // ERROR_CODE 40XXX
		  
		  frmMain.Clear()
		  
		  Dim count As UInt64
		  Dim rs As RecordSet
		  count = sqlDataCount(tblData)
		  Dim stp As Integer
		  stp = 100
		  
		  
		  // Set List InitialValue
		  If frmMain.lstMain.InitialValue = "" Then
		    Dim index As String
		    If tblDataName <> "" Then
		      frmLog.addLog(4,40401,New Date,"Set SQL Index")
		      index = ReplaceAll(tblDataName, ",", Chr(9))
		    Else
		      frmLog.addLog(3,40301,New Date,"Set SQL Index Using Create Table")
		      For Each s As String In Split(Trim(tblDataInd), ",")
		        Dim w() As String
		        w = Split(Trim(s), " ")
		        If Lowercase(Trim(w(0))) <> "primary" And Lowercase(Trim(w(1))) <> "key" Then
		          If index <> "" Then
		            index = index + ","
		          End If
		          index = index + RemoveQuotes(w(0))
		        End If
		      Next
		      index = ReplaceAll(index, ",", Chr(9))
		    End If
		    frmMain.lstMain.InitialValue =index
		  End If
		  
		  
		  If stp < 1 Then
		    stp = 100
		  End If
		  
		  For ofs As Integer=0 To count Step stp
		    if ofs + stp <= count Then
		      rs = sqlDataSelect(tblData, ofs, stp, "")
		    Else
		      If ofs <> count Then
		        rs = sqlDataSelect(tblData, ofs, count - ofs, "")
		      Else
		        rs = Nil
		      End If
		    End If
		    
		    If rs <> Nil Then
		      While Not rs.EOF
		        Dim str() As String
		        For i As UInt32 = 0 To rs.FieldCount - 1
		          str.Append(rs.IdxField(i + 1).StringValue)
		        Next
		        frmMain.addlistMain(str)
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		  Next
		  
		  frmLog.addLog(4,40401,New Date,"SQL Data Show Completed: " + tblData + " " + Str(count))
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlDataCount(table As String) As UInt64
		  //
		  // ERROR_CODE 60XXX
		  
		  frmLog.addLog(4,60401,New Date,"SQL Data Count Check: " + table)
		  
		  If dbIsConnected Then
		    Dim rs As RecordSet
		    rs = db.SQLSelect("SELECT COUNT(*) FROM "+table)
		    
		    If db.Error Then
		      frmLog.addLog(1,60101,New Date,"SQL Error: " + db.ErrorMessage)
		      Return 0
		    End If
		    
		    If rs <> Nil Then
		      While Not rs.EOF
		        frmLog.addLog(4,60401,New Date,"SQL Data Counted: " + table + " " + rs.IdxField(1).StringValue)
		        Return Val(rs.IdxField(1).StringValue)
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,60102,New Date,"SQL Error: " + db.ErrorMessage)
		    Return 0
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub sqlDataDelete(table As String, where As String)
		  //
		  // ERROR_CODE 61XXX
		  
		  frmLog.addLog(4,61401,New Date,"SQL Data Delete: " + table + " " + where)
		  
		  If where <> "" Then
		    where = " WHERE "+where
		  End If
		  
		  If dbIsConnected Then
		    db.SQLExecute("DELETE FROM " + table  + where)
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,61101,New Date,"SQL Error: " + db.ErrorMessage)
		    Return
		  End If
		  
		  frmLog.addLog(3,61301,New Date,"SQL Data Deleted: " + table + " " + where)
		  Return
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub sqlDataInsert(table As String, name As String, value As String)
		  //
		  // ERROR_CODE 62XXX
		  
		  frmLog.addLog(3,62301,New Date,"SQL Data Insert: " + table + " " + name + " " + value)
		  
		  If dbIsConnected Then
		    db.SQLExecute("INSERT INTO " + table + "(" + name + ") VALUES (" + value + ")")
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,62101,New Date,"SQL Error: " + db.ErrorMessage)
		  Else
		    frmLog.addLog(3,62302,New Date,"SQL Data Inserted: " + table + " " + name + " " + value)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlDataSelect(table As String, offset As UInt64, limit As UInt64, where As String) As RecordSet
		  //
		  // ERROR_CODE 63XXX
		  
		  frmLog.addLog(4,63401,New Date,"SQL Table Select: " + table + " " + Str(offset) + " " + Str(limit) + " " + where)
		  
		  If where <> "" Then
		    where = " WHERE "+where
		  End If
		  
		  If dbIsConnected Then
		    Return db.SQLSelect("SELECT * FROM " + table  + " LIMIT " + Str(limit) + " OFFSET " + Str(offset) + where)
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,63101,New Date,"SQL Error: " + db.ErrorMessage)
		    Return Nil
		  End If
		  
		  frmLog.addLog(3,63301,New Date,"SQL Table Not Found: " + table)
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function sqlDataSelectAll(table As String, where As String) As RecordSet
		  //
		  // ERROR_CODE 64XXX
		  
		  frmLog.addLog(4,64401,New Date,"SQL Table Select All: " + table + " " + where)
		  
		  If where <> "" Then
		    where = " WHERE "+where
		  End If
		  
		  If dbIsConnected Then
		    Return db.SQLSelect("SELECT * FROM " + table + where)
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,64101,New Date,"SQL Error: " + db.ErrorMessage)
		    Return Nil
		  End If
		  
		  frmLog.addLog(3,64301,New Date,"SQL Table Not Found: " + table)
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub sqlDataUpdate(table As String, value As String, where As String)
		  //
		  // ERROR_CODE 65XXX
		  
		  frmLog.addLog(3,64501,New Date,"SQL Data Update: " + table + " " + value + " " + where)
		  
		  If dbIsConnected Then
		    db.SQLExecute("UPDATE "+table+" SET "+value+" WHERE " + where)
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,65101,New Date,"SQL Error: " + db.ErrorMessage)
		  Else
		    frmLog.addLog(3,65302,New Date,"SQL Data Updated: " + table + " " + value + " " + where)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlIsTableExists(table As String) As Boolean
		  //
		  // ERROR_CODE 50XXX
		  
		  frmLog.addLog(4,50401,New Date,"SQL Table Existence Check: " + table)
		  
		  If dbIsConnected Then
		    Dim rs As RecordSet
		    rs = db.SQLSelect("SHOW TABLES LIKE '"+table+"'")
		    
		    If db.Error Then
		      frmLog.addLog(1,50101,New Date,"SQL Error: " + db.ErrorMessage)
		      Return False
		    End If
		    
		    If rs <> Nil Then
		      While Not rs.EOF
		        If trim(rs.IdxField(1).StringValue) = table Then
		          frmLog.addLog(4,50402,New Date,"SQL Table Found: " + table)
		          Return True
		        End If
		        rs.MoveNext
		      Wend
		      rs.Close
		    End If
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,50102,New Date,"SQL Error: " + db.ErrorMessage)
		    Return False
		  End If
		  
		  frmLog.addLog(3,50301,New Date,"SQL Table Not Found: " + table)
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlShowCreateTable(tblName As String) As String
		  //
		  // ERROR_CODE 51XXX
		  
		  Dim s As String
		  
		  frmLog.addLog(4,51401,New Date,"SQL Table Check: " + tblName)
		  
		  If dbIsConnected Then
		    Dim rs As RecordSet
		    rs = db.SQLSelect("SHOW CREATE TABLE "+tblName)
		    
		    If db.Error Then
		      frmLog.addLog(1,51101,New Date,"SQL Error: " + db.ErrorMessage)
		      Return ""
		    End If
		    
		    If rs <> Nil Then
		      If Not rs.EOF Then
		        frmLog.addLog(4,51401,New Date,"SQL Table Index Found: " + tblName)
		        s = rs.IdxField(2).StringValue
		      End If
		      rs.Close
		    End If
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,51102,New Date,"SQL Error: " + db.ErrorMessage)
		    Return ""
		  End If
		  
		  // Delete CR/LF
		  s = ReplaceLineEndings(s, EndOfLine)
		  
		  Dim lines() As String
		  lines = Split(s, EndOfLine)
		  
		  If Left(lines(0), 12) = "CREATE TABLE" And Right(lines(0), 1) = "(" And Left(lines(lines.Ubound), 1) = ")" Then
		    lines.Remove(lines.Ubound)
		    lines.Remove(0)
		    s = Trim(Join(lines, ""))
		    Return s
		  Else
		    frmLog.addLog(1,51103,New Date,"SQL Error: Don't Show Create Table " + db.ErrorMessage)
		    Return ""
		  End If
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub sqlTableCreate(table As String, Query As String)
		  //
		  // ERROR_CODE 52XXX
		  
		  frmLog.addLog(3,52301,New Date,"SQL Table Create: " + table + " (" + query + ")")
		  
		  If dbIsConnected Then
		    db.SQLExecute("CREATE TABLE " + table + " (" + query + ")")
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,52102,New Date,"SQL Error: " + db.ErrorMessage)
		  Else
		    frmLog.addLog(4,52401,New Date,"SQL Table Created: " + table + " (" + query + ")")
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub sqlTableDelete(table As String)
		  //
		  // ERROR_CODE 53XXX
		  
		  frmLog.addLog(3,53301,New Date,"SQL Table Delete: " + table)
		  
		  If dbIsConnected Then
		    db.SQLExecute("DROP TABLE " + table)
		  End If
		  
		  If db.Error Then
		    frmLog.addLog(1,53102,New Date,"SQL Error: " + db.ErrorMessage)
		  Else
		    frmLog.addLog(4,53401,New Date,"SQL Table Deleted: " + table)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WasDoubleClick() As Boolean
		  dim doubleClickTime as Integer
		  
		  #if TargetCocoa then
		    doubleClickTime=30
		  #elseif TargetCarbon then
		    #if not TargetMachO then
		      Declare Function GetDblTime Lib "CarbonLib" () as Integer
		      doubleClickTime = GetDblTime()
		    #else
		      Declare Function GetDblTime Lib "Carbon" () as Integer
		      doubleClickTime = GetDblTime()
		    #endif
		  #elseif TargetMacOS then
		    Declare Function GetDblTime Lib "InterfaceLib" () as Integer
		    doubleClickTime = GetDblTime()
		  #elseif TargetWin32 then
		    Declare Function GetDoubleClickTime Lib "User32.DLL" () as Integer
		    doubleClickTime = GetDoubleClickTime() / 1000 * 60
		  #endif
		  
		  if (Ticks - mLastClickTicks) <= doubleClickTime then
		    return true
		  end if
		  mLastClickTicks = Ticks
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private db As MySQLCommunityServer
	#tag EndProperty

	#tag Property, Flags = &h0
		dbConfCloseMode As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		dbSelectCloseMode As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		defCheck() As Checkbox.CheckedStates
	#tag EndProperty

	#tag Property, Flags = &h0
		defData As String
	#tag EndProperty

	#tag Property, Flags = &h0
		defIndex As UInt64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		editId() As UInt64
	#tag EndProperty

	#tag Property, Flags = &h0
		editMode As UInt8 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		fileConnectFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		fileConnectFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		fileConnectSettingFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		fileSettingFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		fileSettingFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IsConnected As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastClickTicks As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tblCategory As String = "mdb_Category"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tblCategoryInd As String
	#tag EndProperty

	#tag Property, Flags = &h0
		tblData As String = "mdb_Data"
	#tag EndProperty

	#tag Property, Flags = &h0
		tblDataInd As String = "id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, time DATETIME NOT NULL, text TEXT UNICODE NOT NULL, d1 TEXT UNICODE, d2 TEXT UNICODE, d3 TEXT UNICODE, d4 TEXT UNICODE, d5 TEXT UNICODE"
	#tag EndProperty

	#tag Property, Flags = &h0
		tblDataName As String = "ID,Time,ISBN,データ1,データ2,データ3,データ4,データ5"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tblLog As String = "mdb_Log"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tblLogInd As String = "id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, level TINYINT UNSIGNED NOT NULL, code SMALLINT UNSIGNED NOT NULL, time DATETIME NOT NULL, msg TEXT UNICODE NOT NULL"
	#tag EndProperty


	#tag Constant, Name = AppName, Type = String, Dynamic = False, Default = \"MultiDatabase", Scope = Private
	#tag EndConstant

	#tag Constant, Name = CompanyName, Type = String, Dynamic = False, Default = \"TsukubaScience", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"\xE5\x89\x8A\xE9\x99\xA4", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"\xE5\x89\x8A\xE9\x99\xA4"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"\xE5\x89\x8A\xE9\x99\xA4"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"\xE7\xB5\x82\xE4\xBA\x86", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"\xE7\xB5\x82\xE4\xBA\x86"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="dbConfCloseMode"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dbSelectCloseMode"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="defData"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tblData"
			Group="Behavior"
			InitialValue="mdb_Data"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tblDataInd"
			Group="Behavior"
			InitialValue="id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, time DATETIME NOT NULL, text TEXT UNICODE NOT NULL, d1 TEXT UNICODE, d2 TEXT UNICODE, d3 TEXT UNICODE, d4 TEXT UNICODE, d5 TEXT UNICODE"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tblDataName"
			Group="Behavior"
			InitialValue="ID,Time,ISBN,データ1,データ2,データ3,データ4,データ5"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
