   M S B A M L   `   `   `  ���� >  :UCS, Version=0.6.3.2, Culture=neutral, PublicKeyToken=nullclr-namespace:UCSUCS      UCS.PopupUpdater   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     #localclr-namespace:UCS     -     � Title$  Popup��$	��300��$	��400�� � Topmost .  � WindowStyle$
 None=�
������  � AllowsTransparency .  � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterOwner=� � ShowInTaskbar .  .���� -   $��windowBorder��$��2q����#39c8e2 �� CornerRadius$ 10������  �� ImageSource$ BG/Blur.png��	 �� Opacity$		 0.7Q�._�� .+��� ���#2980b9$��1��$��24,0,24,216q�$��Bottom=�
 J� Opacity$	
 0.8Q��� ���#2980b9$��1��$��24,0,24,247q�$��Bottom=�$	
 0.8Q��� -    ��Name$ 
btn_Cancel��   RoundedButton#��[  $��Close��$
��Left=�$��225,263,0,0q�$	��Top=�$��79��$��25��$��3q��� -   $ 
btn_GoPage��#��[  $��Download��$
��Left=�$��309,263,0,0q�$	��Top=�$��79��$��25���� -    ��Name$ 	lbl_Title��$(��"A new version of UCS is available!��$
��Left=�$��	10,10,0,0q�$	��Top=����	#FF39C8E2$	��378��$��24(��� -   $ 
lbl_CurVer��$��Current UCS version: ��$
��Left=�$��	10,52,0,0q�$	��Top=����	#FF39C8E2$	��182���� -   $ 
lbl_NewVer��$��New UCS version: ��$��	0,52,10,0q�$��Right=�$	��Top=����	#FF39C8E2$��Right=�$	��177���� -   $ lbl_Changelog��$��
Changelog:��$
��Left=�$��	10,81,0,0q�$	��Top=����	#FF39C8E2�� -	    ��Name$ RTB_Console��  FlatRichTextBoxStyle#��[ $��2q�$��10,107,10,40q� J� 	AllowDrop .  $��2q� �� 
IsReadOnly . ���	#A500697C �� SelectionBrush �	#FF005DB9" �� VerticalScrollBarVisibility$
 Auto=�$��Consolas)����#39c8e2
�������. �/� .T�J� .*�.*��� $� ��