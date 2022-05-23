VERSION 5.00
Begin VB.Form Form20 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   Caption         =   "爱情之旅"
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6030
   DrawStyle       =   3  'Dash-Dot
   ForeColor       =   &H00FF0000&
   Icon            =   "love20.frx":0000
   LinkTopic       =   "Form20"
   MaxButton       =   0   'False
   MouseIcon       =   "love20.frx":0442
   MousePointer    =   99  'Custom
   ScaleHeight     =   4095
   ScaleWidth      =   6030
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "下次旅行"
      Height          =   375
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "上次旅行"
      Height          =   375
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   3600
      Width           =   975
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   255
      Left            =   3120
      TabIndex        =   5
      Top             =   3720
      Width           =   375
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "离开啦"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   975
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "景点"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   3480
      TabIndex        =   3
      Top             =   3720
      Width           =   495
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "旅游第"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   3720
      Width           =   735
   End
   Begin VB.Image Image1 
      Height          =   4455
      Left            =   0
      Picture         =   "love20.frx":074C
      Stretch         =   -1  'True
      Top             =   -360
      Width           =   6135
   End
End
Attribute VB_Name = "Form20"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
jn = Val(Label4.Caption)
jn = jn - 1
If jn < 1 Then
jn = jn + 1
MsgBox "哈哈，你想从头开始吖？"
Else
Label4.Caption = jn
pic = "\pics\j" & jn & ".jpg"
Image1.Picture = LoadPicture(App.Path + pic)
ico = "\icos\moon0" & jn & ".ico"
Form20.Icon = LoadPicture(App.Path + ico)
Form20.Caption = "爱情之旅第" & jn & "景点"
End If
End Sub

Private Sub Command2_Click()
jn = Val(Label4.Caption)
jn = jn + 1
If jn > 14 Then
jn = jn - 1
MsgBox "怎么？还不嫌累吗？"
Else
Label4.Caption = jn
pic = "\pics\j" & jn & ".jpg"
Image1.Picture = LoadPicture(App.Path + pic)
ico = "\icos\moon0" & jn & ".ico"
Form20.Icon = LoadPicture(App.Path + ico)
Form20.Caption = "爱情之旅第" & jn & "景点"
End If
End Sub


Private Sub Form_Load()
Label4.Caption = 1
End Sub

Private Sub Form_Unload(Cancel As Integer)
fmend.Show
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
fmend.Show
Unload Me
End Sub
