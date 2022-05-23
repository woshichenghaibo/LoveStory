VERSION 5.00
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   BorderStyle     =   0  'None
   Caption         =   "浪漫爱情的开始"
   ClientHeight    =   2985
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4905
   Icon            =   "love.frx":0000
   LinkTopic       =   "Form1"
   MouseIcon       =   "love.frx":0442
   MousePointer    =   99  'Custom
   ScaleHeight     =   2985
   ScaleWidth      =   4905
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   240
      Top             =   240
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFC0C0&
      Caption         =   "爱情之旅"
      Default         =   -1  'True
      Height          =   495
      Left            =   3720
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      UseMaskColor    =   -1  'True
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFC0C0&
      Caption         =   "退出测试"
      Height          =   495
      Left            =   3720
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2400
      UseMaskColor    =   -1  'True
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "正在登陆程序"
      ForeColor       =   &H00800080&
      Height          =   375
      Left            =   2160
      TabIndex        =   3
      Top             =   2040
      Width           =   2655
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "*东方皇宇*版权所有 CopyRight 2005"
      ForeColor       =   &H00FF80FF&
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   2520
      Width           =   2295
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   3375
      Left            =   0
      Picture         =   "love.frx":0884
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4860
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
Form20.Show
Unload Me
End Sub
Private Sub Image1_DblClick()
Form20.Show
Unload Me
End Sub
Private Sub Timer1_Timer()
yue = Month(Date)
ri = Day(Date)
shi = Hour(Time)
fen = Minute(Time)
week = WeekdayName(Weekday(Date))
Label2.Caption = yue & "月" & ri & "日" & shi & "点" & fen & "分" & " " & week
End Sub
