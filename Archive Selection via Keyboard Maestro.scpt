FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
	# DESCRIPTION #
	
	This script files the selected Mail messages to the specified folder (Archive, by default).
	
	
	# LICENSE #

	Created by Dan Byler (contact: dbyler@gmail.com); released as public domain.
	
	
	# CHANGE HISTORY #
	
	0.2: Fixed bug where it would run twice if multiple message viewers were open
	0.1: Original release

	
	# INSTALLATION #
	
	-	Copy to ~/Library/Scripts/Applications/Mail
 	-	If desired, activate with Fastscripts
 	-	Also add Keyboard Maestro script "Archive Message via Menu Item"
     � 	 	 
 	 #   D E S C R I P T I O N   # 
 	 
 	 T h i s   s c r i p t   f i l e s   t h e   s e l e c t e d   M a i l   m e s s a g e s   t o   t h e   s p e c i f i e d   f o l d e r   ( A r c h i v e ,   b y   d e f a u l t ) . 
 	 
 	 
 	 #   L I C E N S E   # 
 
 	 C r e a t e d   b y   D a n   B y l e r   ( c o n t a c t :   d b y l e r @ g m a i l . c o m ) ;   r e l e a s e d   a s   p u b l i c   d o m a i n . 
 	 
 	 
 	 #   C H A N G E   H I S T O R Y   # 
 	 
 	 0 . 2 :   F i x e d   b u g   w h e r e   i t   w o u l d   r u n   t w i c e   i f   m u l t i p l e   m e s s a g e   v i e w e r s   w e r e   o p e n 
 	 0 . 1 :   O r i g i n a l   r e l e a s e 
 
 	 
 	 #   I N S T A L L A T I O N   # 
 	 
 	 - 	 C o p y   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / M a i l 
   	 - 	 I f   d e s i r e d ,   a c t i v a t e   w i t h   F a s t s c r i p t s 
   	 - 	 A l s o   a d d   K e y b o a r d   M a e s t r o   s c r i p t   " A r c h i v e   M e s s a g e   v i a   M e n u   I t e m " 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    * $name of the mailbox you're filing to     �   H n a m e   o f   t h e   m a i l b o x   y o u ' r e   f i l i n g   t o      j     �� �� 0 filemailbox fileMailbox  m        �    A r c h i v e      l     ��������  ��  ��        l     ��  ��    < 6if composing a message, paste the character you typed?     �   l i f   c o m p o s i n g   a   m e s s a g e ,   p a s t e   t h e   c h a r a c t e r   y o u   t y p e d ?       j    �� !�� 0 dopastetext doPasteText ! m    ��
�� boovtrue    " # " l      $ % & $ j    �� '�� 0 esctext escText ' m     ( ( � ) )  \ % / )if using backslash, remember to escape it    & � * * R i f   u s i n g   b a c k s l a s h ,   r e m e m b e r   t o   e s c a p e   i t #  + , + l     ��������  ��  ��   ,  - . - l    � /���� / O     � 0 1 0 k    � 2 2  3 4 3 I   	������
�� .miscactvnull��� ��� null��  ��   4  5 6 5 r   
  7 8 7 m   
 ��
�� boovfals 8 o      ���� 0 
didarchive 
didArchive 6  9 : 9 X    R ;�� < ; k     M = =  > ? > l     �� @ A��   @ D > Is the message viewer in front? Avoid accidentally triggering    A � B B |   I s   t h e   m e s s a g e   v i e w e r   i n   f r o n t ?   A v o i d   a c c i d e n t a l l y   t r i g g e r i n g ?  C�� C Z     M D E���� D =    ( F G F n     # H I H m   ! #��
�� 
cwin I o     !���� &0 thismessageviewer thisMessageViewer G 4  # '�� J
�� 
cwin J m   % &����  E k   + I K K  L M L Z  + : N O���� N =  + 1 P Q P 1   + .��
�� 
slct Q J   . 0����   O L   4 6����  ��  ��   M  R S R O  ; E T U T I  ? D�� V��
�� .coredoscnull���     ctxt V m   ? @ W W � X X : A r c h i v e   M e s s a g e   v i a   M e n u   I t e m��   U m   ; < Y YH                                                                                  KM*E  alis    �  
Hypersolid                 �%��H+   �G�Keyboard Maestro Engine.app                                     �H�ʺ[z        ����  	                	Resources     �&W      ʺ��     �G� �G� �G� 
��  `Hypersolid:Applications2: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app  8  K e y b o a r d   M a e s t r o   E n g i n e . a p p   
 H y p e r s o l i d  QApplications2/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app   / ��   S  Z�� Z r   F I [ \ [ m   F G��
�� boovtrue \ o      ���� 0 
isarchived 
isArchived��  ��  ��  ��  �� &0 thismessageviewer thisMessageViewer < 2   ��
�� 
mvwr :  ] ^ ] l  S S��������  ��  ��   ^  _�� _ Z   S � ` a���� ` F   S _ b c b H   S U d d o   S T���� 0 
didarchive 
didArchive c o   X ]���� 0 dopastetext doPasteText a k   b � e e  f g f l  b b�� h i��   h / ) Let the original keystroke pass through.    i � j j R   L e t   t h e   o r i g i n a l   k e y s t r o k e   p a s s   t h r o u g h . g  k l k l  b b�� m n��   m > 8 Uses paste to avoid an infinite script-triggering loop.    n � o o p   U s e s   p a s t e   t o   a v o i d   a n   i n f i n i t e   s c r i p t - t r i g g e r i n g   l o o p . l  p�� p O   b � q r q k   f � s s  t u t r   f o v w v I  f k������
�� .JonsgClp****    ��� null��  ��   w o      ���� $0 currentclipboard currentClipboard u  x y x I  p y�� z��
�� .JonspClpnull���     **** z o   p u���� 0 esctext escText��   y  { | { I  z ��� } ~
�� .prcskprsnull���    utxt } m   z }   � � �  v ~ �� ���
�� 
faal � J   � � � �  ��� � m   � ���
�� eMdsKcmd��  ��   |  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  ��� � I  � ��� ���
�� .JonspClpnull���     **** � o   � ����� $0 currentclipboard currentClipboard��  ��   r m   b c � ��                                                                                  sevs  alis    �  
Hypersolid                 �%��H+   ��System Events.app                                               ��L���        ����  	                CoreServices    �&W      � PB     �� ��	 ��  ;Hypersolid:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 H y p e r s o l i d  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��  ��   1 m      � ��                                                                                  emal  alis    @  
Hypersolid                 �%��H+   ��5Mail.app                                                        ����-c        ����  	                Applications    �&W      �-ł     ��5  !Hypersolid:Applications: Mail.app     M a i l . a p p   
 H y p e r s o l i d  Applications/Mail.app   / ��  ��  ��   .  ��� � l     ��������  ��  ��  ��       �� � �� ( ���   � ���������� 0 filemailbox fileMailbox�� 0 dopastetext doPasteText�� 0 esctext escText
�� .aevtoappnull  �   � ****
�� boovtrue � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  -����  ��  ��   � ���� &0 thismessageviewer thisMessageViewer �  ����������������� Y W������ ������� ��������
�� .miscactvnull��� ��� null�� 0 
didarchive 
didArchive
�� 
mvwr
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cwin
�� 
slct
�� .coredoscnull���     ctxt�� 0 
isarchived 
isArchived
�� 
bool
�� .JonsgClp****    ��� null�� $0 currentclipboard currentClipboard
�� .JonspClpnull���     ****
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� .sysodelanull��� ��� nmbr�� �� �*j OfE�O C*�-[��l kh  ��,*�k/  #*�,jv  hY hO� �j UOeE�Y h[OY��O�	 	b  �& ;� 3*j E` Ob  j Oa a a kvl Okj O_ j UY hU ascr  ��ޭ