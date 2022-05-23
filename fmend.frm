VERSION 5.00
Begin VB.Form fmend 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "^_^结束旅行"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6810
   Icon            =   "fmend.frx":0000
   LinkTopic       =   "Form2"
   MouseIcon       =   "fmend.frx":0442
   MousePointer    =   99  'Custom
   PaletteMode     =   2  'Custom
   ScaleHeight     =   5685
   ScaleWidth      =   6810
   StartUpPosition =   2  '屏幕中心
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright @2005 All Rights reserved 东方皇宇版权所有"
      ForeColor       =   &H008080FF&
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   3000
      Width           =   3375
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "北华大学1511里的故事"
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   15.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   495
      Left            =   1560
      TabIndex        =   1
      Top             =   480
      Width           =   3735
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "您在美好的心情中结束了您的浪漫之旅，明媚的阳光下，您开始了您新的爱情征程……"
      BeginProperty Font 
         Name            =   "隶书"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   1695
      Left            =   2280
      TabIndex        =   0
      Top             =   1320
      Width           =   2415
   End
   Begin VB.Image Image1 
      Height          =   5700
      Left            =   0
      Picture         =   "fmend.frx":074C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6840
   End
End
Attribute VB_Name = "fmend"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim rwnd, x2, y2
x2 = ScaleX(Me.Width, vbTwips, vbPixels)
y2 = ScaleY(Me.Height * 2 / 3, vbTwips, vbPixels)
rwnd = CreateEllipticRgn(0, 20, x2, y2)
SetWindowRgn Me.hWnd, rwnd, True
End Sub

Private Sub Image1_Click()
End
End Sub

Private Sub Label1_Click()
End
End Sub

Private Sub Label2_Click()
Form20.Show
Unload Me
End Sub
