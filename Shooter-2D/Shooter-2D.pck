GDPC                                                                                @   res://.import/antenna.png-491b5464ee0543891876dde2f1bc351d.stex p5      }	      ��t��E'����7	ҕ@   res://.import/bullet.png-ff1424653e10246c11e3724e402c519e.stex  �A      z      b�v��&9��_}�[*D   res://.import/earth-fin.png-0202b89aa3fdaa15429bd13f0825a34a.stex   @I            ��i�W��Ň=�3O<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0�     U      -��`�0��x�5�[D   res://.import/spaceship.png-a8aee2801e3b8c6d30c4bff2d748cbe1.stex   ��           ��3�gh(��N{���{   res://Bullet.tscn   �      �      	�����	E�V]��   res://CanvasLayer.gd.remap  P     &       �ѕ#�'��b{��7��   res://CanvasLayer.gdc   �      �      r��;��������X   res://CanvasLayer.tscn  �      c      ���X���*ls�G/   res://Main.gd.remap �            �(@Er�#��K�F�[   res://Main.gdc         8      GU|���[����l<��   res://Main.tscn `      �      ��ޱs帯xv���f�   res://Player.gd.remap   �     !       ��0�F �qq��dX��   res://Player.gdc /      �       \� ]}g�Y���� g7   res://Player.tscn   �/      �      )`LЍf-;��(�У�   res://antenna.png.import�>      �      �Z��o����* ��   res://bullet.png.import  F      �      �v�J��}Z���@��   res://default_env.tres  �H      �       um�`�N��<*ỳ�8   res://earth-fin.png.import  ``      �      �f'"փwE�D[8�    res://fonts/xolonium-regular.ttf�b      Ѐ     󥧨BL��;��;�6   res://global.gd.remap   �     !       ���#����z�A��q   res://global.gdc��     e       0�����<x1��+�   res://icon.png        �      G1?��z�c��vN��   res://icon.png.import   ��     �      �����%��(#AB�   res://mobs.gd.remap              ��3�(zI~��QI   res://mobs.gdc  �     j      ^G�ʑ.�wB���yH   res://mobs.tscn ��     *      ;����M"�Hd59   res://project.binary     "	      �W� 
D�ƥ;y&�   res://spaceship.png.import  �     �      j1�O�r:nu������k        [gd_scene load_steps=4 format=2]

[ext_resource path="res://bullet.png" type="Texture" id=1]

[sub_resource type="GDScript" id=1]
script/source = "extends Area2D


var velocity = Vector2(0,-400.0)

func start(pos):
	position.x=pos.x
	position.y=pos.y-40

func _process(delta):
	position+= velocity*delta
	



func _on_Bullet_body_entered(_body):
	global.score+=1
	
	queue_free()
	


"

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 8.508, 11.056 )

[node name="Bullet" type="Area2D"]
position = Vector2( 224.746, 582.841 )
scale = Vector2( 0.5, 0.5 )
script = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -1.88989, -6.29956 )
shape = SubResource( 2 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]
position = Vector2( 0, -1.51978 )
scale = Vector2( 1, 1.4 )

[connection signal="body_entered" from="." to="." method="_on_Bullet_body_entered"]
   GDSC             �      ����������Ķ   ���������Ӷ�   �����ض�   �����������Ӷ���   ����Ӷ��   ����Ӷ��   ���¶���   �����������Ӷ���   ����ڶ��   ��������   ����Ķ��   ����¶��   �������������Ķ�   �������Ӷ���   �����������Ķ���   �����ض�   �����������������Ҷ�   ���Ӷ���   ����������ڶ   ����������������¶��   	   GAME OVER         timeout       SPACE SHOOTER        �?   
   start_game                           	                        "   	   )   
   0      7      8      >      ?      D      L      S      Z      h      o      p      v      }      �      �      �      �      �      �      �      �       3YYB�  Y;�  Y0�  P�  QV�  W�  T�  �>  P�  QYY0�  P�  QV�  W�  T�  �  �  W�  T�	  PQ�  W�
  T�  PQYY0�  PQV�  �  �  PQ�  APW�
  R�  Q�  W�  T�  �  �  W�  T�	  PQ�  AP�  PQT�  P�  QR�  Q�  W�  T�	  PQYY0�  PQV�  W�  T�  PQ�  �  P�  QYY�  YYY0�  PQV�  W�  T�  PQY`             [gd_scene load_steps=5 format=2]

[ext_resource path="res://fonts/xolonium-regular.ttf" type="DynamicFontData" id=1]
[ext_resource path="res://CanvasLayer.gd" type="Script" id=2]

[sub_resource type="DynamicFont" id=1]
size = 32
font_data = ExtResource( 1 )

[sub_resource type="DynamicFont" id=2]
size = 32
font_data = ExtResource( 1 )

[node name="CanvasLayer" type="CanvasLayer"]
script = ExtResource( 2 )

[node name="ColorRect" type="ColorRect" parent="."]
margin_top = -8.97968
margin_right = 490.0
margin_bottom = 716.02
color = Color( 0.109804, 0.0235294, 0.317647, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="."]
margin_left = 157.968
margin_top = 472.018
margin_right = 331.968
margin_bottom = 524.018
custom_fonts/font = SubResource( 1 )
text = "S T A R T"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
margin_left = 3.0
margin_top = 379.0
margin_right = 487.0
margin_bottom = 486.0
custom_fonts/font = SubResource( 2 )
text = "Space Shooter
"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Score" type="Label" parent="."]
margin_left = 17.6833
margin_top = 7.91454
margin_right = 501.683
margin_bottom = 114.915
custom_fonts/font = SubResource( 2 )
text = "0
"
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="."]
             GDSC   "   	   0   �      ���ӄ�   �������Ķ���   ��������Ӷ��   �����϶�   ���������Ӷ�   �����Ķ�   ��������   �������Ӷ���   ���������ƶ�   �����ڶ�   ����Ӷ��   ����������Ķ   �����������Ӷ���   ���������Ķ�   ����¶��   �����������Ӷ���   �������Ķ���   �������������������¶���   �����������������ض�   ������޶   ����������ն   ����������¶   ��Զ   �������Ӷ���   ��������Ҷ��   �������ض���   ��������Ķ��   ���Ӷ���   ���ƶ���   �������������Ķ�   �����������������������Ҷ���   ����϶��   ����������ڶ   ���������������������¶�      res://mobs.tscn       mobz      free             Get Ready...      timeout              ?      gameover                                                    	      
         "      #      *      5      ;      E      L      T      \      c      d      e      k      s      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   3YYYB�  Y;�  ?PQYY0�  PQV�  �%  PQ�  �  Y0�  PQVY�  W�  T�  PQ�  �  PQT�  P�  R�  Q�  �	  T�
  �  �  W�  T�  P�	  T�
  Q�  W�  T�  PQ�  W�  T�  P�  Q�  APW�  R�  Q�  W�  T�  PQ�  YY0�  PQV�  ;�  W�  �  �  �  T�  �(  P�  R�  Q�  �  ;�  �  T�  PQ�  �  P�  Q�  �  T�  �  T�  �  �  Y0�  PQV�  �  PQT�  P�  R�  Q�  W�  T�  PQ�  W�  T�  PQ�  �  W�  T�  PQ�  YY0�  P�  QV�  �   P�  Q�  YYYY0�!  PQV�  W�  T�  P�	  T�
  QY`        [gd_scene load_steps=12 format=2]

[ext_resource path="res://earth-fin.png" type="Texture" id=1]
[ext_resource path="res://Main.gd" type="Script" id=2]
[ext_resource path="res://spaceship.png" type="Texture" id=3]
[ext_resource path="res://CanvasLayer.gd" type="Script" id=4]
[ext_resource path="res://fonts/xolonium-regular.ttf" type="DynamicFontData" id=5]

[sub_resource type="DynamicFont" id=1]
size = 32
font_data = ExtResource( 5 )

[sub_resource type="DynamicFont" id=2]
size = 32
font_data = ExtResource( 5 )

[sub_resource type="GDScript" id=3]
script/source = "extends Area2D

signal areahit
signal hit
var check=0
var speed=400.0
var screen_size=Vector2.ZERO
func _ready():
	screen_size=get_viewport_rect().size
	print(screen_size)
var bullet = preload(\"res://Bullet.tscn\")
func _process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed(\"ui_right\"):
		direction.x=1
	if Input.is_action_pressed('ui_left'):
		direction.x=-1
	position += direction*speed*delta
	
	position.x=clamp(position.x,0,screen_size.x)
	if Input.is_action_just_pressed(\"ui_accept\"):
		shoot()




func _on_Player_body_entered(_body):
	hide()
	$CollisionShape2D.set_deferred('disabled',true)
	emit_signal('hit')

func shoot():
	
	var b= bullet.instance()
	b.start(position)	
	get_parent().add_child(b)
	


func _on_Player_area_entered(_area):
	hide()
	$CollisionShape2D.set_deferred('disabled',true)
	emit_signal('areahit')
"

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 32.2403, 30.3672 )

[sub_resource type="Curve2D" id=5]
_data = {
"points": PoolVector2Array( 0, 0, 0, 0, 94.6474, 0.505524, 0, 0, 0, 0, 238.116, 0.505524, 0, 0, 0, 0, 417.452, 2.39328, 0, 0, 0, 0, 94.6474, 0.505524 )
}

[sub_resource type="RectangleShape2D" id=6]
extents = Vector2( 246.905, 74.6301 )

[node name="Main" type="Node2D"]
position = Vector2( -5.66321, 0 )
script = ExtResource( 2 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]
script = ExtResource( 4 )

[node name="Button" type="Button" parent="CanvasLayer"]
margin_left = 157.968
margin_top = 472.018
margin_right = 331.968
margin_bottom = 524.018
custom_fonts/font = SubResource( 1 )
text = "S T A R T"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CanvasLayer"]
margin_left = 3.0
margin_top = 379.0
margin_right = 487.0
margin_bottom = 486.0
custom_fonts/font = SubResource( 2 )
text = "Space Shooter
"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Score" type="Label" parent="CanvasLayer"]
margin_left = 17.6833
margin_top = 7.91454
margin_right = 501.683
margin_bottom = 114.915
custom_fonts/font = SubResource( 2 )
text = "0
"
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="CanvasLayer"]
wait_time = 2.0

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = 5.03973
margin_top = -1.25995
margin_right = 502.04
margin_bottom = 728.74
color = Color( 0.109804, 0.0235294, 0.317647, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player" type="Area2D" parent="."]
position = Vector2( 243.636, 556.584 )
script = SubResource( 3 )

[node name="Sprite" type="Sprite" parent="Player"]
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 4 )

[node name="muzzle" type="Position2D" parent="Player"]
position = Vector2( 8.38251, 512.699 )

[node name="MobPath" type="Path2D" parent="."]
curve = SubResource( 5 )

[node name="MobSpawnLoc" type="PathFollow2D" parent="MobPath"]
position = Vector2( 94.6474, 0.505524 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 249.815, 368.73 )
texture = ExtResource( 1 )

[node name="MobTimer" type="Timer" parent="."]
wait_time = 0.65

[node name="EndZone" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="EndZone"]
position = Vector2( 255.973, 670.337 )
shape = SubResource( 6 )

[node name="scoretimer" type="Timer" parent="."]
wait_time = 0.001
autostart = true

[node name="StartTimer" type="Timer" parent="."]

[connection signal="gameover" from="." to="." method="game_over"]
[connection signal="start_game" from="CanvasLayer" to="." method="start_game"]
[connection signal="pressed" from="CanvasLayer/Button" to="CanvasLayer" method="_on_Button_pressed"]
[connection signal="timeout" from="CanvasLayer/Timer" to="CanvasLayer" method="_on_Timer_timeout"]
[connection signal="area_entered" from="Player" to="Player" method="_on_Player_area_entered"]
[connection signal="areahit" from="Player" to="." method="game_over"]
[connection signal="body_entered" from="Player" to="Player" method="_on_Player_body_entered"]
[connection signal="hit" from="Player" to="." method="game_over"]
[connection signal="timeout" from="MobTimer" to="." method="_on_MobTimer_timeout"]
[connection signal="body_entered" from="EndZone" to="." method="_on_EndZone_body_entered"]
[connection signal="timeout" from="scoretimer" to="." method="_on_scoretimer_timeout"]
               GDSC                   ���ׄ�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://spaceship.png" type="Texture" id=1]

[sub_resource type="GDScript" id=1]
script/source = "extends Area2D
signal bhit
signal hit
var check=0
var speed=400.0
var screen_size=Vector2.ZERO
func _ready():
	screen_size=get_viewport_rect().size
	print(screen_size)
var bullet = preload(\"res://Bullet.tscn\")
func _process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed(\"ui_right\"):
		direction.x=1
	if Input.is_action_pressed('ui_left'):
		direction.x=-1
	position += direction*speed*delta
	
	position.x=clamp(position.x,0,screen_size.x)
	if Input.is_action_just_pressed(\"ui_accept\"):
		shoot()




func _on_Player_body_entered(_body):
	hide()
	$CollisionShape2D.set_deferred('disabled',true)
	emit_signal('hit')
func shoot():
	print ('ok')
	var b= bullet.instance()
	b.start(position)	
	get_parent().add_child(b)
	
"

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 32.2403, 34.7894 )

[node name="Player" type="Area2D"]
position = Vector2( 259.192, 599.01 )
script = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )

[node name="muzzle" type="Position2D" parent="."]
position = Vector2( 8.38251, 512.699 )

[connection signal="body_entered" from="." to="." method="_on_Player_body_entered"]
     GDST@   @           a	  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  	IDATx��kpU��y� !�!�H��IbyVA�@|�[DZk�*y��H�t:A��:P���) �"I�RZo&!!$� ������}�{�7��sn���̙{�:�����g����=�K�|�
�ʀ��t �&7�ثC�W�K@�W�X���(~�o�~n	���p:U3�
��iC�Z�}N�� ��,�4h�)��:t�h��� uj�Z1���@!0��F�C��?h8ѝb�^}�c��8���W���6[xX�&$��2d���%������o)<���Fu���`����BL&��2��G��醊���q��5��}���D��wR���1r�L��(?{��7�U	虆Z�T�/ô� ��Jd�(5��f��	�E��Ȩh�?2�>��?���f���1�2@��Ы_��V��薔�'.������L���$��ǖNV�����ԅʒ���*+���K��TZLSc�e劒3zR�Y=+�UJ����_}���&5��h��<.�[
�M�|��f��ڊ���?�=y��"�G�t��(*���4ӥk7�#"�ZU�7������g#���G�u��s�.5���+T_,#�[w�:v�V�N)�Ч9x<�ꪅ@�Lc	�R_�qg�	>u�G0FV�B��f�ʒ���lʲr�_p��L���OP08��7 �;�=h���'«���.O8��A`1p��G̪S�y#}0nT�;����u��L�yui� yu�#���7FI�c�g�K:yh�&��#���i�B�"9���ʷ�D�G,gɈ�-@-��)ALp����}�$}��R�=�Rk�z�G�=[t�����;؀�ڭ��,%��J���o:/�-cx
xᾚ�["�J��ޕ��&T��������CnB���X�[1`0�ʄ�go�+.@�>�˅��Z�xX�\U7�`���6�[C�Vx֯��EV�^��� ��<�^���!DR����-��jhn��]�j����!���VJL,deà\`����jn�����������dd���N�@&8s^���j�q|&)XD�b!0WCY�
~8�![�'@bO�Ǘjj"�c<,�։�K�o�˜O���6��
奠�e ��8q�f �ZK�0O��>~�P��!	�~'��)M�	�{YTu=�`���w�YU;�5@G�q��ɲ:�����@�+Y<th-�'�=�q2�E� !Ӈ�Ԛ+k mk���wvd
CG�dX� ESJn��K�RJ�@��=I6`�)�.)����?��x`�V8w
����Rxr?���aʓ��(Ü�YO�Y�ǎ-����������/���[������(0�������W<��Ob[��+�����՗��UP�;N(6��������
�:�샹��Ʒ�����a��0w�����b(�y2��7��Ep�;��A��[֋�P��XU��漺�C��f�ч� ��k������+˭����mn�����p'r����2=��`��vW'xC�
o�����q�R�{�]^T4dJy����Cu������-.;���!�=���'=���Q	=`ъ�9ۭf�;�Δ}�3�����Q��K����c���x�B|�y�i�>�ëj@WC{ӑ�r�`�`H�wf7��,�|H@��	<�)����"$���Y��������dN
T�{0��!R�m#� ��|gJZ�|t[9^�)vB�h{.� ��G��,0�����j�q- ��~U�(��=���̋z�c�49[�k��w>ʏ�u�0������Kv��~6_l������/�S|"L�O<-�[�(��"z�C#���%Ǝb�c�?8���u9����X��,��W�-_Z\�������{$����(� U0�����*���f��.$^͆T��^|V-�m��ƚKy)��%��>�>�a�|K�Bm���®��9F���ՙy�"���h�_�A��5k�Bn�BN���Y
��V�]7�[��&�P����[$�O�a�疗��^h��!'O�5O_G��G������_���J�`����7���������@�7���dc�c�E�i��^�8e�����/���[q9�!�J`����2�N�D��^��(=�^�2���[ۭ�H�i�-�u�i����;����޳{��}�B����m��^F�ۈ�wW#RTd0�T�N�R����h}8��y[���I`�	L    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/antenna.png-491b5464ee0543891876dde2f1bc351d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://antenna.png"
dest_files=[ "res://.import/antenna.png-491b5464ee0543891876dde2f1bc351d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST                ^  PNG �PNG

   IHDR           szz�   sRGB ���  IDATX���MhU��μ��%�C1I[��ƴJ$��da�P�E� .���;����wv�έKQ��
�"HU�
"E�jZ�6�k��bfޛ73�#!g8��3��?w�QU�����Rw���� P�o+�,��P.8qo ?�
 M�������
q���i��l=�1뙵���+�f�/և�^�'�� Χ���)��3�/�Y��"q`��.�X�'V���@�w#���G���𵆓e�2D�'�N8�ɇ9,��)�!�P�ъ��w��X=>��� U&*������4&K�Z	I�����N�5�+�v���*��
�H|��RV^~�?�w�A��N{�N���'�&b�����E��Q�J�}r/�`|��Ё*�g@{w%���S9�0�ܿ�X�@���>R(����7A�!uz$��#'O�' `<?�/��c���@%
���|���[�j"�gE�� 	kHX����"Pmv ��(����pG���J�98�D°����g&L<�Tw:QX�M���E��� ��nc3�x1V�Q|m"��"��L��?�&T��S��Ԥ�AC���X@��� UB� puKJ��N����9wAԢr���D���wEUPU��s��["P �O��g��57	�)��D���#��Ub����~��SP�m���qdއ@!�EG��H���MG��:�j��w��t�rߡ�_
��@�  MF3�Z��'1P
� )�EDR�ɵC�)( � ����F@�/��M.�m�����i��ŧQ�E��z����}|jtGk K����$�t�:Ӡۮ��ǰ����*��7!��o٤��
��a��zz�Zk}����D$�?��q����S��DB'T��oW˼��$*|���*���r�f�]�j=���]�oQ���0�u��o9�IJ_We���IK��x�BK��}�Mnw�^u�HkV����:���ʞ�ͥ4�tWܔ$G�ݜTk!eOX����G�M�^�a����r��� n�Ƣ���<j��6-�|���V��!@�p    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bullet.png-ff1424653e10246c11e3724e402c519e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://bullet.png"
dest_files=[ "res://.import/bullet.png-ff1424653e10246c11e3724e402c519e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�  �            PNG �PNG

   IHDR  �  �   HF��   sRGB ���  �IDATx��ݽ�$w~��o!���^�8�{����)�@>H�#�g��(ul����R�aqN9����Ü��0F��a���W��3��PU�zx�@�F��f��=����b�� ЯW�  s$�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  � �jz`��UՃ�Ǜ>��7U����M�`����_���.6۟��-gۭ�?��/��Wg���n��b�ۥ���	u��~��v�n�|��m;0s�zɿԄ:f����	�i?[�!�L�Q�'�!�a�693�T��}���VU�b��%k�O��h� 3&wN�&�����0C�����Yn�[/���/��������0��l��n���jU���=dm"f�����5[:w˚����0wLL��-k�֐� ӵ���	�Qح�[֐� s	��2i֐� s��U�������/6��6	�s�����0v�1n�tW��b���̦A�n����V��c�t�&c�!�\e҅��9� s�IZd2�.<O&]�ɘ�x�L�d2�J���_̈́�jU�^&]��|	�}��W3�ޯ��I�d</<M�5�7���j��~��$�&���iZU�ǋ���� �O�U�I=9<n��ͼ�l�*�u����ԓ"�����̞2�pm��ivk8� �Ýg3/6�?�m�������&��qp63p+gO�� �����8{z<x�V�lf�Ξ>��g5������F����%�ò�f�}�f�M&���,/�+�pp֪L�@��8O��e��D�#��Z�� q��[&^`T�M��[�$�����Eܭg�j6�c�[/\Mx���_W�o�[4=ܮ&ުzo��~�"����u5�����6�*n����[/���)�ӗZ$���������L�n���j�UU�OU�_Y#>� _湧-6����й�z�U���F|>�sO)Zl���� ������������z�a5�5�3��ހ�:���+�������Q��ޭ�=�AO�5	&�㸞��S'�^2�~�D|��uɛf��zCf�.}-��{����	�͜�L�P�{!�6^[GD����f�n�Wc�u<m�֎���a����������f5~�?� Z3������$�\��l?ٯS�Ek�W���w�|�zi��{�.^��|ϭ��ܸz]�[.-�-s��U�an��l?ۯ߯o׃g=	���^�3���b��xt��j�6��r��n���_8��u��m���ML������ﵧ,�7��r��{3��_�'Fx�OY�[��ÙΈ��x�z����ޭ����5�5�e���=z��+N��K�?��Ԍֆ�>����㙂���3&��ꋪ��jֆ'=	O�2��e����/��p��5��j��O��k՜hu����/m����夾������뷪�Q5Խ��8M5���������I�뽗񵛟"���?gxjk�W���v5g:��$�@8�e=�?Cy��=��s��`�r�uCy���P^��~��x/����W|i�P޸�J��7���%����%=� �|y��|�� wk��I�eU�[5S�'�؝�x���x��wc�������ܾrԓ��|x����f�Izc�Û7���i�0£���`w�����&���]c�/.�k�������V33�7��\���f��X�5�	������\c������L��ʾ4�Ix,~v�s5w�����p���A�.�̔��s^��fMx跢�~O�'�0}��p�_�|\M3�SMCk���w`��7�3�oN���5�$<ԓ����&_�t�ɜvl#��ݮ�����rMx��ɷgvh�b�=ߜ��)�	mؚo��wj`��&<� _�����l[�f��o��]M[�7�9C9�9�=]�&����6.x���J���v��K��^ƾ��#<�5��!hk�=�Sr�{��քӗ!�|����-^�L�ѐ�����U�`�G&�v�/I���q7�2	��Z5O5�` �v�'C8;:�{�<�w呂��S30-E86	�����>���%�$}���?�ľ܏�$��IX���L��G|{�d���{G�=�z~��l?��Ϟ<;-����4m|��W�|�z���
�s��.6�MO�l�iIqؙ)�_��+s���g��g�xv�U���r�+r�WO'cu�듯��|��}�V��:����ɷc�_vf��W�<�抝�t�gw����`�:D:�>��C��t��/	&_�`�Γ���Gx�|Wn���O��=��e�x�v��&`w�`���SV���|_`L��3��>­_�v���
&F|���i����NW0A�����uq}p[v�/L��|�#������m��� ���Mk��uҪ�~h�헟�i�i7�~܍._ӻ�r]U�ZU���ߞ��\:_��W|a��N�?��Ⳣ/���z��޻��ė������gE�z�ܫ�������V���M�9�����Ss��L�P�b��l�^����˪������5��b���K~����͝��S�I�Z�Go|0��O��/}|mw��U�/���IΝ�����������?�M_Q/��a��������WW�Us���}�����Yl��/n�%�ȹ� ���2^یE��/=M�g�}j�_�f��QU����d[�4oT����:f̺zo�k�ح�\U�XU�y�9���Wo���&�����ן��@x�2%����_N>+��	�w������N�Em�a
�oH;��$���}���hV����:��S'��!h�$уq�Ѹ��9I������G�W���`�_h ������G�+�� �� �3�Wղ�'&=��1>vxUU�-6۟]�i'��E�0Ws��������n������^rV��N��J�anۗ�sL�n��qU�CU����e���U3��Z۪#%�|�3C��گ�sL�w��������AU=Yl����IG�S�|8ɒ)Zl�]MCou����-:BzGL��0%�'fn�������,�O����������f��jΈ�q�-����!�& 9�?&�a�2�vt�iGC��	�kc�2���w����~�V��[M�Y�E� 'k�i�3���/��=���><��I�O;��[5�m���j��?2V�+�^X�>?��s?�հcǸ�^a*fD^X���ݪ��>�0�����8��پʐ]_�>�^M�F� ęXU��UU}s=����}mI��e`>�t�~f뽺��ր��z�$� Q�O�����z��گ_=z٢0��q����g�����NºWU�|��_�c~S������u��[/߯���C���F	�uW�6�Cޫ+���Gv@��C���>`�'��oA�~>���zo�_ӷ�z��W�g������1Fm���v���Y�]�WؗI��y� Q]���P\��`�}���2$��%gO/C���*��>���    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/earth-fin.png-0202b89aa3fdaa15429bd13f0825a34a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://earth-fin.png"
dest_files=[ "res://.import/earth-fin.png-0202b89aa3fdaa15429bd13f0825a34a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        0DSIG    ��   GDEFs $ C   (GPOSަ`� C<  9lGSUB���� |�   OS/2;C�  �   `cmap�a�  (  ncvt y   �   tfpgm1Z/�  �   �gasp   C   glyfh�b	  #�  ��head+�  <   6hhea��  t   $hmtx�~��    kern?qn�  �� +�locah�2�  D  �maxp�  �    name��a� %�  �post2b )�  eprep1	��  X  v    ���P_<� �    �Y�g    �Y�g�`�.�z             ���  �`�`�               D   D v  O         � �   ��   `@    `@   F         � �R ��             @  ���. ��   �    ��     � Z    @  @  , P� K -� 2$ (H A K� K� -& #� U, � -, P� � <� �� <� P� <� <� <� <� <� <, P, � _� U� _� - A  
 K� K  K� K� K  K* K" K� -� K� K� K4 K* K� K* K K� A� * K  
�   
� -� U� � 7D #l  � Zv 7� AN A� A� A� A� A� A A��X A A� A� A� A� A� A� AN 7� A� A� z b � X -0 7" U0 7� U@  , P� i� � Z�  " U� K� U� A� (� #� P� -� A� U� 2� U� (� 2� �� A� K, P� �� _� (� -z (� (� 2� 7  
  
  
  
  
  
t 
� K� K� K� K� K"��" 7"��"��4 4 K* K* K* K* K* K� s* K* K* K* K* K 
� K� Av 7v 7v 7v 7v 7v 7� 7N A� A� A� A� A�� -����� A� A� A� A� A� A� A� U� A� A� A� A� A� � A�   
v 7  
v 7  
v 7� KN A� KN A� KN A� KN A  K A4 � A� K� A� K� A� K� A� K� A� K� A  K� A  K� A  K� A  K� A* K� AR � "����"����"  ��"  " K A� K A� -��� KX AX A� K 2� K (� K| A� K� A� h 4 K� A4 K� A4 K� A* K� A* K� A* K� A* K� A� K� A K� A K� ( K� -� AN 7� AN 7� AN 7� AN 7� � A� � A� � * K� A* K� A* K� A* K� A* K� A* K� A� z  
�  
� -X -� -X -� -X -� _  
v 7t 
� 7* K� A� AN 7� � A��� K� K� U� i� �� s� �� F� Z� �, � �� U  
, P��������������������  
 K� K  
� K� -* K* K" K� K  
� K4 K� 7* K* K� K� 7�  
� A � A* 7"�� 
� 7D A� A -� A� 7� A� � AD AX A� A� A AX Ab � A� X A� A� A� AX A� Al #� A\ Ab \ A\ A��� A� A� A\ A� K� K� � K� A� A" K"��� -� � K� � K4 K� 
* K  
 K K� Kf � KV � 74 K4 K� K � K* K* K* K� K� K� � 
� A \ K� 7. K` K�  K� K� 7B K #v 7� Av A A� � Ap D -� A� AX A�   A� A� A� A� AN Al #� \ Ab � Av 7p A� A� #f Al AD -� Av #� A� A�  AD 7N 7 A����� � A� X A� A� � A� � #* K� A� 
� � K A� 0 � Kl At � � 7D - Kl A� KX A l � � #\ K� A KH A� K� A� K� A� KN A� l # 
�  
�   v $ \ #* 7� 7� 7v 7 Kv A� � #" KV p � 7v 7 A  
v 7  
v 7t 
� 7� K� A  K� AV p � 7D -� 7D -4 K� A4 K� A* K� A* K� A� 
� � 
� � 
� � 7v 7� K A Kf A\ K� A K� A  K� A� K� A� K� A� K� A� AN 7� � A� z � z � z   K 
� �  ,   �   d  � �l -� -�  , -, 7, , - - 7  -X 7X 7� P� P �  � ( K� K� #� -� -l   ��`� (� (� (� (� (� (� (� <� <� < 7 #� (� (� _� (� 2� (� (� (� (� (� (� <� <� < 7 #� p � � P� x KH � (� � � 2 (J A� K� A$ * 7* &� ($ 2$ (� (� -b A� 7b A� A  
* K� F� U ��`, P� Ap A� P� (� U� U� _� _� -N AN -� K� 7~ <4 A� A� A8 A8 A4 K 2   2  � (� _� (� 2� (� (� (� (� (� ( ��`� (� _� (� 2� (� (� (� (� (� (� <� <� <� 2� 2� �� �� �� -��� 7* K* K� K�  * -� K* -� -* - AX -X KX KX -4 -R -� 7� A� A> 7 Ap 7  7R K� A� A 7z A� 2� 7� A� A� A Ap A A� A� K� K� K� K� K� 7� K� K� K� K� K� K( K� K� K� K� K� K� K -� K� Kd K� K� 7         ,     �     	d     ,  
  � X   � �  R    ~H~��7���z~����_cu������%AWak��� 
  " & 0 3 : > D p � � � � � � � � � �!!!!"!&!.!^!�""""""""+"H"`"e#%�%�%�%�%�%�%�%�%�%�%�%�&& &#&�&�&�&�'H'L'd's��� ���        �J��7���z~���� br������$
@V`j���    & / 2 9 = D p t � � � � � � � � �!!!!"!&!.![!�""""""""+"H"`"d#%�%�%�%�%�%�%�%�%�%�%�%�&& &"&�&�&�&�'G'L'd'p��� � �� �����������G�/������w�������������������u�s�k�i�g�c�9�]�W�E�%��	�������o�h�f�c�[�Z�U�S�N�#� ��
�����������������f�5�������������u�r���f�[�Z�Y�X�U�P�M�H��@�.�����܀��{�I����۽�i�"�                                                                                                                                                                                                                        �       |                           ~      �  H   b  J  ~    �  �  @  �  �  A      G  7  7  K  �  �  L  �  �  N  �  �  O  z  z  U  ~  ~  V  �  �  W  �  �  ^  �  �  _  �  �  s     _  �  b  c  �  r  u    �  �    �  �  3  �  �  6  �  �  8  �  �  C  �  �  Q  $  %  ]      _  
    a      c  @  A  e  V  W  g  `  a  i  j  k  k  �  �  m  �  �  s  �  �  t      
  v        z      "  ~   &   &  �   /   0  �   2   3  �   9   :  �   =   >  �   D   D  �   p   p  �   t   �  �   �   �  �   �   �  �   �   �  �   �   �  �   �   �  �   �   �  �   �   �  �   �   �  �   �   �  �  !  !  �  !  !  �  !  !  �  !"  !"  �  !&  !&  �  !.  !.  �  ![  !^  �  !�  !�  �  "  "  �  "  "  �  "  "  �  "  "  �  "  "  �  "  "  �  "  "  �  "+  "+  �  "H  "H  �  "`  "`  �  "d  "e  �  #  #    %�  %�    %�  %�    %�  %�    %�  %�  	  %�  %�  
  %�  %�    %�  %�    %�  %�    %�  %�    %�  %�  �  %�  %�    %�  %�    &  &    &   &     &"  &#    &�  &�    &�  &�    &�  &�    &�  &�    'G  'H    'L  'L     'd  'd  !  'p  's  �  ��  ��  �  �   �   "  �   �  � � �  # �} �}  ' �� ��  ( �% �%  ) �+ �+  * � �  + � �  , � �
  . � �  3 � �  4 � �  5 � �  6 � �  7 � �  8 � �   9 �# �#  = �- �.  > �2 �2  @ �4 �5  A �� ��  C 
                                                                       	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �� r d e i� x � p k� v j� � �� s�� g w����� l |y � � � c n�@�� m }� b � � �{|��~ �� �9������� y��� � � � � � � � � � � �   � � � � �LS qOPQ zTRM  @
	,�Jv�-,�Fv�-, 9/-,K�
QX�IvY 9/-,�"�PX� �\\� Y-,�$�PX�@�\\� Y-,�  #?Ej�@�;�-, Ej�@�:-, E�Evj:-,� +-,�  �pE#F�Fa�&F`�  F�#a��b�`�Gvh:-,�#Eh;-,�Eh�Eh�@�`�;-@M+9Iyy�	))+++FIIIIJj�����!�� ���KRX��YKSX���@Y_^st_+\X@ '"5"6 7UVWW dg"u"www � � �"()77 7"FHWee fqqq vv"w��� ����� � ��"��"� � ������")^st@z..-%-W.-)01.%0$.$1e!f.r!u.�.��-�--+-.%.'/(#*$++7/8+G/V$V/W-Wg'g.t'tv%v.w$��%�'���(��&�(�-�-�!�0$^stuY    z����|�L�. U K Z < K A � � x d � x��T�|^T,�N��X��6^ K A <T ( � � 7  # _ <  2�� � �   " " " " B N � �V����<Pdx���^�� "z����*d��.Z���@X���.d��		R	t	�	�	�

8
b
�
�
�
�
�>n��0j���
"Tz��2n���0R|��@@`���0T��"Zf���4b���BLl������2DVl�����"8Pbt����
2H`�����&\������^jv�������,>JVhz��� 0<r��������
 2HZp�����.@Vht������� ,8Nd���&8N`lx������    * < H T ` l x � � � � � �!!!0!`!�!�!�!�!�!�!�"@"�"�"�"�"�"�"�"�#
# #2#>#J#`#r#�#�#�#�#�$"$8$J$`$r$�$�$�$�$�$�$�$�%%"%8%J%b%t%�%�%�%�%�&&&&,&8&J&V&b&n&z&�&�&�&�&�'','\'�'�'�'�'�'�((("(<(V(p(�(�(�(�(�(�(�))")*)2)t)|)�)�)�)�)�)�*
**<*D*L*�*�*�+,+D+\+h+t+�+�+�+�,,@,�,�- -&-f-n-�-�-�-�...8.l.�.�.�//b/�/�000,080D0P0b0z0�0�1111,141p1�1�2 22(2V2^2�2�2�2�2�3$3f3�3�3�3�3�3�3�3�3�4 44$4,444`4�4�4�5(5<5n5�5�6,646p6�6�7
77H7�7�7�7�7�8"8N8V8x8�8�8�8�8�8�99F9r9�9�9�:":T:�:�:�:�;:;F;x;�;�;�;�;�<<&<2<><P<|<�==F=�=�=�=�>>4>`>�>�? ?b?n?z?�?�@@V@�@�@�A,AdA�A�A�B>B~B�CCC$CRC�C�C�C�C�D$DVD�D�D�E2ErE�E�FFHF�F�F�F�F�G&G.GDGVGnG�G�G�G�G�G�H.HFHZHrH�H�H�III0IBIZIlI�I�JJJ.J@JRJ^JvJ�J�J�J�KK2K`KvK�K�K�K�K�K�LLL.LDLVLlL�L�L�L�L�L�L�M0MBMNMNMNMNMNMbMvM�M�M�M�M�M�M�M�N NN2NfNzN�N�O"O*O2OHO^O�O�O�O�PPRP�P�Q
QHQhQzQ�Q�Q�Q�Q�R RR R0R@RPR`RpR�R�R�R�R�R�R�S:S�S�TT"TpT�T�UDU�VV&V8V�V�V�WWW.W>WNWrW�W�W�XXX<XlX�X�X�X�YY"YLYXY�Y�Y�Y�ZZ*ZDZ`ZpZ�Z�Z�Z�Z�[[[[ [([0[8[@[H[P[X[`[h[p[x[�[�[�[�[�[�[�[�[�\\
\\\"\4\F\Z\l\x\�\�\�\�]]]&]8]H]`]z]�]�]�]�]�]�^�^�_P_�_�``0`J`�a(aBa`a�b,b�cc�c�c�d@dtd�d�e2ehe�ff>fzf�f�ggBg�g�h8hrh�h�i i�i�j jtj�j�    Z  :�   @ 	 ����� /�?�103!%!!Z��p@����l20    P   ��   @  �2�2 /+�?10353'3P���xx���C   �� K���& 
   
 �    -  ��   L@)


!
 �22�22�22�22� /3?3+33�22+33�22107535#53533533#3##5##5735#-���x�x����x�xx���K�K����K�K����K�    2��� # I@+	 	"	 !"

  
*%$��2���999+3�2 /3�+?3�++�1035!2=4#!"=4;533!"3!2+#52�((�薖id���((��idU�xnxxxUxx�xxx   (  ��    ' 3 ?@$0 *&
5"."(" ,4����2�2���� ?3���/3���1054;2+"7;2=4+"3%54;2+"7;2=4+"(_�__�_dxx�|x��_�__�_dxxd�LL�LL�����lL�LL�LL�   A  %�   <@"
	
	
 1	   )����9��9�� /�?�+�29107547&=43!!"3!#!"73!5!"AP2�c��##!��>��#'��#p�TD]pK�K��g�     K� ��  �  �� ?+1053Kx���     K�.Y�  ��� ??1073#K�s��s�����     -�.;�  � 	�� ??106'3-��s���������    # ��  ���9 ?107537''7#!�n�!�_V__V_�e2��2e2�>��>�  U (q  (@
 	
 ���2�2� /3+�2+10753533##5U�x��x�Z��Z��   �~ � x  �  /++1073A�d���     - ��J  �  � /�1075!-^�ZZ     P   � x  �  �� /+10353P�xx      ��  �  99 ?/1033?�����l     <  ��   !@		
  *����� /�?�10743!2#!"7;254+"<�"���ޖ�(�((�(x�xx�\xu  �    �  ��  @ 	 +���� ?�/105!#�@�?U�l?     <  ��  -@	 
		  
 *���9��2 /�?�+�10343!2=4#!5!2#!"!<�((�������(�x t Uxnx �U     P  ��  2@		 		   *��2�29�29 /�?�+�91035!2=4#!5!2=4#!5!2#P�((��,((�z��FF�U � U t UxMRRx     <  ��  	 )@	 	   *
���29� ?/�2�910753#5%!<����� �U��l�U1    <  ��  -@	 				 
  *��2���9 /�?�+�1035!2=4#!!!!2#<�((�f&�f,��U � ^U�x�x     <  ��   -@				 	 *���2��9 /�?�+�10743!!"!2#!"7;2=4#!<�h��P,���ޖ�(�((��x��U@tx�xu  �      <  ��  @ 	 *���29 ?�2/105!#<N�ś;?UU��?   <  ��  ! - 9@ 	$+		( " */.��2�29�2�29 /�?�+�99107547&=43!2#!"7;2=4+"5;2=4+"<FF�"�FF��ޖ�(�((�((�((�(xRRMxxMRRxu  �  �  t     <  ��   -@	
		
 
 *���9�2� /�?�+�10543!2#!5!2=!"73!54+"<�"����JP�Ԗ�((�(�nxx�t�U@�u �    �� P   ��'   h   �� �~ ��'   h �   _ g  � ���29 /1075%_��m�Z�l��l  U xq�   @  	��2 /���1075!%5!U��xZZ�ZZ     _ g  � ��2�9 /1075-5_m��l��l�Z  -  {�   0@	 	
-
 0��2�2��� /+�?�+�105!2+#532=4#53-���x��((�?Uxnx_� t ��xx     A����  % C@&
@� 
"
@�
'.!
 )&����+���9� ?�+���2+�1043!2!"=43!34#!"3!!";#"A����Ќ�Jn#��##��&�^#��#-hh�p�p�����F �   
  �  
 "@	 
 
999 ?/39+�1033#'!7!
6�6�M��Mu���l���     K  ��    6@	 		 -
 (��2�����9 /�?�+�9103!2#%!2=4#!5!2=4#!K��AK���@((��6((���xOOU}xU � U t   K  ��   @		/#	 (���2� /�?�10743!!"3!!"K���R((��4�x�xU �V U     K  ��   !@		 - (����� /�?�103! !'32=4+KT@��ȴ�ȴ�� �� U���  K  ��  ,@	 			 /
#	 (��2�29� /�?�+�103!!!!!Kb�*��\��U�U�U  K  �� 	 '@	  	0#	 (
��2�9� ?�/+�103!!!!KX�4��f�U�U��   K  ��  1@				-	 (����9�9 /�?�+�10743!!"3!5#5!!"K���R((J�6��x�xU �V �U�u  K  ��  +@
	  - (��2�2�� ?3/3+�1033!3#!K�|�������	�l6��     K   ��  @
 - (��� ?/1033K���l     -  ��  #@			- (����� /�?+10753;253#!"-�P�(���贐yt@ ��x     K  ��  %@	
 
 (��2� ?3/3910333	#K�H���(��{���>����&w�     K  ��  @	 0 (���� /�?1033!K�����U   K  ��  2@	 -	
 (����9� ?3/3399910333##K�����܌�����l��3��3    K  �� 	 +@ - (
����99� ?3/39910333#K�r��������l��   K  ��   !@		
- (����� /�?�10743!2#!"73!254#!"K�h������(,((��(x�xx�\xu  �      K  �� 	  (@	
  	-
	 (��2��� ?�/+�103!2#!!2=4#!K�����6((���x�x��Y �    K�`��   0@			-	
  (����9� /3�?�/10743!2+#'#"73!254#!"K�h��=K�K���(,((��(x�xx�\x��u  �      K  ��   5@	  		-	
 (��2��9� ?�/3+�2103!2##!2=4#!K�������6((���x�w����h �     A  ��  -@	 		 - 
(�2���9� /�?�+�1035!2=4#!"=43!!"3!2#A�((�Ԗ���p((,��U � xnxU t x�x    ��   @ 		0 0����/� ?�2/105!!#���?UU��?  K  ��   @		- (����� /�?310733!253#!"K�(,(�����x��  ��x     
  �  @	  9 ?3/91033#
�����ʠ����l     t�  @
 
9 ?33/399910333##�������͹���������l��	      ��  @
 
99 ?3/39103	373	#'!���ǡ��!���PD��������     
  �  @  	��9 ?3/91033#5
�����ʌ���)�f��    -  �� 	 '@		 /# /
�2�299� /�2?�21035!5!!-��>l�4�U�UU�U    U�.w�   @

 	/ ��+2� ?�?�10!#3U"���fK�0K      ��  �  99 ?/103#�?���l  7�.Y�   @
 
	/�2+�� ?�?�103#5!!7��"�އ�K��   #!�  � 9 ?�29103##�n�v��|����      �.l�y  �
<< ?�10!!l���K    ZJ�  �3 ++103#Z�nd��     7  5�   -@
	
	
. )��9�2�� /�?�+�10754;54#!5!2!"7;5#"7��#��J�����#��#pBpWKp��g�   A  S� 	  &@


 .
 )��2��� /�??�1033!2#%3254+A������##���p� pK  A  !�   @

1%	 )���2� /�?�10743!!"3!!"A�T��##;���p pK��K     A  S� 	  &@

.
 )���2�� /�??�10743!53!"7;#"A���z��#��#p p��lgJ     A  ?�   -@


.	 )��2��9� /�?�+�1074;2!3!!"354+"A����#E�����#�#p pp�pK"W  A  w�  %@ 
	
1
&	 )��2�2� ?�?�/1034;#"3#A���#��$pKMK�k     A�.S�   +@
	

. )��9�2�� /�?�?�10743!#!5!2=!"7;#"A�����O-����#��#p p��pK$cgJ  A  S�  %@ 
. )��2��� ??�/31033!2#4+A���#���p��y�k  A   ��   @ 	. )�2�2� /??�103353A����� 0dd   ���. �� 	  "@
 
	.
)�2�2� ?�??�103253+537K-��nx��$C��pdd   A  I�  &@	
 
 )��2� ??/39103373#'A�ߝ�َ�\��s�����Yn  A   ��  @
 . )��� ?/1033A���l     A  k�  *@ 	
. )������� ?�2/33103!2#4+#4+A���#��#��p��y�ky�k   A  S�   @ 

. )����� ?�/3103!2#4+A���#��p��y�k   A  S�   !@


. )����� /�?�1074;2+"7;254+"A�������#�##�#p pp� pg    A�.S� 	  &@ 


.
 )��2��� /�?�?10!2#!3254+A������##���p� p�     A�.S� 	  &@

.
 )���2�� /�?�?10743!#5!"7;#"A�������#��#p p�N�gJ     A  w� 	 @ 
1&	 )
���� ?�/1034;#"A���#ppK��   7  �  -@
 

 . 
)�2���9� /�?�+�1035!2=4+"=43!!";2#7;##���,��##���KTp)pK;pBp    A  w�  %@
	
1
& )��2�2� /�??�10733#;#"A���#���p$�K��K    A  S�   @

.	 )����� /�?31073;3!"A�#��z�pp����     q�  @	  9 ?3/91033#��������c�       k�  @
  
9 ?33/399910333##}xx�xx}��xx����^��^� ]��      S�  @
 
99 ?3/391037'373#'�ԓ����ٓ���훛��     �.q�  @  	9 ?3?91033#7�������b���c�N�     -  +� 	 '@

 1% 1
�2�299� /�2?�21035!5!!-S�����]KJKK��K    7�.��  3@

/
 /��2�2+2� ?�?�91075754;#";#"=7���}#��#}���n^�pK�ii�Kp�   U�. ��  �  �� ??103Ux�f��    7�.��  3@
 

 
/
 /�2+2�2�� ?�?�91032=7'54+532+7}#��#}��������ii�Kp�^n^�p  U �q�  -@ 

 ���9 /�+�910757622?"/&"U_#<#}�_#<#}�l9K		Nl9K		     P�L ��   @  �2�2 ?+��10353P������Cxx   i��IX  5@


 % ����2+3�2 /3�+?3�+1074;533!"3!##5#"i�Ud���##;�dU�p pxxK��Kxx    ��  +@ 				 ��2�2 /�2?�+3�2103535#53543!!"3#!nnn�J��(��|U�K�xU �K�U  Z 7lI      ?777Z�P�PP�P�P�P��P���P��P�P�P�P|�P�       ��  5@	��2�29 /?39+3�2�2�210333#3##5#535#53��̗逴����������&��KFKiiKFK  U�. ��    @�2�2 ??++1073#3Uxxx����h��     K�`{� ! - A@$
$
 *
	
 ( " */.���9��9���� ?���9��9��107547543!!";2#!5!2=4+"7;2=4+"K2�@��##͌2���'##͌�#�##�#�~C�pKhp~C�pKhg�     U:��   @ 2 ��+� +2|�21053353Usds:dddd   A  M�   ' 3@#&
).$! )(�����2��� /���?���10743!2#!"73!254#!"543!#";!"A_N__��_d��d_����_L�LL�LL����L<�<    (T��   -@

" ,��9�2�� ?�+�+�1054;54+532#"7;5#"(_���_�_d���5L'<L�LU�� # <{�&�  �    P �l�  @
  ���� /��105!#5PdYZ���   �� - ��J     A  M�   $ , J@*"&+!
..!"$("%$ )-����2����999� /��2?���+�210743!2#!"73!254#!"!2#'#532=4+A_N__��_d��d_UdkdX��L�LL�LL��D|LNH����N  UI��  � 2 �� +�105!UJIKK    2h��   @
 ���� ?�/�1054;2+"7;2=4+"2_�__�_d����LL�LL�   U  qX   '@			 ��2�2 /�/3�291035!53533##5U���x��xZZJZ��Z��   (��  .@  
"
 ,!���9��2 ?���+�1054;2=4+532+"!(_���__��L:<L:L^<   2��  3@	  " ,!��2�29�29 ?���+�910532=4+532=4+5!2#2���� �_22_<N<:<L"666L  ���  � 3 ++1073�n����    A�.S�  %@ 
. )��2��� /�?3?1033253#!A��#�������ky��p�     K�.+�   @


 ����� ?3?+1054;#"3K����hx,�x� �zf�� �� P � �Y    �    ��Qh   	 @ @	� 
��+ /��1032=3+�Z(d_�s ScL     _,�  @  !�+�� ?��1053#_�dX<��@     (T��   !@
" ,����� ?�+�1054;2+"7;2=4+"(_�__�_dxx��LL�LL��� - <��&�  �  �� (  R�'�T  & {� ��  �� (  ��'�T  & {� �  �� 2  ��'��  & u  �&    7�L��   0@		0
(���2�2�� ?+���+�1074;53#"3!!"5537�x��((��H��2x_� t Ux�xx  �� 
  p& $   C � � �3	+4  �� 
  p& $   v � � �3	+4  �� 
  p& $  L � � @3	 +4+4 �� 
  p& $  S � � @3	 +4+4 �� 
  R& $   j � � @2	 +44+44 �� 
  z& $  Q � � @4
 +44+44   
  =�   8@ 					 /
�2�2�29� /3�?�2+�+�103!!!!!!5!73#
6��H��z�����Mu�T�U�U�U���E   �� K�Q��& &   z �  �� K  �p& (   C � � �3	+4  �� K  �p& (   v � � �3	+4  �� K  �p& (  L � � @3	 +4+4 �� K  �R& (   j � � @2	 +44+44 ����   �p& ,   C�� � �3	+4  �� 7  'p& ,   v�� � �3	+4  ����  @p& ,  L�� � @3	 		+4+4 ����  6R& ,   j�� � @2	 
+44+44     ��   4@ 
		
-
�2�2��9� /�?�+3�21053! )32=4+3#PT@�������ȴ��;K� �� ;株��K �� K  �p& 1  S � � @3	 +4+4 �� K  �p& 2   C � � �3	+4  �� K  �p& 2   v � � �3	+4  �� K  �p& 2  L � � @3	 +4+4 �� K  �p& 2  S � � @'3	 &+4+4 �� K  �R& 2   j � � @2	 +44+44   s -S  �
�99 =/310?'77's��F��F��F��s��F��F��F��   K  ��    -@		
- (����99� /�?�9910743!2#!"7!"!25K�h������T��((,(x�xx�\x�� �6 n   �� K  �p& 8   C � � �3
	+4  �� K  �p& 8   v � � �3
	+4  �� K  �p& 8  L � � @3
	 
+4+4 �� K  �R& 8   j � � @2
	 
+44+44 �� 
  p& <   v � � �	3	+4    K  ��   /@
	 	  - (��22��� ?/+�+�1033!2#!5!2=4#!K�T����6((���xx�x�� �   A  S� " >@#		

 "	$." )#�������999 /3�?�+�91034;2+532=4+532=4+"A�܌2P���##�i##�#$ppcCT�pK�K���  �� 7  5�& D   CA   �� 7  5�& D   vA   �� 7  5�& D  LA  
� +4  �� 7  5�& D  SA  
� &+4  �� 7  5�& D   jA  � +44�� 7  5�& D  QA  � +44  7  ��   % C@(
	
	"
	
'. )&��9�2�2��9� /�2?�2+�+�10754;54#!5!2!3!!"7;5#"%354+"7��#��ƌ��#E�&��#��#|�#�#pBpWKp�pKg�gW  �� A�Q!�& F   zU   �� A  ?�& H   CF   �� A  ?�& H   vF   �� A  ?�& H  LF  	� +4   �� A  ?�& H   jF  � +44 ����   ��& �   C�   �� -  �& �   v�   ����  ;�& �
 L�  	� 		+4   ����  1�& �
  j�  � 
+44   A  X�    3@ 

	
".	
  )!����9� /�?+�10754;''7'37+"7;2=#"A��,tk+�g];����#�#�#p�pZ&C#V2"Cy;1�pg�  �� A  S�& Q  SP  	� +4   �� A  S�& R   CP   �� A  S�& R   vP   �� A  S�& R  LP  	� +4   �� A  S�& R  SP  	� &+4   �� A  S�& R   jP  � +44   U (q    ,@ 

 ���2�2� /+��+�/�1075!5353U��xxx�ZZ�nn|nn  A  S�    -@


. )����99� /�?�991074;2+"7#"32=A���������#(�#p pp� p� ���� �� A  S�& X   CP   �� A  S�& X   vP   �� A  S�& X  LP  	� +4   �� A  S�& X   jP  � +44 �� �.q�& \   vF     A�.S�   +@ 


. )��22��� /�??�?103!2#!3254+A������##��f�p� p�  �� �.q�& \   jF  � +44 �� 
  H& $   q � � @2	 +4+4 �� 7  5�& D   qA  
� +4  �� 
  p& $  O � � @3	 +4+4 �� 7  5�& D  OA  
� "+4  �� 
�Q�& $  R�  �� 7�Q5�& D  R �  �� K  �p& &   v � � �3	+4  �� A  !�& F   vA   �� K  �p& &  L � � @3	 +4+4�� A  !�& F  LA  
� 
+4  �� K  �R& &  P � � @2	 +4+4�� A  !�& F  PA  
� 
+4  �� K  �p& &  M � � @3	 +4+4�� A  !�& F  MA  
� 
+4  �� K  �p& '  M � � @
3	 ���+4+4 �� A  �'�   G  ��   �� �    A  ��   9@ 	
	

 )���229�2� /�??�+3�210743!5#53533#!"7;#"A����FF�z��#��#p p<A77A��gJ�� K  �H& (   q � � @2	 +4+4 �� A  ?�& H   qF  	� +4   �� K  �p& (  O � � @3	 +4+4 �� A  ?�& H  OF  	� "+4   �� K  �R& (  P � � @2	 +4+4 �� A  ?�& H  PF  	� +4   �� K�Q��& (  RE  �� A�Q?�& H  R �  �� K  �p& (  M � � @3	 +4+4 �� A  ?�& H  MF  	� +4   �� K  �p& *  L � � @3	 +4+4 �� A�.S�& J  LP  	� +4   �� K  �p& *  O � � @"3	 +4+4 �� A�.S�& J  OP  	� "+4   �� K  �R& *  P � � @2	 +4+4 �� A�.S�& J  PP  	� +4   �� K�.��'  �   *  �� A�.S�&P  J    �� K  �p& +  L � � @3	 +4+4 �� A  Sp& K  L P � @3	 +4+4     C�   A@$ 
	�2�22�22�2� ?3/3+�+33�22105353!533##!#!5!P�|�PP�����|���K____K�6���__    g�  8@ 	
	.�2�22��9� ??�/3+3�21053533#!2#4+#F�����#�A77A<p��y�k   ����  Ep& ,  S�� � @3	 +4+4 ����  @�& �
 S�  	� +4   ����  6H& ,   q�� � @2	 +4+4 ����  1�& �
  q�  	� +4   ��    "p& ,  O�� � @3	 +4+4 ����  �& �
 O�  	� +4   �� �Q ��& ,  R�   �� �Q ��& L  R�y  �� K   �R& ,  P�� � @2	 +4+4   A   ��  @
 . )��� ?/1033A���    �� K  ��& ,   -"   @	- 7+4+�� A�.��& L   M   @. .)+44+ �� -  �p& -  LO � @3
		
+4+4 �����.;�&K
 L�  	�+4   �� K�.��& s  .    �� A�.I�& 7  N    �� A  I��  �� K  �p& /   v�� � �3	+4  �� 2  "p& O   v�� � �3	+4  �� K�.��'  �   /  �� (�. ��' �y   O  �� K  ��' �   /  �� A  ��&A  O    �� K  ��& /  P ����� A  ��& O  P n��    ��  @	0	�2�2�� /�?10737!!5n��$����J7O��HHZ�U�%      c�  @			�2�2 /?10737#n�M!n�M"7;�&C7��&   �� K  �p& 1   v � � �
3	+4  �� A  S�& Q   vP   �� K�.��'  �   1  �� A�.S�& P  Q    �� K  �p& 1  M � � @3	 +4+4 �� A  S�& Q  MP  	� +4     K�.��  (@ 			- (����9� ?�?�/103!2+53254#!K�����7(���x��xU,p ��  A�.S�  (@ 
	
. )����9� ?�?�/103!2+53254+A���}Z-#��p�.pK$��k �� K  �H& 2   q � � @2	 +4+4 �� A  S�& R   qP  	� +4   �� K  �p& 2  O � � @&3	 "+4+4 �� A  S�& R  OP  	� "+4   �� K  �p& 2  T � � 
�3	+44�� A  S�& R  TP     K  o�   5@
			/ (����2�29� /�2?�2+�10743!!!!!!"73!!"K���H��z��r��(,��(x�xU�U�Uu �      A  ��   # 7@ 
 

%.	 )$����2��9� /�2?�2+�10743!2!3!!"7;254+"354+"A�b���#E�&��#�##�#|�#�#p pp�pKgWW �� K  �p& 5   v � � �3	+4  �� A  w�& U   v�   �� K�.��'  �   5  �� (�.w�' �y   U  �� K  �p& 5  M � � @3	 +4+4 �� -  ��& U  M�  	� +4   �� A  �p& 6   v � � �3	+4  �� 7  �& V   v-   �� A  �p& 6  L � � @3	 !!+4+4 �� 7  �& V  L-  	� !!+4   �� A�Q��& 6   z �  �� 7�Q�& V   z(   �� A  �p& 6  M � � @"3	 +4+4 �� 7  �& V  M-  	� +4   �� �Q��& 7   zU  �JvI�Iah:4 �� A�Qw�& W   z�   ��   �p& 7  M } � @3	

+4+4 �� A  ��&_P W        ��  0@
 
 	0	
 0��2�2�/� ?�2/+3�2105!!3###535��薖���?UU�K��;K�    ��  6@ 


1
&�2�22�29� /�??�+3�21075333#3#;#"=F�����#����Aw�KxAuKpl  �� K  �p& 8  S � � @3
	 
+4+4 �� A  S�& X  SP  	� +4   �� K  �H& 8   q � � @2
	 
+4+4 �� A  S�& X   qP  	� +4   �� K  �p& 8  O � � @3
	 
+4+4 �� A  S�& X  OP  	� +4   �� K  �z& 8  Q � � @4
 
+44+44 �� A  S�& X  QP  � +44 �� K  �p& 8  T � � 
�3
	+44�� A  S�& X  TP   �� K�Q��& 8  R  �� A�QS�& X  R �  ��   tp& :  LJ � @3	 +4+4 ��   k�& Z  L �   	� +4 �� 
  p& <  L � � @	3	 +4+4 �� �.q�& \  LF  	� +4   �� 
  R& <   j � � @	3	 	+44+44 �� -  �p& =   v s � �
3	+4  �� -  +�& ]   v2   �� -  �R& =  P s � @
2	
+4+4 �� -  +�& ]  P2  	�
+4   �� -  �p& =  M s � @3	+4+4 �� -  +�& ]  M2  	�+4     _�.5�  *@
	
 
& ���2��2 ?�?�?�103254;#"3#+_}#���#������pKMK�	p �� 
  %z& �   v� ��� 7  5z& �   v < ��� 
  =p& �   vO � �3	+4  �� 7  ��& �   v �  �� K  �p& �   v � � �3	+4  �� A  S�& �   vP   �� A�.��'  �   6  �� 7�.�& -  V    �� �.��& n  7    �� A�.w�& �  W     ���. �� 	 @ 
	.)
��� ?�?103253+7K-��n�$C��p    K��  @  3 ��� +3+91073#'K}d}fII��XX     K��  @  3 ��� ++2910373#KfIIf}d�XX��� UI�� q    i��  @	3 ���� +�+21053;2=3+"iPdPK�KXd]]d<   �:;�  � 2 �� +|�1053��:dd   s��   @
3 ���� +�+/�1054;2+"7;2=4+"sKxKKxKPPPXP<<P<>L  ��Qh <  @	@�	��� /��1047";#"5�<P((P}_5< 3 <L    F��  @
3�� ++91076322?#"/&"FI';4I';XI';4I';   Z��   � 3 +2+21073373Zdx�ddx�����    ��.,��  ��� /�?103#�dd2��� �~ ��   �� ��� v  �� U:�p& j  W   � �5
+4  �� 
  �&b   v�`�� 
� <4�� Ph ��   h  ����  a�'f �   v�G�� @/6 E:4+ <4����  ��'h �   v�G�� @-6 E:4+ <4����  ��'j �   v�G�� @ -	6 E:4+ <4����  u�'p �   v�G�� @- <4+ <4����  ��'u �   v�G�� 
� <4  ����  ��'y �   v�G�� @$$	-'$$<4+ <4����  1p&�
 X�  � 
+444   �� 
  � $  �� K  �� %    K  q�  @ 	0 (���� ?�/103!!K&�f�U��  
  �   @ 	 999 /�?91033%!
6�6������lU��� K  �� (  �� -  �� =  �� K  �� +    K  ��    /@	
		
- (����99� /�?�+�10743!2#!"73!254#!"53K�h������(,((��(A�x�xx�\xu  �  �UU �� K   �� ,  �� K  �� .    
  �  @	 9 ?/391033#
6�6�����l���� K  �� 0  �� K  �� 1    7  ��    (@
  /
# /�2��2�� /�?�+�1035!5!5!7l��l���__5__��__ �� K  �� 2    K  ��   @ 		- (����� ?�/3103!#!K������l?���� K  �� 3    7  ��  '@			 /
#	 /�222�2� /�2?�210357'5!!!7��b�F���U��UU��U��   �� 7  �� 
  � <    A  u�   # ;@ "		%- ($���22�22��� /�2�2?�2�21074;5332+#5#"7;#"3254+A�����������(��(T�((��xKKx��xKKu T ��    ��   �� ;    A  u�  5@	
- (���2�2��� ?33/+3�2103;33253+#5#"A�(���(������"r�� ��k u��x��   7  �� ! 3@	 	 #- ("��9��999� /3�299?�10353'&543!23!57654#!"7�^�h�^���q(��(qUm,xx��,mU_�  ���_����  6R&j   j�� � @2	 
+44+44 �� 
  R&u   j � � @	2	 	+44+44 �� 7  ��&�  Wn   �� A  �&�  W<   �� A�.S�&�  WP   �� -  �&�  W�   �� A  Sp&�  XP  � 
+444     7  �� 	  %@

1
 )������ /�2?�107543!3!"7;#"7�1n�aႂ����x��kK�hJh   A�.S�  " =@#	
  

	$. )#��2�����99 /�?�?+�9104;2#!32=4+532=4+"A�܌2P����##�i##�#��pp]DT�p��K�     �.q�  @  	��9 ?3?91033#5���������c���    A  S�   ?@#
	
	

.	

 )�����9999� /�?�2+�910754;'5!#+"7;2=#"A������F����#�#�#p�p�KK�.@�pg�     A  �  2@



1% )�2�29�29� /�?�+�9107547&543!!";#"3!!"AAA�J��##��##1���p+LSuK;KTK   A�`+�  -@

 1% )��9����9 /��?�210754?!5!3!#5#"A:������#En��p�4+�KK���    A�.S�  !@ 

. )����� ?�?/103!2#4+A���#��p��K�k  A  S�    -@




. )��2�2�� /�?�+�1074;2+"7;2=!5!54+"A�������#�#��#�#p�pp�Lpg�K�   �� A   �� �    A  I�  %@	
 
 )��2� ?3/39103373#'A�ߝ�َ�\�������Yn      S�  @	 	9 ?/39103'3#�b�C������lE��  �� A�.S� w  ��   q� Y    A�`+�  7@


 1	% )�2�29�29�� /�?�/+�9107547&=43!!"3!#"3!#5#"AAA�^��## ��##En��p�KK]pK�K��  �� A  S� R    A  S�   @ 
	. )����� ?�/3103!#!A����� ��k  A�.S�   &@ 


. )��2��� /�?�?104;2#!3254+"A�������##�#�Bpp� p�  A�`+�  %@

1%	 )���2�� /�?�/10743!!"3!#5#"A�^��##En��p pK���     A  ��   %@


1 )������ /�?�210743!#+"7;25#"A������#�#�#p pK��pg.   #  I�  "@ 
	1 1�+�+/� ?�2/105!###&҂�KK�k�     A  S�   @	
.
	 )����� /�?31073;253+"A�#�#����pp��y��p   A�.�   4@

. )���2�2��� /3�2?3�?1073;!2+#5#"%3254+A�#�"��������##�pp���p� p��K     �.S�  @
 
99 ?3?39910373#'�چ����߆���]U��������  A�.�  3@	
. )���2�2��� /3�2?33?1073;33253+#5#"A�#���#������pp����ky��p��  A  �  3@	
. )����9��� /3�29?3+1073;2=3;253+"'+"A�#d#�#d#��lS""Sl�pp����y��p((  ����  1�&�
  j�  � 
+44 �� A  S�&�   jP  � 
+44 �� A  S�&�  WP   �� A  S�&�  WP   �� A  �&�  W �  �� K  �p&�   C � � �3	+4  �� K  �R&�   j � � @2	 +44+44   �.��  <@"	 		-	 0���2�/��9� /?�?�2+�105!!!2+53254#!#���6����7(��?UU�x��xU,g ��?�� K  qp&�   v i � �3	+4    A  ��  ,@			/	# (��2�29� /�?�+�105)!"!!3!! A@,�ٹ��z����� � U�UA�U �� A  �� 6  �� K   �� ,  ����  6R&�   j�� � @2	 
+44+44 �� -  �� -      y�   ,@	
		 
-��2��� /3�?�+�103!!2#!#%!2=4#!��6���>��((�����x�x?��U �      K  ��   :@!	 	 - (��2�2�2��� /3�?3+3�21033!3!2#!!%!2=4#!K�T�6���>���((�����	��x�x6��U �     ��  4@		 	-
 0���2�/��� ?�2/3+�105!!!2#4#!#���6��(��?UU�x�� ��?�� K  �p&�   v s � �3	+4  �� K  �p&�   C � � �3	+4  �� 
  �p&�  O n � @3	 +4+4   K�L��  -@
		
- (�����+� /3�?3?1033!3!#5K�|�������?�l��   �� 
  � $    K  ��   -@	 		 - (��2��9� /�?�+�103!!!2#%!2=4#!KD�HT����6((���U�x�xU �    �� K  �� %  �� K  q�d    �LM�   8@ 	 		
���9�+�� /�22?�?31073!3#5!#!#X��d��Ђ�`�U?������	� �� K  �� (      G�  (@ �2�2� ?33/339103	333	##5'(�� � ���(��S�S���������&P��P��  7  ��  2@		 		 -$ /�2�29�29� /�?�+�91035!2=4#!5!2=4#!5!2#7�((��T((�R̖FF�U � U t UxMRRx     K  �� 	 +@ -	 (
����99� ?3/39910333#K�r��������l�� �� K  �p&�  O � � @3	 
+4+4 �� K  �� .      ��  @ 		-��� ?�/3103!##�֌����l?��  �� K  �� 0  �� K  �� +  �� K  �� 2  �� K  ��q  �� K  �� 3  �� K  �� &  ��   �� 7    
  ��  �   ?3/91033#7
��ĕ���e���\�l� �� A  u�v  ��   �� ;    K�LC�  ,@
	 
 (����+�� /�2?3?1033!33#5K�|�d����?�����  7  ��  '@	

-
 (���2�� ?3/+�1033!3#!"7�(6�����|�� ;�l    K  ��  *@		 - (������� /�2?3310333333K��������?��?�l    K�LG�  6@		  (������+�� /�22?33?103333333#5K�����d����?��?�����     �   -@	
 		
-
 0���2��� /�?�+�105!!2#!!2=4#!|T��� �6((��?U��x�x?� � �� K  ��&�  ��   @	-8+4+  K  �� 	  (@	 
	 -
 (��2��� /�?+�1033!2#%!2=4#!K�T����6((�����x�xU �    7  ��  ,@	 		 -$ /�2�29�� /�?�+�1035!2=!5!4#!5! !7��z����,@��U�AU�U� ��      K  ��   6@			 !- ( ��2�2���� /3�?3�+�10333543!2#!"=#%3!254#!"K���h������(,((��(���xx�\xx���u  �       #  ��   4@	  	-	(���2�999� ?�/3+�2103&=43!##3!5!"#�������(6��(w�x�l��� �   �� 7  5� D    A  S�   +@


. )��2��9� /�?�?�1074!3#"!2+"7;254+A�҂�����#�##�pT�Kip� pg  A  ?�    6@
 

 .	 )��2�����9 /�?�+�9103!2#'32=4+532=4+Ah�<F���##��##��uSO)pKTK;     A  ��  @ 
1 )���� ?�/103!!A����K�k  �`��   8@ 
 
	
���9�+�� /�22?�?31073!3#5!#7!#L�wZx�Hx��K��k렠�J   �� A  ?� H      a�  (@ �2�2� ?33/339103'35373#'#5'�ϝ�����َ�>�>�ʼ�������<��<�    -  �  2@
	 

 .' 1�2�29�29� /�?�+�91035!2=4+532=4#!5!2#-1##��##��J�AA�KTK;KuSL+p     A  ]� 	 +@ .	 )
����99� ?3/39910333#A��������H� H�� �� A  ]�&�  OU  	� 
+4   �� A  I��      I�  @ 
	.��� ?�/3103!##������� ��k    A  ��  2@	 .	
 )����9� ?3/3399910333##A�����������d� %��%��    A  S�  +@

  .	 )��2�2�� ?3/3+�1033!53#5!A�����྾� ��   �� A  S� R    A  S�   @ 
	. )����� ?�/3103!#!A����� ��k�� A�.S� S  �� A  !� F  �� #  I��  �� �.q� \    A�.�   # =@""

%. )$���22�22��� /3�2??3�2?1074;5332+#5#"7;#"3254+A�����������#��#,�##�p p��p� p��gJ����   S� [    A�`��  ,@

 
 )����+�� /�2?3?1033!33#5A��Zx��k��k�   7  5�  '@


.
 )���2�� ?3/+�1053;53#5#"7�#ׂ���)���� �  A  /�  *@	
 . )������� /�2?3310333333A�������k��k��     A�`��  6@	
  )������+�� /�22?33?103333333#5A�����Zx��k��k��k�    #  ��   -@

 


.
 1���2��� /�?�+�105!32#!32=4+#,�������##��K�pBp���T�� A  %�&�   �b   @	.9+4+  A  ?� 	  (@
 

 .
 )��2��� /�?+�103332#'32=4+A������##��pBpKT    -  �  ,@
 

 .' 1�2�29�� /�?�+�103532=!5!4+5!2#-܂��{� ���Kh$KsK�x�   A  W�   6@


 !. ) ��2�2���� /3�?3�+�1033354;2+"=#%;254+"A���������#�##�#�Npp� ppg�g   #  5�   4@
  
.	)���2�999� ?�/3+�21037&=43!#5#;5#"#}i�r��|#��#�aGp� �� �   �� A  ?�&�   CF   �� A  ?�&�   jF  � +44   �.g�  >@# 	
	
.�2�22��99� /?�??�+3�21053533#!2+53254+#F�����}Z-#�A77A<p�.pK$��k �� A  ��&�   v(     7  �  ,@


1	% )��2�29� /�?�+�107543!#"!!;#"7� ��{�����x�KsK$hK�� 7  � V  �� A   �� L  ����  1�& �
  j�  � 
+44 �����. �� M      ��   ,@



 
.��2��� /3�?�+�103!32#!#%32=4+�w挌������##��pBp��kKT     A  ��   :@!
 
 . )��2�2�2��� /3�?3+3�21033!5332#!5!%32=4+A��挌������##�྾�pBp��KT��   g� �  �� A  I�&�   v7   �� A  ]�&�   CU   �� �.q�&�  OF  	� +4     A�`S�  -@

	
. )�����+� /3�?3?1033!3##5A���x��k�� ��    W�   <@# 					- 0��2�22���� /�?+�+3�21053533#!2#!!2=4#!Ȍ��T��� �6((���UZZUZx�x��p �      #  ��   :@!
	 

. 1��2�22���� /�??3�2+�1053533#32#!32=4+#�����������##��K��KspBp���T  K  ��    -@	
		
- (��2�2�� /�?�+�10743!2#!"73!2=!5!54#!"K�h������(,(��|(��(x�xx�\xu  �U�       A  S�    -@




. )��2�2�� /�?�+�1074;2+"7;2=!5!54+"A�������#�#��#�#p pp� pgpKW     
  k�  @		 =/ ?3�/91033##
����}�����U��    ��  @	
 =/ ?3�/91033##����aƌ���cK�k   K  q4  @ 		0 (����� ?��/103!53!K���f�����  A  �l  @ 
	1 )����� ?��/103!53!AJn������k    ��  )@
 	0�2�2�� ?�/+3�21053!!3##P&�f�Ì;KU�K��;      �  )@
 
1�2�2�� ?�/+3�2107535!!3##5F��ʪ���A�KxA��    K�.��  4@	 		 -	 (��2��99� /?�?�+�103!!!2+53254#!K&�f6����7(���U�x��xU,g ��    A�.5�  4@
 

 .	 )��2��99� /?�?�+�103!!32+53254+A���挌}Z-#��Ksp��pK$�   �L[�  9@ 
 	 �2�2��� ?33/33�9?103	3333#5##5'(�� � ����V�2�S�S������������&P��P��     �`k�  9@ 
 
 �2�2��� ?33/33�9?103'353733#5#'#5'�ϝ����ϞEx �>�>�ʼ�������<��<�  �� 7�Q��&�   zn   �� -�Q�&�   z     K�L��  .@
	 
 (��2��� ?3/3�9?103333#5#K�H����V�2�{���>�������&w�    A�`S�  .@

 
 )��2��� ?3/3�9?1033733#5#'A�ߝϞEx �\�������Yn    K  ��  4@
  (��2�2�2� ?3+/3+9103375373	##5K�<U����(��U<���:�l�����
��:�     A  I�  4@
  )��2�2�2� ?3+/3+9103375373#'#5A�2Kb��َ{K2��0�8`���ac1n    ��  2@ 	
�2�22� ?3/39+3�21053533#3	##d�ddH���(��{��KPPK�>����&w��     ]�  2@ 	
�2�22� ?3/39+3�21053533#73#'#F�FFߝ�َ�\�mA22Af�����Ynm       ��  (@	
 	
 0���2� ?3�/39105!3	##|H���(��{�?U��>����&w�?   #  ��  (@	
 

 1���2� ?3�/39105!73#'##,ߝ�َ�\��K������Yn�  K�LC�  8@!
	 	 
 (��2�2�+�� ?3/3�+�?1033!33#5#!K�|�d�n�����	�����6��   A�`��  8@!

 
 
 )��2�2�+�� ?3/3�+�?1033!533#5#5!A��Zxd��྾�k���    K  ��  0@	 	 	0	
 (��2�2��� ?3�/3+�1033!!!#!K�|��������	U��6��  A  %�  0@
 	 
1	
 )��2�2��� ?3�/3+�1033!5!##5!A�T҂��྾K�k��   K�.��  :@"	  		
-
 (����2��9� ?�?�/3+�103!!2+53254#!#!Kl6����7(�������x��xU,g ��?��   A�.��  :@"
  


.
 )����2��9� ?�?�/3+�103!32+53254+#!A挌}Z-#͂���p��pK$���k   K  C�  ! 1@			#-	 ("����2��� /�2?�+�10743!!";54;2#!"%32=4+"K�,��((������4�((Z(x�xU �V �xx�xU �       A  ��  ! 1@


#.	 )"����9��� /�2?�+�1074;#";54;2#!"%32=4+"A���##K�F���ʌhK##(#p pK���pp`pKr �� K�Q��&�   z �  �� A�Q!�&�   zU     �L��  .@	
 	
0
 0����/�+� ?�2/�?105!!3#5#���d�n?UU����?   #�`I�  0@

 

1
 1�+�+/�+� ?�2/�?105!#3#5##&�Zxd�KK���� �� 
  � <  �� �.q��    
  �  )@ 
 
 	
��999 ?3/+3�2910333##5#53
�����በ������)��K��K    �.q�  '@ 
 	
��999 ?3?/3�2910333##5#53����뇌������c� A��A   �L�  ,@	 	=�2��� ?3/3�9?103	3733#5#'!���ǡ���]�3��PD����������     �`]�  ,@
 	=�2��� ?3/3�9?1037'3733#5#'�ԓ���ԖMx%���훛��렠�    �L�  5@ 			
		 0������+�� /�2?3�2?105!#!33#5!��|�d���?UU�?�����?     #�`C�  5@ 
	

		 1������+�� /�2?3�2?105!#!33#5!#��Zx��KK����k��  7�L�  4@	
	
		 (���2�+�� ?3/�+�?1033!33#5#!"7�(6�d�n���|�� ;�����  7�`��  4@



		 )���2�+�� ?3/�+�?1053;533#5#5#"7�#ׂZxd��)����k령     7  ��  <@"		-
 (��9�2��+3�2 ?3/+3��2�103;5333###5#"7�(ZU����Ux�|�� ��;�l��     7  5�  <@"
	.
 )��9�2��+3�2 ?3/+3��2�1053;53353#5##5#"7�#2KZ��ZKK�)��dd�� �dd     K  ��  '@	  - (��2��� ?/3+�1033!2#4#!K�T��(�����x�� ��  A  ?�  $@
 . )��2��� ?/3/�103332#54+A����#��p���     M�   5@
 			-	 0��2�2��9� /�?�+3�21053543!2!3!!"=7!54#!"��^��(��*��r(��(6U�xx�� Ux�U�      #  ��   5@
 


.	 1��2�2��9� /�?�+3�21075354;2!3!!"=7354+"#�����#E�����#�#�KNpp�pKpgKW  �� K   �� ,  ��   Gp&�  O1 � @"3		+4+4 ��   a�&�  O �   	�+4   7�L��  3@	
	

- (���2��+� ?3/�+�?1033!3##35!"7�(6�n�d���|�� ;�l�	�    7�`5�  3@




. )���2��+� ?3/�+�?1053;53##535#"7�#ׂdxZ��)���� ��n�� A   �� O  �� 
  p&�  O � � @3	 +4+4 �� 7  5�&�  OA  
� "+4  �� 
  R&�   j � � @2	 +44+44 �� 7  5�&�   jA  � +44�� 
  =� �  �� 7  �� �  �� K  �p&�  O � � @3	 +4+4 �� A  ?�&�  OF  	� "+4     K  ��   -@			-
 (��9�2�� /�?�+�1075!54#!5!2#!"73!2=!K�(�H֖�����("(��x�� Ux�\xu  �    A  ?�   -@


.
 )��9�2�� /�?�+�1075!54#!5!2+"7;2=#A|#��^��挂#�#�p�pKp� pgW ��   GR&�   j1 � @2		+44+44 ��   a�&�   j �   �+44   �� 7  �R&�   j n � @2	 #+44+44 �� -  �&�   j  � "+44   7  ��  .@		 		 -$ /�2��2� /�?�2+3�1035!2=4+57!5!2#7�((���Ib���U � U�UU�i�x   -  �  .@
	 

 .' 1�2��2� /�?�2+3�1035!2=4+57!5!#-1##}���ք��KTKsKKsmBp�� K  �H&�   q � � @
2	 
+4+4 �� A  ]�&�   qU  	� 
+4   �� K  �R&�   j � � @
2	 
+44+44 �� A  ]�&�   jU  � 
+44 �� K  �R&�   j � � @2	 +44+44 �� A  S�&�   jP  � +44   K  ��    -@
		
- (��2�2�� /�?�+�10743!2#!"73!2=!5!54#!"K�h������(,(��|(��(x�xx�\xu  �K�       A  S�    -@



. )��2�2�� /�?�+�1074;2+"7;2=!5!54+"A�������#�#��#�#p pp� pguA\   �� 
  �H&�   q n � @2	 
+4+4 �� �.q�&�   qF  	� 
+4   �� 
  �R&�   j n � @2	 +44+44 �� �.q�&�   jF  � +44 �� 
  �p&�  T n � 
�3	+44�� �.q�&�  TF   �� 7  �R&�   j x � @2	 +44+44 �� 7  5�&�   j<  � +44   K�Lq� 	 (@	 	 0 (
����+� ?�/�?103!!3#5K&�fd��U����   A�`�� 	 (@
 
 1 )
����+� ?�/�?103!!3#5A���Zx�K���  �� K  �R&�   j � @2	 +44+44 �� A  %�&�   j �   � +44     K�LC�  -@	 
	 (����+�� ?�/3�?103!3#5#!K�d�n��������?��    A�`��  -@
 

 )����+�� ?�/3�?103!3#5#!AZxd����k���k   �� K  �R& %  P � � @2	 	+4+4 �� A  SR& E  P P � 	� +4 �� K  �R& '  P � � @
2	 ���+4+4 �� A  SR& G  P P � 	� +4 �� K  �R& )  P } � @
2	 
+4+4 �� A  wR& I  P�� � @2	 +4+4 �� K  �R& 0  P � � @2	 +4+4 �� A  k�& P  P �   	� +4 �� K  �R& 3  P � � @2	 +4+4 �� A�.S�& S  PP  	� +4   �� A  �R& 6  P � � @2	 +4+4 �� 7  �& V  P-  	� +4   ��   �R& 7  P } � @2	
+4+4 �� A  wR& W  P�� � @2	 +4+4 ��   tp& :   CJ � �3	+4  ��   k�& Z   C �  ��   tp& :   vJ � �3	+4  ��   k�& Z   v �  ��   tR& :   jJ � @2	 +44+44 ��   k�& Z   j �   � +44     K  ��  ?@#			 -
 (����99999� /3�?�2+3�10343!32+532=4+57#"K���H����((Ȏ�(xU�x�xU � U� ��  �� 
  p& <   C � � �3	+4  �� �.q�& \   CF     � �&J  �  �� /�1075!���ZZ  - �?J  �  � /�1075!-�ZZ     - ��J  �  � /�1075!-��ZZ       ��J  �  << /�10=!��ZZ  -� ��  
�  ?+1073-ddA���  7� ��  
�  ?+10737A�d����� �~ � x     -� ��  
� ?+103#-�Ad�� �� -���&~  ~ �  �� 7���' �    �� �~� x&�  � �  �� -���&�  � �    7��!�  @ 

	
�2�2 /??3�21053533##7������K��K��     7��!�  /@ 


�22�22 /??3�2+3�210753#53533#3##57���������KK �K��K�K��   P �@�  �  �� /+10753P����  �� P  4 x&   ' ,   X   � I;4I� Fa:     (  ��    ' 3 ? K R@/H08 B*>&
M:F"@4"."(" ,L����2�2�������� ?3���/33�2�2�21054;2+"7;2=4+"3%54;2+"7;2=4+"54;2+"7;2=4+"(_�__�_dxx�|x��_�__�_dxxT_�__�_dxxd�LL�LL�����lL�LL�LL���LL�LL�   �� K� �� 
  �� K���     # <c�  �  /�991073##��������   - <m�  � /�9910?'3-�����<����   -  {�    4@	 	
-
 0��2�22��� /+�?�2+�105!2+#5332=4+-���x��Z((Z?Uxnx_h��xx� t ��  �lC B  �   �`  T�  � 99 ?/10#3�|x����l     (��   "@
" ,!����� ?���1054;2+"7;2=4+"(_�__�_dxxd�LL�LL�     (��  	 -@	  " ,!
���29� ?�+3�910573#5'35(�xd��c<���K<�    (��  .@ 	 	
" ,!��2���9 ?���+�10532=4+5!#32#(��T�__<N�<ZLNL   (��   .@	"	 ,!���2��9 ?���+�1054;#"32+"7;2=4+(s׾(�__�_dx�d�\< :LNLLN     (��  @  ,!���29 ?�2�105!#(h�r�X<<��@     (��  ! - :@!$+("" ,/!.��2�29�2�29 ?���+�9910547&=4;2+"7;2=4+"5;2=4+"(22_�_22_�_dxxxxd666"LL"666LLN\:   (��   .@

"
 ,!���9�2� ?���+�1054;2+532=#"7;54+"(_�_s��(�_d�x:LL�\< NLJ     <,|N  @
 	
�2�2 ?3�21053533##5<sZssZ�FnnFnn  <�|�  	�  ?�105!<@�FF  �� <T|&&� �� F    7 � ��  ��� ?/1073#7UUPPUgn��n  # � ��  �	�� ?/1076'3#PPUUU�nng��g  (U��  @ 
" ,����� ?�/310!2#54+(	_d�U?L����   �� (  �|�  �� 
�

 <6  �� _  ,| {  �� 
� <6  �� (  �| t  �� 
�   <6  �� 2  �| u  �� 
�   <6  �� (  �|�  �� 
�
 <6  �� (  �|�  �� 
�   <6  �� (  �|�  �� 
� <6  �� (  �|�  �� 
� <6  �� (  �|�  �� 
�. <6  �� (  �|�  �� 
�

 <6  �� < |6�  ��  �� < �| ��  ��  �� < <|�  ��  �� 7�� �|�  ��  �� #�� �|�  ��      ��  7@
 		 
��22�22 /�2?�+3�2�2�2103535#535#53543!!"3#3#!nnnnn�J��(����|U�KFKdxU gKFK�U    \�  >@  		����99� /3?399+3�2�2�2107535#535333#3###5nnn�@�nnnn�����KFK��%��KFK���%�       t�  3@ 	9 /3?33999+3�2�2�210753'#53'3333#3###'�}g?�������?g}��?����?�KFK��
��
��KFK����    P�~��    B@%	


 ��2��229�22 /���??�+3�210!!543!5#53533#!"7;#"P�����FF�z��#��#AA� p<A77A��gJ       ��  5@ 				! ��22�22 /�?�+3�2�2�2107535#53543!!"!!!!3!!"=ddd����(����(r�p��KFKdxU gKFKg Uxd�� K�.7�& '  ��      4�   @@#
		!
 �22�2��22� /?�+�+3�2�2�210535#535!23#3##!#!2=4#!nnn��onno��ތ�((��TKFKddKFKd�T �     (  ��  ;@!  		 *��22�2�29 /?��+�2+3�2105!2=!5!54#!5!#3##(T(��|(��vunn����U &K& UK;K#w��      ��  5@	��22�22+� /�?9+10757557537732=3#!5ddd����ҾP�����OFO̦8P8F8P8�@ty��    ��   >@" 		�22�22��9� /?�+3�2+3�2107535#53!2#!!!#57!2=4#!nnn�����"�ތ�((��xKAU;x�xAKxx� �    2���  $ , [@4$	%
 +	
	   (  % *.-���2����9+3�2�2�2 /33�+2?33�+2+�910335335332+#5##=!2=4#!5!2=4#!2�ZPZ2�AK�<ZPZ"((��((���xxxxxOOU}xxxxxU � U t     (  ��    + 9@("-%" 	 ,,���2�2���� /3���?3���1054;#";#"3%54;2+"7;2=4+"(_����_�|x��_�__�_dxx��L<�<����lL�LL�LL�    A  '� 	 @
1 )
���� /�?1073;#"A�-7Z�p$��$K �� K  ��& 1   |   
�-
+44  A  M�   ! ) <@# "(
+.%""! )*����2����� /��?���+�10743!2#!"73!254#!"!2+532=4+A_N__��_d��d__���L�LL�LL��D|LXL��X     ��   >@! 	
������9� ?33�2/222999105!##33#5#'��d@}��}dp`pX<<��@��|���������� 7  ��y    &  �   @
 ?�/�+�1066 ! 73#"!5& &�0���`c7r��P�`��`�����hl�S�hh �� (  ��& {� '�T  �  �� 2  ��& u  '��  �l  �� (  ��&�  '��  �l  �� (  ��&�  '�|  �0    - -�  @ 
 	�22�� /�+�91073!!#-떠��M���x�     A  !�  @

	��+�9� /1057'#A��x��떠�M�   7 -�  @
 	��22� /�+�91075!'3#77����떠�x���  A  !�  @
  	��+�9� ?107537A�x��떠��M���   A  S�   +@


. )��9�2�� /�?�?�10743!4+53 +"7;25#"A��������#�#�#p piK���pg.�� 
  �e    K�t��   @ 		- (����� ?�/310!#!K����� ����5     F�t��  '@ 		/	# /�222�2� ?�2/�210	5!!	!!F��b�C�����7;;UU����U    U �qJ  �  �� /�1075!U�ZZ���`  T��  �� P � �Y y    A  ��  @

  
	�� //�910533#A�Z�n��nJK��g�J     A d/�  ! - 4@$
*
	/(" ).����99��� ?3�29�2�2910754;26;2+"'+"7;2=4+";2=4+"A_�;;�__�;;�_n��J����LL�LV���    P  �0  �  ���� /��1033!Pd�0�*Z     (�.��  !@	
 
1& 1����� ?�?�103254;#"+(i#��i#����pK�qp  �� U ?q�& a � a x    U  q:   @
  ��2 /3�2�2�2107537!5!73#!!'7U�K��1<P(��K ���<P(xZ�Zx(PZ�Zx(P   _  gb  
 @ 
 ��2�229 //�1035!5%_����gZZ@Z�k��k   _  gb  
 @ 	 ��22�29 //�1035!%5-5_��g��ZZxk��k�Z    -��q�   � 	99 =/310	7'-""�ޣ���J��z�z����     A�.!�  
� ??1073#A6��ܪ���M�M  -�.�  
� ??103	-�ܪ6������M�M   K�.��  � �� /10%K#��#Ab�<���<  7�.m�  ��� /107'77��#�햑�<����   �� <  ��' �  ' {�     �� A  �& I   I�   @
11)+4+   �� A  ]�& I   L�   @.1)+44+ �� A  ]�& I   O�   @
.1)+4+   �� A  ��& I  ��   @.%1)+444+   �� A  ��& I  ��   @.!1)+44+   K�.��  3@ 		-	 (���2�99� ?�?3/99910333+532=K�r����7�z��#��xU,D��   �� (���  �� _,� {  �� (�� t  �� 2�� u  �� (���  �� (���  �� (���  �� (���  �� (���  �� (���  ���`  T��  �� (  �|�  �� _  ,|�  �� (  �|�  �� 2  �|�  �� (  �|�  �� (  �|�  �� (  �|�  �� (  �|�  �� (  �|�  �� (  �|�    <  ��    .@
		
  *���2�2� /�?�910743!2#!"7;255%54+"<�"���ޖ�(�(��6(�(x�xx�\xu  �d�0   �� <  |� � �� <  v� � �� 2  �� � �� 2  �� �   ��.E��  �  /�?1073�#sAҠ�  ��E�  
�  ?+1073�#sA���  �Y�  � 3 ++1073�AU#��  �� -  �p& -   vE � �3
	+4  �����.�&K   v�     7��W�      3@ 


 �22���22�� /33���22��10535353'53537�ddddddd�dd����Tdd����dd     K  ��  �  �� /?103!K���l  K ���  �  �� //107!K��J��  K  ��  �  �� /?103!KJ��l    <�X  �  /�105!hh��<��     -  �l  �  /103	-hhl��  K����  � /10Kl���    - (��  �  ?10!-������     -����  �/10-lJh�0   -����  � 9 =/10	-hh��Jh����    A  ��  � �� /�1066  A�����������  -  �  � / /103-���   K  +�  � / /103K���   K �+�  	�/ ?107!K��  - ��  	�/ ?10!-���      -����    ''77"-}WY�<��A��kOyI�����9@�"��6U�vL(     -  %� 	  !!'-"ZZ"�Z��Z��������     7����   * 4 8 < B F J T X \ h u  74654&547&6327#"&7'462#/32654&#"'5777'533533254#"57757?32#"&?67"7B	6PK4!HR>2!���!W7KZK7%.IU5F-(#
#I.%5U

RH!22-P6	B�� Nn#�*,2LP"0�AnnA�0x
+**+
�W+&#��"!"�P�####"&+W1#��"!"$'2,*	PL�nN   A��M�      67727"462"?!&A��:K�>�Z�/B//B]����J�t�$D����4eB//B/��t�D     A��W� 4 : B J P  747672654'654&#"327#"'#"'3264&#"&73&62&"264&"653A��xa�ax��cFDabEC3BuFKKFuB3CEbaDFc�Aa!�o9�9 -h-/**caA���P�4qDaaDq4�P�3*Hda�a,^--^,a�adH*�s48HX%%9}**�4s�H     7���  '  5?'7?37'#/'7'6264&"7c29YEPEY92cc29YEPEY92�;R;;R"PEY92cc29YEPEY92cc29YEmR;;R;     A  �� - 8 @ I  7467&#"&54632632#"'732654'#"&73267&'6462"654&#"A�w=.(.5F9XssX9FFFF9Lb,-$(.J�e9FB.(N�BSua��2F22F[`J.(1X�_-)$-,bL?@FF@?XssX?@5-).=a�@p)-�_tIF�5F22F24D^=.)-     7  9�  	   73!%35#535#7^F^#�D"xxxx<X��<KPF�     7����   73%7����R�����U��J     K���    77!!!5!K�"����i���"������  A��� 	 Q Y  432#"&4654&54654&54323254&543232632#"&#"#"&#"#"54654#"#"462"A348!&K�K�E$#<:+-b-11��#"Z[A&+#QJ;B*�9 G$!&&�!"�!=)(1!�G@58?pP-#OY1'MZ!.%��*9X<3"�&&  A���� + 4 > H R  4323263232632#"&#"#"54654$432#"4632#"432#"&4632#"&AL#LL&,6#>Dx^U�M3PL$@-��IF:7ol2+3�-4%{K!?8(K�F}I'�Ce>11:#@D5<�!-<\�6".�+_'Ea�49+5��"-+     7  ��   ?'77'7�����������������������    A  9�   4632632	&AoOhVVhOoF����F�OoiioOZF��6F  2  �X       � K �#�
bfc ��c�#��ca����d#�
�@.
   
 @
 �<��<<�<��<<��M = �F6�@0�:
*�4$�. �&  ��	$&!XeY$% �T��T[�#X<!Ye /<�<<<�<<<�<10353533535353353���p��,��p����������p�������   7��� /  4632#"&532654'#"&54632654&#"&7כ��tYPZ�Ux�s�כ��tYPZ�Ux�s��颀S�XC4@jŔ���Ș颀S�XC4@jŔ���    A��M�  4 8 ; ? C  66  ?'77'7&''7'77'77'#'7'57#7A�B����+n/Wq.><?Hy'.(�E'Fi8	%'5=3kG�&/&�&�B������c��[
P04Mq9�`M+-1$#%&/3#)�4�$A9��B   A��M�  , 3 7 ; >  66  77'?''5'7''?7'7'7''7/5/7'/7'A�B����3A)�E,�)�3D<*S9 a4Y+	CVa@C�B�����~�k@XFAIk�bD!	5"$S';'	��?8�  A��M�  ! % * . 7 : > C H K  66  ?77'7'7'77'7'75%7?/7'77''7'3/7'77'/7A�B�����;*N6	\-)%��-�1'j-hW3E*O96%a#"*6$-<U�B������Q�J�P$,86*%*&MZ.(7�H&A+ :�5.P'%_@FV#UK�$�     A����    #  46 ".32654#"%3254&#"27A�(�E���E^(6t2(x��t6(x(2�d�����}|��|}f:A�U:f-���     A��9�        7477#"&3%'7A\FU�Ai[�%mHuD�MU��t�yL�qB�#iJP�Y-���JKg��Yo�8m    A���� .  473254&54732732565#"&'#"'$A4@Hz�N-"FE ��&+0c&d=��� iK{Ax(�FT2�u1? pA�>I�%>}A�NS;�d�G6     A  �b    ? ##!'654&37.#A�N
$
3	�A����~7�k�DK_h�7m(Z$<��/�#���"x    K��C�     ! ) -  743!2#!"5'627&"#675#7627&"67#K�̖��4�PvZ#n#(�P>I��I>�#n#(�nvxZ�xx� xh�V�77U�"��"�77U�+V�  K��C�    #  743!2#!" 7' '6264&"264&"K�̖��4�d^t^i��i7):)):�):)):Z�xx� x,��xx�R;;R;;R;;R;    K��C�    !  743!2#!"265%627&"627&"K�̖��4�P�����#n#(�#n#(�Z�xx� xht��t�77UU77U   K��C�      743!2#!"265%75'7'7'K�̖��4�P�������������Z�xx� xht��tU#Z(Z#KZ#KK#Z    K��Cz   ' / 7  743!2#!"46 #654&"#& 7' /27'"'27'"'K�̖��4�#��*r)���)r*A^t^i��i(�(#n	(�(#nZ�xx� x%0CC0))�%��xx�UU77UU77  7���z   # +  47!67#!"5& 7' '7327'32654'7FX0XFF��4�F�K�K}��}P)7d(7)(�gM�00�MgdF�>xx�F����<<�);UiJU;);     K��C�    !  743!2#!"!5$/627&"264&"K�̖��4�n}O��2#n#(�"):)):Z�xx� x�'��77U"R;;R;   K��C�    #  743!2#!" 7' '7627&"627&"K�̖��4�UK�K}��}
#n#(�#n#(�Z�xx� xO��<<�77UU77U   K��C�     743!2#!"73? 7'K�̖��4�<�-2-��O}2���Z�xx� xN������(�  K��C�      743!2#!"7!5!264&"264&"K�̖��4����\
):)):�):)):Z�xx� x�<-R;;R;;R;;R;     K��C�      743!2#!"3327#!5!3327#K�̖��4�ZZAJ�P��\�ZAJ�Z�xx� x�s���<s�     K��C�      743!2#!"264&"%'&264&"K�̖��4��/B//B�&6&&6Z�xx� x`CC`C�J7�7�N88N8  K���   & . >  743!2#!"627&"654'654'264&"%4632632'&K�̖��4�n#n#(�ȹ::�{??{Z):)):S7(4++4(7#��#Z�xx� x�77U��#7##7#*&�R;;R;}(7448'-#��#     K��C�   # ' /  743!2#!"265'67' '6264&"7264&"K�̖��4�nZ�.ICI0b��b-):)):�):)):Z�xx� xEk^+#g";PP�R;;R;��w�R;;R;  K��C�   " & -  743!2#!"767265'7& '75'77'7'K�̖��4�nSk-IC8/k��a��������Z�xx� x�B+#W%}_#Z(Z#K��_Z#KK#Z   K��C�    #  743!2#!"76 7& &264&"264&"K�̖��4�xX&XY��):)):�):)):Z�xx� x�ZZ��R;;R;;R;;R;     K��C�    #  743!2#!"76 7& '32654'327'K�̖��4�xX&XY��7)(�)7d(Z�xx� x�ZZ��U;);Z);Ui    K��C�    #  743!2#!"76 7& '327'32654'K�̖��4�xX&XY��)7d(7)(Z�xx� x�ZZ��);UiJU;);   K��C�    !  743!2#!"76 7& '75'7'7'K�̖��4�xX&XY��Y��������Z�xx� x�ZZ�s#Z(Z#KZ#KK#Z     -���    1 9 A J S  467#"&4632"&43!2#!"32623264&#""&#"'627&"627&"%632##"&-D�=*%#0!0��"0;�̖��4�ZF2&OjO&2FF2&OjO&22#n#(�#n#(�J�1!00"O�D%*�$$'w7%&!/}%0���xx� x\�\AA\�\AAd77UU77U<}/!"0K'$$%7  K��C�    !  743!2#!"7!."264&"264&"K�̖��4����ʃ ):)):�):)):Z�xx� xdP��_R;;R;;R;;R;   K��C�    ! ) 1  743!2#!"264&"!."462"6264&"462"K�̖��4�x@\@@\,��ʃ*""�@\@@\""Z�xx� x\@@\@�P��&  V\@@\@~       K��7�    # - 7  743!2#!"27'"'264&"27'"'%57#533357#533K�̖��4�n(�(#n}@\@@\L(�(#nmid�di2��ב�Z�xx� x�UU77��>,,>,	UU77(dd(�((�(    K��C�   ' + 7  743!2#!"76726?7& '77'7''777'7''K�̖��4�n/8CJ,kSk��aKKFFKKFmkKKFFKKFZ�xx� x�%W#+B}dFFKKFFK����-FFKKFFK   7��H�    7'?63''77�U�-줟j_�#K#Kn#x�U�K#�_j���-�#nK        �� )��  9�  $��  -��  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ��� A�� C�� b�� e�� l�� ��� ��� ��� ��� ��� ��� ��� ��� 9�� ;�� =�� 
 $�� 
 -�� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
 ��� 
A�� 
C�� 
b�� 
e�� 
l�� 
��� 
��� 
��� 
��� 
��� 
��� 
��� 
��� 
9�� 
;�� 
=��  $��  -��  D��  F��  G��  H��  J��  M (  P��  Q��  R��  S��  T��  U��  V��  X��  Y��  Z��  [��  \��  ]��  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  �   ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  �   �   �   ���  ���  ��� �� �� �� 
�� �� �� �� �� �� �� �� �� ��  �� "�� *�� ,�� .�� 0�� 2�� 4�� 6�� 8�� ;�� =�� ?�� A�� B�� C�� D�� F�� H�� a  b�� e�� l�� v�� |�� }�� ~�� �� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �  ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �  � ( ��� ��� ��� ��� ��� ��� �� �� 
�� �� �� �� �� �� �� �� �� ��  �� "�� $�� &�� (�� *�� ,�� .�� 0�� 2�� 5�� 7�� 9�� :�� ;�� <�� =�� >�� @�� B�� D�� F�� H�� J�� L�� N�� P�� R�� T�� V�� X�� Z�� \�� ^�� b�� f�� h�� j�� n�� p�� r�� u��  $��  -��  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ��� A�� C�� b�� e�� l�� ��� ��� ��� ��� ��� ��� ��� ��� 9�� ;�� =��  "��  7��  9��  :��  <��  Y��  Z��  \��  ���  ���  ��� #�� %�� '�� 5�� 6�� 7�� 8�� 9�� I�� t�� u�� x�� {�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� !�� "�� #�� $�� %�� &�� )�� *�� +�� ,�� -�� .�� 6�� 7�� Q�� R�� S�� T�� U�� V�� W�� X�� k�� m�� n�� o�� p�� q�� r�� t�� u��  7��  9��  :��  <��  ��� #�� %�� '�� 5�� 7�� 9�� I�� t�� u�� {�� ��� ��� ��� ��� ��� ��� �� !�� #�� %�� )�� Q�� S�� U�� k�� m�� o�� q�� t��  "��  7��  9��  :��  <��  Y��  Z��  \��  ���  ���  ��� #�� %�� '�� 5�� 6�� 7�� 8�� 9�� I�� t�� u�� x�� {�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� !�� "�� #�� $�� %�� &�� )�� *�� +�� ,�� -�� .�� 6�� 7�� Q�� R�� S�� T�� U�� V�� W�� X�� k�� m�� n�� o�� p�� q�� r�� t�� u��  ��  $��  -��  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ��� A�� C�� b�� e�� l�� ��� ��� ��� ��� ��� ��� ��� ��� 9�� ;�� =��  7��  9��  :��  <��  ��� #�� %�� '�� 5�� 7�� 9�� I�� t�� u�� {�� ��� ��� ��� ��� ��� ��� �� !�� #�� %�� )�� Q�� S�� U�� k�� m�� o�� q�� t��  7��  9��  :��  <��  ��� #�� %�� '�� 5�� 7�� 9�� I�� t�� u�� {�� ��� ��� ��� ��� ��� ��� �� !�� #�� %�� )�� Q�� S�� U�� k�� m�� o�� q�� t�� $ �� $ 
�� $ �� $ �� $ "�� $ &�� $ *�� $ 2�� $ 4�� $ 7�� $ 8�� $ 9�� $ :�� $ <�t $ ?�� $ @�� $ A�� $ Y�� $ Z�� $ \�� $ `�� $ r�� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��t $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $ ��� $�� $�� $�� $�� $�� $�� $#�� $%�� $'�� $(�� $)�� $+�� $-�� $/�� $1�� $3�� $5�� $6�� $7�t $8�� $9�t $E�� $I�� $k�� $m�� $n�� $o�� $p�� $q�� $r�� $t�t $u�� $~�� $�� $��� $��� $��� $��� % 7�� % 9�� % :�� % <�� % Y�� % [�� % \�� % ��� % ��� % ��� % ��� %#�� %%�� %'�� %5�� %7�� %8�� %9�� %I�� %k�� %m�� %o�� %q�� %t�� %u�� & Y�� & \�� & ��� & �  & ��� & ��� & ��� & �  & �  & �  &�� &�� &(�� &8�� &u�� ' �� ' $�� ' 7�� ' 9�� ' :�� ' ;�� ' <�� ' @�� ' `�� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� ' ��� '#�� '%�� ''�� '5�� '7�� '9�� 'A�� 'C�� 'I�� 'k�� 'm�� 'o�� 'q�� 't�� '��� '��� ( Y�� ( \�� ( ��� ( �  ( ��� ( ��� ( ��� ( �  ( �  ( �  (�� (�� ((�� (8�� (u�� ) �� ) �� ) �� ) $�� ) -�� ) 7 
 ) 9 
 ) D�� ) F�� ) G�� ) H�� ) J�� ) P�� ) Q�� ) R�� ) S�� ) T�� ) U�� ) V�� ) X�� ) ]�� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) � 
 ) ��� ) �  ) � ( ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) ��� ) � ( ) � ( ) � ( ) ��� ) ��� ) �  ) ��� )�� )�� )�� )�� )
�� )�� )�� )�� )�� )�� )�� )�� )�� )�� ) �� )"�� )# 
 )% 
 )' 
 )(�� )*�� ),�� ).�� )0�� )2�� )4�� );�� )=�� )?�� )A�� )B�� )C�� )D�� )F�� )H�� )I 
 )b�� )f�� )h�� )j�� )k 
 )��� )��� )��� * 7�� * 9�� * :�� * <�� * Y�� * \�� * ��� * ��� * ��� * ��� * ��� *#�� *%�� *'�� *5�� *7�� *8�� *9�� *I�� *k�� *m�� *o�� *q�� *t�� *u�� - $�� - ��� - ��� - ��� - ��� - ��� - ��� - ��� - ��� - ��� - ��� -A�� -C�� . &�� . *�� . 2�� . 4�� . Y�� . Z�� . \�� . ��� . ��� . ��� . ��� . ��� . ��� . ��� . ��� . � 
 . �  . ��� . ��� . ��� . ��� . ��� . ��� . ��� . ��� . ��� . ��� . ��� . �  . �  . �  .�� .�� .�� .�� .�� .�� .6�� .8�� .E�� .n�� .p�� .r�� .u�� / �� / 
�� / �� / �� / "�� / $  / &�� / *�� / 2�� / 4�� / 7�� / 8�� / 9�� / :�� / <�~ / ?�� / @�� / A�� / Y�� / Z�� / \�� / `�� / r�� / �  / �  / �  / �  / �  / �  / �  / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��~ / ��� / ��� / �  / �  / �  / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� / ��� /�� /�� /�� /�� /�� /�� /#�� /%�� /'�� /(�� /)�� /+�� /-�� //�� /1�� /3�� /5�� /6�� /7�~ /8�� /9�~ /A  /C  /E�� /I�� /k�� /m�� /n�� /o�� /p�� /q�� /r�� /t�~ /u�� /~�� /�� /��� /��� /��� /��� 2 $�� 2 7�� 2 9�� 2 :�� 2 ;�� 2 <�� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2 ��� 2#�� 2%�� 2'�� 25�� 27�� 29�� 2A�� 2C�� 2I�� 2k�� 2m�� 2o�� 2q�� 2t�� 3 �� 3 �� 3 �� 3 $�� 3 -�� 3 D�� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 � 
 3 � 
 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 ��� 3 � 
 3 � 
 3 � 
 3 ��� 3 � 
 3(�� 3A�� 3B�� 3C�� 3D�� 3��� 3��� 3��� 4 $�� 4 7�� 4 9�� 4 :�� 4 ;�� 4 <�� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4 ��� 4#�� 4%�� 4'�� 45�� 47�� 49�� 4A�� 4C�� 4I�� 4k�� 4m�� 4o�� 4q�� 4t�� 6 7�� 6 9�� 6 :�� 6 <�� 6 Y�� 6 Z�� 6 [�� 6 \�� 6 ��� 6 ��� 6 ��� 6 ��� 6 ��� 6#�� 6%�� 6'�� 65�� 66�� 67�� 68�� 69�� 6I�� 6k�� 6m�� 6n�� 6o�� 6p�� 6q�� 6r�� 6t�� 6u�� 7 �� 7 �� 7 �� 7 �� 7 �� 7 �� 7 $�� 7 &�� 7 *�� 7 -�� 7 2�� 7 4�� 7 7  7 9  7 : 
 7 D�� 7 F�� 7 G�� 7 H�� 7 J�� 7 P�� 7 Q�� 7 R�� 7 S�� 7 T�� 7 U�� 7 V�� 7 X�� 7 Y�� 7 Z�� 7 [�� 7 \�� 7 ]�� 7 m�� 7 }�� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 �  7 ��� 7 �  7 � 2 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 ��� 7 � 2 7 � 2 7 � 2 7 ��� 7 ��� 7 �  7 ��� 7�� 7�� 7�� 7�� 7
�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7�� 7 �� 7"�� 7#  7%  7'  7(�� 7*�� 7,�� 7.�� 70�� 72�� 74�� 75 
 76�� 78�� 7;�� 7=�� 7?�� 7A�� 7B�� 7C�� 7D�� 7E�� 7F�� 7H�� 7I  7b�� 7f�� 7h�� 7j�� 7k  7m 
 7n�� 7o 
 7p�� 7q 
 7r�� 7u�� 7{�� 7|�� 7��� 7��� 7��� 7��� 7��� 8 $�� 8 ��� 8 ��� 8 ��� 8 ��� 8 ��� 8 ��� 8 ��� 8 ��� 8 ��� 8 ��� 8A�� 8C�� 9 �� 9 �� 9 �� 9 �� 9 �� 9 �� 9 $�� 9 &�� 9 *�� 9 -�� 9 2�� 9 4�� 9 7  9 9  9 : 
 9 D�� 9 F�� 9 G�� 9 H�� 9 J�� 9 P�� 9 Q�� 9 R�� 9 S�� 9 T�� 9 U�� 9 V�� 9 X�� 9 Y�� 9 Z�� 9 [�� 9 \�� 9 ]�� 9 m�� 9 }�� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 �  9 ��� 9 �  9 � 2 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 ��� 9 � 2 9 � 2 9 � 2 9 ��� 9 ��� 9 �  9 ��� 9�� 9�� 9�� 9�� 9
�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9�� 9 �� 9"�� 9#  9%  9'  9(�� 9*�� 9,�� 9.�� 90�� 92�� 94�� 95 
 96�� 98�� 9;�� 9=�� 9?�� 9A�� 9B�� 9C�� 9D�� 9E�� 9F�� 9H�� 9I  9b�� 9f�� 9h�� 9j�� 9k  9m 
 9n�� 9o 
 9p�� 9q 
 9r�� 9u�� 9{�� 9|�� 9��� 9��� 9��� 9��� 9��� : �� : �� : �� : �� : �� : �� : $�� : &�� : *�� : -�� : 2�� : 4�� : 7 
 : 9 
 : D�� : F�� : G�� : H�� : J�� : P�� : Q�� : R�� : S�� : T�� : U�� : V�� : X�� : Y�� : Z�� : [�� : \�� : ]�� : m�� : }�� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : � 
 : ��� : �  : � ( : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : ��� : � ( : � ( : � ( : ��� : ��� : �  : ��� :�� :�� :�� :�� :
�� :�� :�� :�� :�� :�� :�� :�� :�� :�� :�� :�� :�� :�� : �� :"�� :# 
 :% 
 :' 
 :*�� :,�� :.�� :0�� :2�� :4�� :6�� :8�� :;�� :=�� :?�� :A�� :B�� :C�� :D�� :E�� :F�� :H�� :I 
 :b�� :f�� :h�� :j�� :k 
 :n�� :p�� :r�� :u�� :{�� :|�� :��� :��� :��� :��� :��� ; &�� ; *�� ; 2�� ; 4�� ; Y�� ; Z�� ; \�� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; � 
 ; �  ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; ��� ; �  ; �  ; �  ;�� ;�� ;�� ;�� ;�� ;�� ;6�� ;8�� ;E�� ;n�� ;p�� ;r�� ;u�� < �� < �� < �� < �� < �� < �� < $�t < &�� < *�� < -�� < 2�� < 4�� < D�� < F�� < G�� < H�� < J�� < P�� < Q�� < R�� < S�� < T�� < U�� < V�� < X�� < Y�� < Z�� < [�� < \�� < ]�� < m�� < }�� < ��t < ��t < ��t < ��t < ��t < ��t < ��t < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < �  < ��� < �  < � 2 < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��t < ��� < ��t < ��� < ��t < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < ��� < � 2 < � 2 < � 2 < ��� < ��� < �  < ��� <�� <�� <�� <�� <
�� <�� <�� <�� <�� <�� <�� <�� <�� <�� <�� <�� <�� <�� < �� <"�� <*�� <,�� <.�� <0�� <2�� <4�� <6�� <8�� <;�� <=�� <?�� <A�t <B�� <C�t <D�� <E�� <F�� <H�� <b�� <f�� <h�� <j�� <n�� <p�� <r�� <u�� <{�� <|�� <��� <��� <��� <��� <��� = Y�� = Z�� = \�� = ��� = �  = ��� = ��� = ��� = ��� = �  = �  = �  =�� =�� =(�� =6�� =8�� =n�� =p�� =r�� =u�� > $�� > -�� > D�� > F�� > G�� > H�� > J�� > M ( > P�� > Q�� > R�� > S�� > T�� > U�� > V�� > X�� > Y�� > Z�� > [�� > \�� > ]�� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > �  > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > ��� > �  > �  > �  > ��� > ��� > ��� >�� >�� >�� >
�� >�� >�� >�� >�� >�� >�� >�� >�� >�� > �� >"�� >*�� >,�� >.�� >0�� >2�� >4�� >6�� >8�� >;�� >=�� >?�� >A�� >B�� >C�� >D�� >F�� >H�� >a  >b�� >e�� >l�� >v�� >|�� >}�� >~�� >�� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >�  >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >��� >�  >� ( >��� >��� >��� >��� >��� >��� >�� >�� >
�� >�� >�� >�� >�� >�� >�� >�� >�� >�� > �� >"�� >$�� >&�� >(�� >*�� >,�� >.�� >0�� >2�� >5�� >7�� >9�� >:�� >;�� ><�� >=�� >>�� >@�� >B�� >D�� >F�� >H�� >J�� >L�� >N�� >P�� >R�� >T�� >V�� >X�� >Z�� >\�� >^�� >b�� >f�� >h�� >j�� >n�� >p�� >r�� >u�� ? 7�� ? 9�� ? :�� ? <�� ? ?�� ? Y�� ? Z�� ? \�� ? ��� ? ��� ? ��� ?#�� ?%�� ?'�� ?5�� ?6�� ?7�� ?8�� ?9�� ?I�� ?t�� ?u�� ?x�� ?{�� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?��� ?�� ?�� ?!�� ?"�� ?#�� ?$�� ?%�� ?&�� ?)�� ?*�� ?+�� ?,�� ?-�� ?.�� ?6�� ?7�� ?Q�� ?R�� ?S�� ?T�� ?U�� ?V�� ?W�� ?X�� ?k�� ?m�� ?n�� ?o�� ?p�� ?q�� ?r�� ?t�� ?u�� A $�� A -�� A ��� A ��� A ��� A ��� A ��� A ��� A ��� A ��� A ��� A ��� A ��� AA�� AC�� Ab�� Ae�� Al�� A��� A��� A��� A��� A��� A��� A��� A��� A9�� A;�� A=�� D �� D "�� D 7�� D 9�� D :�� D <�� D @�� D Y�� D \�� D `�� D ��� D ��� D ��� D ��� D ��� D#�� D%�� D'�� D5�� D7�� D8�� D9�� DI�� Dk�� Dm�� Do�� Dq�� Dt�� Du�� D��� D��� E �� E "�� E 7�� E 9�� E :�� E <�� E @�� E Y�� E [�� E \�� E `�� E ��� E ��� E ��� E ��� E ��� E#�� E%�� E'�� E5�� E7�� E8�� E9�� EI�� Ek�� Em�� Eo�� Eq�� Et�� Eu�� E��� E��� F �� F 7�� F 9�� F :�� F <�� F @�� F `�� F ��� F ��� F�� F#�� F%�� F'�� F(�� F5�� F7�� F9�� FI�� Fk�� Fm�� Fo�� Fq�� Ft�� F��� F��� H �� H "�� H 7�� H 9�� H :�� H <�� H @�� H Y�� H [�� H \�� H `�� H ��� H ��� H ��� H ��� H ��� H#�� H%�� H'�� H5�� H7�� H8�� H9�� HI�� Hk�� Hm�� Ho�� Hq�� Ht�� Hu�� H��� H��� I �� I �� I �� I $�� I -�� I D�� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I ��� I � 
 I �  I � ( I ��� I ��� I ��� I ��� I ��� I ��� I ��� I � ( I � ( I � ( I ��� I �  I�� I(�� IA�� IB�� IC�� ID�� I��� I��� I��� J "�� J 7�� J 9�� J :�� J <�� J M  J ��� J ��� J#�� J%�� J'�� J5�� J7�� J9�� JI�� Jk�� Jm�� Jo�� Jq�� Jt�� K �� K "�� K 7�� K 9�� K :�� K <�� K @�� K Y�� K \�� K `�� K ��� K ��� K ��� K ��� K ��� K#�� K%�� K'�� K5�� K7�� K8�� K9�� KI�� Kk�� Km�� Ko�� Kq�� Kt�� Ku�� K��� K��� M M  N �� N 7�� N 9�� N :�� N <�� N @�� N F�� N G�� N H�� N J�� N R�� N T�� N `�� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N ��� N�� N�� N�� N�� N�� N#�� N%�� N'�� N(�� N5�� N7�� N9�� NF�� NI�� Nb�� Nk�� Nm�� No�� Nq�� Nt�� N��� N��� P �� P "�� P 7�� P 9�� P :�� P <�� P @�� P Y�� P \�� P `�� P ��� P ��� P ��� P ��� P ��� P#�� P%�� P'�� P5�� P7�� P8�� P9�� PI�� Pk�� Pm�� Po�� Pq�� Pt�� Pu�� P��� P��� Q �� Q "�� Q 7�� Q 9�� Q :�� Q <�� Q @�� Q Y�� Q \�� Q `�� Q ��� Q ��� Q ��� Q ��� Q ��� Q#�� Q%�� Q'�� Q5�� Q7�� Q8�� Q9�� QI�� Qk�� Qm�� Qo�� Qq�� Qt�� Qu�� Q��� Q��� R �� R "�� R 7�� R 9�� R :�� R <�� R @�� R Y�� R [�� R \�� R `�� R ��� R ��� R ��� R ��� R ��� R#�� R%�� R'�� R5�� R7�� R8�� R9�� RI�� Rk�� Rm�� Ro�� Rq�� Rt�� Ru�� R��� R��� S �� S "�� S 7�� S 9�� S :�� S <�� S @�� S Y�� S [�� S \�� S `�� S ��� S ��� S ��� S ��� S ��� S#�� S%�� S'�� S5�� S7�� S8�� S9�� SI�� Sk�� Sm�� So�� Sq�� St�� Su�� S��� S��� T "�� T 7�� T 9�� T :�� T <�� T M  T ��� T ��� T#�� T%�� T'�� T5�� T7�� T9�� TI�� Tk�� Tm�� To�� Tq�� Tt�� U �� U �� U �� U �� U $�� U -�� U 7�� U 9�� U ;�� U <�� U =�� U @�� U D�� U `�� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U ��� U�� U#�� U%�� U'�� U(�� U7�� U9�� U:�� U<�� U>�� UA�� UB�� UC�� UD�� UI�� Uk�� Ut�� U��� U��� U��� U��� U��� V �� V "�� V 7�� V 9�� V :�� V <�� V @�� V Y�� V Z�� V \�� V `�� V ��� V ��� V ��� V ��� V ��� V#�� V%�� V'�� V5�� V6�� V7�� V8�� V9�� VI�� Vk�� Vm�� Vn�� Vo�� Vp�� Vq�� Vr�� Vt�� Vu�� V��� V��� W �� W 7�� W 9�� W :�� W <�� W @�� W `�� W ��� W ��� W�� W#�� W%�� W'�� W(�� W5�� W7�� W9�� WI�� Wk�� Wm�� Wo�� Wq�� Wt�� W��� W��� X �� X "�� X 7�� X 9�� X :�� X <�� X @�� X `�� X ��� X ��� X#�� X%�� X'�� X5�� X7�� X9�� XI�� Xk�� Xm�� Xo�� Xq�� Xt�� X��� X��� Y �� Y �� Y �� Y �� Y $�� Y -�� Y 7�� Y 9�� Y :�� Y ;�� Y <�� Y =�� Y @�� Y D�� Y F�� Y G�� Y H�� Y J�� Y R�� Y T�� Y U�� Y `�� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y ��� Y�� Y�� Y�� Y�� Y�� Y�� Y�� Y#�� Y%�� Y'�� Y(�� Y5�� Y7�� Y9�� Y:�� Y<�� Y>�� YA�� YB�� YC�� YD�� YF�� YI�� Yb�� Yk�� Ym�� Yo�� Yq�� Yt�� Y��� Y��� Y��� Y��� Y��� Z �� Z �� Z �� Z �� Z $�� Z 7�� Z 9�� Z :�� Z ;�� Z <�� Z =�� Z @�� Z D�� Z `�� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z ��� Z�� Z#�� Z%�� Z'�� Z5�� Z7�� Z9�� Z:�� Z<�� Z>�� ZA�� ZB�� ZC�� ZD�� ZI�� Zk�� Zm�� Zo�� Zq�� Zt�� Z��� Z��� Z��� Z��� Z��� [ �� [ 7�� [ 9�� [ :�� [ <�� [ @�� [ F�� [ G�� [ H�� [ J�� [ R�� [ T�� [ `�� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [ ��� [�� [�� [�� [�� [�� [#�� [%�� ['�� [(�� [5�� [7�� [9�� [F�� [I�� [b�� [k�� [m�� [o�� [q�� [t�� [��� [��� \ �� \ �� \ �� \ �� \ $�� \ -�� \ 7�� \ 9�� \ :�� \ ;�� \ <�� \ =�� \ @�� \ D�� \ F�� \ G�� \ H�� \ J�� \ R�� \ T�� \ U�� \ `�� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \ ��� \�� \�� \�� \�� \�� \�� \�� \#�� \%�� \'�� \(�� \5�� \7�� \9�� \:�� \<�� \>�� \A�� \B�� \C�� \D�� \F�� \I�� \b�� \k�� \m�� \o�� \q�� \t�� \��� \��� \��� \��� \��� ] �� ] "�� ] 7�� ] 9�� ] :�� ] <�� ] @�� ] `�� ] ��� ] ��� ] ��� ]�� ]#�� ]%�� ]'�� ](�� ]5�� ]7�� ]9�� ]I�� ]k�� ]m�� ]o�� ]q�� ]t�� ]��� ]��� ^ $�� ^ -�� ^ D�� ^ F�� ^ G�� ^ H�� ^ J�� ^ M ( ^ P�� ^ Q�� ^ R�� ^ S�� ^ T�� ^ U�� ^ V�� ^ X�� ^ Y�� ^ Z�� ^ [�� ^ \�� ^ ]�� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ �  ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ ��� ^ �  ^ �  ^ �  ^ ��� ^ ��� ^ ��� ^�� ^�� ^�� ^
�� ^�� ^�� ^�� ^�� ^�� ^�� ^�� ^�� ^�� ^ �� ^"�� ^*�� ^,�� ^.�� ^0�� ^2�� ^4�� ^6�� ^8�� ^;�� ^=�� ^?�� ^A�� ^B�� ^C�� ^D�� ^F�� ^H�� ^a  ^b�� ^e�� ^l�� ^v�� ^|�� ^}�� ^~�� ^�� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^�  ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^��� ^�  ^� ( ^��� ^��� ^��� ^��� ^��� ^��� ^�� ^�� ^
�� ^�� ^�� ^�� ^�� ^�� ^�� ^�� ^�� ^�� ^ �� ^"�� ^$�� ^&�� ^(�� ^*�� ^,�� ^.�� ^0�� ^2�� ^5�� ^7�� ^9�� ^:�� ^;�� ^<�� ^=�� ^>�� ^@�� ^B�� ^D�� ^F�� ^H�� ^J�� ^L�� ^N�� ^P�� ^R�� ^T�� ^V�� ^X�� ^Z�� ^\�� ^^�� ^b�� ^f�� ^h�� ^j�� ^n�� ^p�� ^r�� ^u�� m 7�� m 9�� m :�� m <�� m ��� m#�� m%�� m'�� m5�� m7�� m9�� mI�� mt�� mu�� m{�� m��� m��� m��� m��� m��� m��� m�� m!�� m#�� m%�� m)�� mQ�� mS�� mU�� mk�� mm�� mo�� mq�� mt�� r $�� r -�� r ��� r ��� r ��� r ��� r ��� r ��� r ��� r ��� r ��� r ��� r ��� rA�� rC�� rb�� re�� rl�� r��� r��� r��� r��� r��� r��� r��� r��� r9�� r;�� r=�� } 7�� } 9�� } :�� } <�� } ��� }#�� }%�� }'�� }5�� }7�� }9�� }I�� }t�� }u�� }{�� }��� }��� }��� }��� }��� }��� }�� }!�� }#�� }%�� })�� }Q�� }S�� }U�� }k�� }m�� }o�� }q�� }t�� � 7�� � 9�� � :�� � <�� � M Z � Y�� � Z�� � \�� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �6�� �7�� �8�� �9�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�� �u�� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � $�� � 7�� � 9�� � :�� � ;�� � <�� � @�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � $�� � 7�� � 9�� � :�� � ;�� � <�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� � $�� � 7�� � 9�� � :�� � ;�� � <�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� � $�� � 7�� � 9�� � :�� � ;�� � <�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� � $�� � 7�� � 9�� � :�� � ;�� � <�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� � $�� � 7�� � 9�� � :�� � ;�� � <�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� � $�� � 7�� � 9�� � :�� � ;�� � <�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� � $�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �A�� �C�� � $�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �A�� �C�� � $�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �A�� �C�� � $�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �A�� �C�� � �� � �� � �� � �� � �� � �� � $�t � &�� � *�� � -�� � 2�� � 4�� � D�� � F�� � G�� � H�� � J�� � P�� � Q�� � R�� � S�� � T�� � U�� � V�� � X�� � Y�� � Z�� � [�� � \�� � ]�� � m�� � }�� � ��t � ��t � ��t � ��t � ��t � ��t � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � �  � ��� � �  � � 2 � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��t � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � � 2 � � 2 � � 2 � ��� � ��� � �  � ��� ��� ��� ��� ��� �
�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� � �� �"�� �*�� �,�� �.�� �0�� �2�� �4�� �6�� �8�� �;�� �=�� �?�� �A�t �B�� �C�t �D�� �E�� �F�� �H�� �b�� �f�� �h�� �j�� �n�� �p�� �r�� �u�� �{�� �|�� ���� ���� ���� ���� ���� � �� � $�� � 7�� � 9�� � ;�� � <�� � @�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �7�� �9�� �A�� �C�� �I�� �k�� �t�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � Z�� � \�� � `�� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �6�� �7�� �8�� �9�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � 7  � 9  � : 
 � ;  � <  � �  �#  �%  �'  �5 
 �7  �9  �I  �k  �m 
 �o 
 �q 
 �t  � 7  � 9  � :  � <  � �  �#  �%  �'  �5  �7  �9  �I  �k  �m  �o  �q  �t  �   � "  � 7 2 � 9 2 � : ( � ;  � < 2 � =  � @  � `  � � 2 �# 2 �% 2 �' 2 �5 ( �7 2 �9 2 �:  �<  �>  �I 2 �k 2 �m ( �o ( �q ( �t 2 ��  ��  � Y�� � [�� � \�� � ��� � ��� �8�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � �� � �� � �� � $�� � -�� � 7�� � 9�� � :�� � ;�� � <�� � =�� � @�� � D�� � F�� � G�� � H�� � J�� � R�� � T�� � U�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �:�� �<�� �>�� �A�� �B�� �C�� �D�� �F�� �I�� �b�� �k�� �m�� �o�� �q�� �t�� ���� ���� ���� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � �� � �� � �� � $�� � -�� � 7�� � 9�� � :�� � ;�� � <�� � =�� � @�� � D�� � F�� � G�� � H�� � J�� � R�� � T�� � U�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �:�� �<�� �>�� �A�� �B�� �C�� �D�� �F�� �I�� �b�� �k�� �m�� �o�� �q�� �t�� ���� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � �� � 
�� � �� � �� � "�� � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�t � ?�� � @�� � A�� � M F � Y�� � Z�� � \�� � `�� � r�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��t � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�t �8�� �9�t �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�t �u�� �~�� ��� ���� ���� ���� ���� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � M  � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � $�� � 7�� � 9�� � :�� � ;�� � <�� � @�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � $�� � -�� � D�� � F�� � G�� � H�� � J�� � P�� � Q�� � R�� � S�� � T�� � U�� � V�� � X�� � ]�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� �
�� ��� ��� ��� ��� ��� ��� ��� ��� ��� � �� �"�� �(�� �*�� �,�� �.�� �0�� �2�� �4�� �;�� �=�� �?�� �A�� �B�� �C�� �D�� �F�� �H�� �b�� �f�� �h�� �j�� � �� � $�� � 7�� � 9�� � :�� � ;�� � <�� � @�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �A�� �C�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � $�� � -�� � D�� � F�� � G�� � H�� � J�� � P�� � Q�� � R�� � S�� � T�� � U�� � V�� � X�� � ]�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� �
�� ��� ��� ��� ��� ��� ��� ��� ��� ��� � �� �"�� �(�� �*�� �,�� �.�� �0�� �2�� �4�� �;�� �=�� �?�� �A�� �B�� �C�� �D�� �F�� �H�� �b�� �f�� �h�� �j�� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � M  � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � Y�� � \�� � ��� � �  � ��� � ��� � ��� � �  � �  � �  ��� ��� �(�� �8�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � [�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � 7�� � 9�� � :�� � <�� � Y�� � \�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� � "�� � 7�� � 9�� � :�� � <�� � M  � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� � 7�� � 9�� � :�� � <�� � Y�� � \�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� � "�� � 7�� � 9�� � :�� � <�� � M  � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� � 7�� � 9�� � :�� � <�� � Y�� � \�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� � "�� � 7�� � 9�� � :�� � <�� � M  � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� � 7�� � 9�� � :�� � <�� � Y�� � \�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� � $�� � -�� � =�� � D�� � F�� � G�� � H�� � J�� � R�� � T�� � U�� � V�� � ]�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� ��� ��� � �� �"�� �:�� �;�� �<�� �=�� �>�� �?�� �A�� �B�� �C�� �D�� �F�� �H�� �b�� �j�� � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � Y�� � \�� � `�� � ��� � ��� � ��� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �8�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� �u�� ���� ���� �   � "  � 7 2 � 9 2 � : ( � ;  � < 2 � =  � @  � `  � � 2 �# 2 �% 2 �' 2 �5 ( �7 2 �9 2 �:  �<  �>  �I 2 �k 2 �m ( �o ( �q ( �t 2 ��  ��  �   � "  � 7 2 � 9 2 � : ( � ;  � < 2 � =  � @  � `  � � 2 �# 2 �% 2 �' 2 �5 ( �7 2 �9 2 �:  �<  �>  �I 2 �k 2 �m ( �o ( �q ( �t 2 ��  ��  �   � "  � 7 2 � 9 2 � : ( � ;  � < 2 � =  � @  � `  � � 2 �# 2 �% 2 �' 2 �5 ( �7 2 �9 2 �:  �<  �>  �I 2 �k 2 �m ( �o ( �q ( �t 2 ��  ��  � M  � M 2 � �� � "�� � 7�� � 9�� � :�� � <�� � @�� � `�� � ��� � ��� �#�� �%�� �'�� �5�� �7�� �9�� �I�� �k�� �m�� �o�� �q�� �t�� ���� ���� � $�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �A�� �C�� � $�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� �A�� �C�� � 7  � 9  � :  � <  � �  �#  �%  �'  �5  �7  �9  �I  �k  �m  �o  �q  �t  � &�� � *�� � 2�� � 4�� � Y�� � Z�� � \�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � � 
 � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � �  � �  � �  ��� ��� ��� ��� ��� ��� �6�� �8�� �E�� �n�� �p�� �r�� �u�� � �� � 7�� � 9�� � :�� � <�� � @�� � F�� � G�� � H�� � J�� � R�� � T�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �F�� �I�� �b�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � 7�� � 9�� � :�� � <�� � @�� � F�� � G�� � H�� � J�� � R�� � T�� � `�� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �5�� �7�� �9�� �F�� �I�� �b�� �k�� �m�� �o�� �q�� �t�� ���� ���� � �� � 
�� � �� � �� � "�� � $  � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�~ � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � �  � �  � �  � �  � �  � �  � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��~ � ��� � ��� � �  � �  � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�~ �8�� �9�~ �A  �C  �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�~ �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � $  � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�~ � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � �  � �  � �  � �  � �  � �  � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��~ � ��� � ��� � �  � �  � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�~ �8�� �9�~ �A  �C  �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�~ �u�� �~�� ��� ���� ���� ���� ���� � �� � 
�� � �� � �� � "�� � $  � &�� � *�� � 2�� � 4�� � 7�� � 8�� � 9�� � :�� � <�~ � ?�� � @�� � A�� � Y�� � Z�� � \�� � `�� � r�� � �  � �  � �  � �  � �  � �  � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��~ � ��� � ��� � �  � �  � �  � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� �#�� �%�� �'�� �(�� �)�� �+�� �-�� �/�� �1�� �3�� �5�� �6�� �7�~ �8�� �9�~ �A  �C  �E�� �I�� �k�� �m�� �n�� �o�� �p�� �q�� �r�� �t�~ �u�� �~�� ��� ���� ���� ���� ����  $��  -��  D��  F��  G��  H��  J��  P��  Q��  R��  S��  T��  U��  V��  X��  ]��  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ��� �� �� �� 
�� �� �� �� �� �� �� �� �� ��  �� "�� (�� *�� ,�� .�� 0�� 2�� 4�� ;�� =�� ?�� A�� B�� C�� D�� F�� H�� b�� f�� h�� j�� �� 
�� �� �� "�� $  &�� *�� 2�� 4�� 7�� 8�� 9�� :�� <�~ ?�� @�� A�� Y�� Z�� \�� `�� r�� �  �  �  �  �  �  �  ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��~ ��� ��� �  �  �  ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���������������#��%��'��(��)��+��-��/��1��3��5��6��7�~8��9�~A C E��I��k��m��n��o��p��q��r��t�~u��~���������������� �� $�� -�� 7�� 9�� :�� ;�� <�� =�� @�� `�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���#��%��'��5��7��9��:��<��>��A��C��I��k��m��o��q��t�������� �� "�� 7�� 9�� :�� <�� @�� Y�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u�������� �� "�� 7�� 9�� :�� <�� @�� Y�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u��������
 ��
 "��
 7��
 9��
 :��
 <��
 @��
 Y��
 \��
 `��
 ���
 ���
 ���
 ���
 ���
#��
%��
'��
5��
7��
8��
9��
I��
k��
m��
o��
q��
t��
u��
���
��� 7�� 9�� :�� <�� ���#��%��'��5��7��9��I��k��m��o��q��t�� �� "�� 7�� 9�� :�� <�� @�� Y�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u�������� $�� 7�� 9�� :�� ;�� <�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���#��%��'��5��7��9��A��C��I��k��m��o��q��t�� �� "�� 7�� 9�� :�� <�� @�� Y�� [�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u�������� $�� 7�� 9�� :�� ;�� <�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���#��%��'��5��7��9��A��C��I��k��m��o��q��t�� �� "�� 7�� 9�� :�� <�� @�� Y�� [�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u�������� $�� 7�� 9�� :�� ;�� <�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���#��%��'��5��7��9��A��C��I��k��m��o��q��t�� �� "�� 7�� 9�� :�� <�� @�� Y�� [�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u�������� Y�� \�� ��� �  ��� ��� ��� �  �  � ����(��8��u�� �� "�� 7�� 9�� :�� <�� @�� Y�� [�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��7��8��9��I��k��m��o��q��t��u�������� �� �� �� �� $�� -�� 7�� 9�� ;�� <�� =�� @�� D�� `�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �����#��%��'��(��7��9��:��<��>��A��B��C��D��I��k��t����������������� �� �� �� �� $�� -�� 7�� 9�� ;�� <�� =�� @�� D�� `�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �����#��%��'��(��7��9��:��<��>��A��B��C��D��I��k��t����������������� �� �� �� $�� -�� D�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� � 
 �  � ( ��� ��� ��� ��� ��� ��� ��� � ( � ( � ( ��� � ��(��A��B��C��D����������� 7�� 9�� :�� <�� Y�� Z�� [�� \�� ��� ��� ��� ��� ���#��%��'��5��6��7��8��9��I��k��m��n��o��p��q��r��t��u�� �� "�� 7�� 9�� :�� <�� @�� Y�� Z�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��6��7��8��9��I��k��m��n��o��p��q��r��t��u�������� 7�� 9�� :�� <�� Y�� Z�� [�� \�� ��� ��� ��� ��� ���#��%��'��5��6��7��8��9��I��k��m��n��o��p��q��r��t��u�� �� "�� 7�� 9�� :�� <�� @�� Y�� Z�� \�� `�� ��� ��� ��� ��� ���#��%��'��5��6��7��8��9��I��k��m��n��o��p��q��r��t��u�������� 7�� 9�� :�� <�� Y�� Z�� [�� \�� ��� ��� ��� ��� ���#��%��'��5��6��7��8��9��I��k��m��n��o��p��q��r��t��u��  ��  "��  7��  9��  :��  <��  @��  Y��  Z��  \��  `��  ���  ���  ���  ���  ��� #�� %�� '�� 5�� 6�� 7�� 8�� 9�� I�� k�� m�� n�� o�� p�� q�� r�� t�� u�� ��� ���! 7��! 9��! :��! <��! Y��! Z��! [��! \��! ���! ���! ���! ���! ���!#��!%��!'��!5��!6��!7��!8��!9��!I��!k��!m��!n��!o��!p��!q��!r��!t��!u��" ��" "��" 7��" 9��" :��" <��" @��" Y��" Z��" \��" `��" ���" ���" ���" ���" ���"#��"%��"'��"5��"6��"7��"8��"9��"I��"k��"m��"n��"o��"p��"q��"r��"t��"u��"���"���# ��# ��# ��# ��# ��# ��# $��# &��# *��# -��# 2��# 4��# 7 # 9 # : 
# D��# F��# G��# H��# J��# P��# Q��# R��# S��# T��# U��# V��# X��# Y��# Z��# [��# \��# ]��# m��# }��# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# � # ���# � # � 2# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# ���# � 2# � 2# � 2# ���# ���# � # ���#��#��#��#��#
��#��#��#��#��#��#��#��#��#��#��#��#��#��# ��#"��## #% #' #(��#*��#,��#.��#0��#2��#4��#5 
#6��#8��#;��#=��#?��#A��#B��#C��#D��#E��#F��#H��#I #b��#f��#h��#j��#k #m 
#n��#o 
#p��#q 
#r��#u��#{��#|��#���#���#���#���#���$ ��$ 7��$ 9��$ :��$ <��$ @��$ `��$ ���$ ���$��$#��$%��$'��$(��$5��$7��$9��$I��$k��$m��$o��$q��$t��$���$���% ��% ��% ��% ��% ��% ��% $��% &��% *��% -��% 2��% 4��% 7 % 9 % : 
% D��% F��% G��% H��% J��% P��% Q��% R��% S��% T��% U��% V��% X��% Y��% Z��% [��% \��% ]��% m��% }��% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% � % ���% � % � 2% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% ���% � 2% � 2% � 2% ���% ���% � % ���%��%��%��%��%
��%��%��%��%��%��%��%��%��%��%��%��%��%��% ��%"��%# %% %' %(��%*��%,��%.��%0��%2��%4��%5 
%6��%8��%;��%=��%?��%A��%B��%C��%D��%E��%F��%H��%I %b��%f��%h��%j��%k %m 
%n��%o 
%p��%q 
%r��%u��%{��%|��%���%���%���%���%���' ��' ��' ��' ��' ��' ��' $��' &��' *��' -��' 2��' 4��' 7 ' 9 ' : 
' D��' F��' G��' H��' J��' P��' Q��' R��' S��' T��' U��' V��' X��' Y��' Z��' [��' \��' ]��' m��' }��' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' � ' ���' � ' � 2' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' ���' � 2' � 2' � 2' ���' ���' � ' ���'��'��'��'��'
��'��'��'��'��'��'��'��'��'��'��'��'��'��' ��'"��'# '% '' '(��'*��',��'.��'0��'2��'4��'5 
'6��'8��';��'=��'?��'A��'B��'C��'D��'E��'F��'H��'I 'b��'f��'h��'j��'k 'm 
'n��'o 
'p��'q 
'r��'u��'{��'|��'���'���'���'���'���) $��) ���) ���) ���) ���) ���) ���) ���) ���) ���) ���)A��)C��* ��* "��* 7��* 9��* :��* <��* @��* `��* ���* ���*#��*%��*'��*5��*7��*9��*I��*k��*m��*o��*q��*t��*���*���+ $��+ ���+ ���+ ���+ ���+ ���+ ���+ ���+ ���+ ���+ ���+A��+C��, ��, "��, 7��, 9��, :��, <��, @��, `��, ���, ���,#��,%��,'��,5��,7��,9��,I��,k��,m��,o��,q��,t��,���,���- $��- ���- ���- ���- ���- ���- ���- ���- ���- ���- ���-A��-C��. ��. "��. 7��. 9��. :��. <��. @��. `��. ���. ���.#��.%��.'��.5��.7��.9��.I��.k��.m��.o��.q��.t��.���.���/ $��/ ���/ ���/ ���/ ���/ ���/ ���/ ���/ ���/ ���/ ���/A��/C��0 ��0 "��0 7��0 9��0 :��0 <��0 @��0 `��0 ���0 ���0#��0%��0'��05��07��09��0I��0k��0m��0o��0q��0t��0���0���1 $��1 ���1 ���1 ���1 ���1 ���1 ���1 ���1 ���1 ���1 ���1A��1C��2 ��2 "��2 7��2 9��2 :��2 <��2 @��2 `��2 ���2 ���2#��2%��2'��25��27��29��2I��2k��2m��2o��2q��2t��2���2���3 $��3 ���3 ���3 ���3 ���3 ���3 ���3 ���3 ���3 ���3 ���3A��3C��4 ��4 "��4 7��4 9��4 :��4 <��4 @��4 M 4 `��4 ���4 ���4#��4%��4'��45��47��49��4I��4k��4m��4o��4q��4t��4���4���5 ��5 ��5 ��5 ��5 ��5 ��5 $��5 &��5 *��5 -��5 2��5 4��5 7 
5 9 
5 D��5 F��5 G��5 H��5 J��5 P��5 Q��5 R��5 S��5 T��5 U��5 V��5 X��5 Y��5 Z��5 [��5 \��5 ]��5 m��5 }��5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 � 
5 ���5 � 5 � (5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 ���5 � (5 � (5 � (5 ���5 ���5 � 5 ���5��5��5��5��5
��5��5��5��5��5��5��5��5��5��5��5��5��5��5 ��5"��5# 
5% 
5' 
5*��5,��5.��50��52��54��56��58��5;��5=��5?��5A��5B��5C��5D��5E��5F��5H��5I 
5b��5f��5h��5j��5k 
5n��5p��5r��5u��5{��5|��5���5���5���5���5���6 ��6 ��6 ��6 ��6 $��6 7��6 9��6 :��6 ;��6 <��6 =��6 @��6 D��6 `��6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6 ���6��6#��6%��6'��65��67��69��6:��6<��6>��6A��6B��6C��6D��6I��6k��6m��6o��6q��6t��6���6���6���6���6���7 ��7 ��7 ��7 ��7 ��7 ��7 $�t7 &��7 *��7 -��7 2��7 4��7 D��7 F��7 G��7 H��7 J��7 P��7 Q��7 R��7 S��7 T��7 U��7 V��7 X��7 Y��7 Z��7 [��7 \��7 ]��7 m��7 }��7 ��t7 ��t7 ��t7 ��t7 ��t7 ��t7 ��t7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 � 7 ���7 � 7 � 27 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ��t7 ���7 ��t7 ���7 ��t7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 ���7 � 27 � 27 � 27 ���7 ���7 � 7 ���7��7��7��7��7
��7��7��7��7��7��7��7��7��7��7��7��7��7��7 ��7"��7*��7,��7.��70��72��74��76��78��7;��7=��7?��7A�t7B��7C�t7D��7E��7F��7H��7b��7f��7h��7j��7n��7p��7r��7u��7{��7|��7���7���7���7���7���8 ��8 ��8 ��8 ��8 $��8 -��8 7��8 9��8 :��8 ;��8 <��8 =��8 @��8 D��8 F��8 G��8 H��8 J��8 R��8 T��8 U��8 `��8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8 ���8��8��8��8��8��8��8��8#��8%��8'��8(��85��87��89��8:��8<��8>��8A��8B��8C��8D��8F��8I��8b��8k��8m��8o��8q��8t��8���8���8���8���8���9 ��9 ��9 ��9 ��9 ��9 ��9 $�t9 &��9 *��9 -��9 2��9 4��9 D��9 F��9 G��9 H��9 J��9 P��9 Q��9 R��9 S��9 T��9 U��9 V��9 X��9 Y��9 Z��9 [��9 \��9 ]��9 m��9 }��9 ��t9 ��t9 ��t9 ��t9 ��t9 ��t9 ��t9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 � 9 ���9 � 9 � 29 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ��t9 ���9 ��t9 ���9 ��t9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 ���9 � 29 � 29 � 29 ���9 ���9 � 9 ���9��9��9��9��9
��9��9��9��9��9��9��9��9��9��9��9��9��9��9 ��9"��9*��9,��9.��90��92��94��96��98��9;��9=��9?��9A�t9B��9C�t9D��9E��9F��9H��9b��9f��9h��9j��9n��9p��9r��9u��9{��9|��9���9���9���9���9���: Y��: Z��: \��: ���: � : ���: ���: ���: ���: � : � : � :��:��:(��:6��:8��:n��:p��:r��:u��; ��; "��; 7��; 9��; :��; <��; @��; `��; ���; ���; ���;��;#��;%��;'��;(��;5��;7��;9��;I��;k��;m��;o��;q��;t��;���;���< Y��< Z��< \��< ���< � < ���< ���< ���< ���< � < � < � <��<��<(��<6��<8��<n��<p��<r��<u��= ��= "��= 7��= 9��= :��= <��= @��= `��= ���= ���= ���=��=#��=%��='��=(��=5��=7��=9��=I��=k��=m��=o��=q��=t��=���=���> Y��> Z��> \��> ���> � > ���> ���> ���> ���> � > � > � >��>��>(��>6��>8��>n��>p��>r��>u��? ��? "��? 7��? 9��? :��? <��? @��? `��? ���? ���? ���?��?#��?%��?'��?(��?5��?7��?9��?I��?k��?m��?o��?q��?t��?���?���A ��A 
��A ��A ��A "��A &��A *��A 2��A 4��A 7��A 8��A 9��A :��A <�tA ?��A @��A A��A Y��A Z��A \��A `��A r��A ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A ��tA ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A ���A��A��A��A��A��A��A#��A%��A'��A(��A)��A+��A-��A/��A1��A3��A5��A6��A7�tA8��A9�tAE��AI��Ak��Am��An��Ao��Ap��Aq��Ar��At�tAu��A~��A��A���A���A���A���B ��B "��B 7��B 9��B :��B <��B @��B Y��B \��B `��B ���B ���B ���B ���B ���B#��B%��B'��B5��B7��B8��B9��BI��Bk��Bm��Bo��Bq��Bt��Bu��B���B���C Y��C \��C ���C � C ���C ���C ���C � C � C � C��C��C(��C8��Cu��D ��D "��D 7��D 9��D :��D <��D @��D Y��D [��D \��D `��D ���D ���D ���D ���D ���D#��D%��D'��D5��D7��D8��D9��DI��Dk��Dm��Do��Dq��Dt��Du��D���D���E $��E 7��E 9��E :��E ;��E <��E ���E ���E ���E ���E ���E ���E ���E ���E ���E ���E ���E#��E%��E'��E5��E7��E9��EA��EC��EI��Ek��Em��Eo��Eq��Et��F ��F "��F 7��F 9��F :��F <��F @��F Y��F [��F \��F `��F ���F ���F ���F ���F ���F#��F%��F'��F5��F7��F8��F9��FI��Fk��Fm��Fo��Fq��Ft��Fu��F���F���  �� )o�  8�G 7��G 9��G :��G <��G Y��G Z��G [��G \��G ���G ���G ���G ���G ���G#��G%��G'��G5��G6��G7��G8��G9��GI��Gk��Gm��Gn��Go��Gp��Gq��Gr��Gt��Gu��H ��H "��H 7��H 9��H :��H <��H @��H Y��H Z��H \��H `��H ���H ���H ���H ���H ���H#��H%��H'��H5��H6��H7��H8��H9��HI��Hk��Hm��Hn��Ho��Hp��Hq��Hr��Ht��Hu��H���H���I ��I ��I ��I ��I ��I ��I $��I &��I *��I -��I 2��I 4��I 7 I 9 I : 
I D��I F��I G��I H��I J��I P��I Q��I R��I S��I T��I U��I V��I X��I Y��I Z��I [��I \��I ]��I m��I }��I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I � I ���I � I � 2I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I ���I � 2I � 2I � 2I ���I ���I � I ���I��I��I��I��I
��I��I��I��I��I��I��I��I��I��I��I��I��I��I ��I"��I# I% I' I(��I*��I,��I.��I0��I2��I4��I5 
I6��I8��I;��I=��I?��IA��IB��IC��ID��IE��IF��IH��II Ib��If��Ih��Ij��Ik Im 
In��Io 
Ip��Iq 
Ir��Iu��I{��I|��I���I���I���I���I���J ��J 7��J 9��J :��J <��J @��J `��J ���J ���J��J#��J%��J'��J(��J5��J7��J9��JI��Jk��Jm��Jo��Jq��Jt��J���J���Vt��Vu��V{��Y ��Y 
��Y ��Y ��Y ?��Y @��Y A��Y `��Y r��YZ��Y^��Yi��Yp��Yt��Yu�tYv��Yx��Y{�tY|��Y���Y���Y���Y���Y���Y~��Y��Y���Y���Y���Y���Zt��Zu��Z{��[a [v��[���[���[���[���[� _ ��_ ��_ ��_ ��_ ��_ ��_ m��_ }��_V��_Z��_^��_a 2_b�t_e�t_i��_l�t_p��_v��_y��_|��_}��_~��_��_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_���_� 2_���_���_���_���_{��_|��_���_���_���_���_���`t��`u��`{��a  a @ a ` ag ao as at 2au 2aw ax 
a{ 2a� a� b ��b 
��b ��b ��b ?��b @��b A��b `��b r��bZ��b^��bi��bp��bt��bu�tbv��bx��b{�tb|��b���b���b���b���b���b~��b��b���b���b���b���ct��cu��c{��d ��d ��d ��d ��d ��d ��d m��d }��dV��dZ��d^��da 2db��de��di��dl��dp��dt dv��dy��d|��d}��d~��d��d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d���d� 2d���d���d���d���d{��d|��d���d���d���d���d���e ��e 
��e ��e ��e ?��e @��e A��e `��e r��eZ��e^��ei��ep��et��eu�tev��ex��e{�te|��e���e���e���e���e���e~��e��e���e���e���e���fa fv��f���f���f���f���f� ga gv��g���g���g���g���g� ib��ie��il��it��iu��iw��i{��k^��ka ki��kp��kv��kx��k|��k���k���k���k���k���k� l ��l 
��l ��l ��l ?��l @��l A��l `��l r��lZ��l^��li��lp��lt��lu�tlv��lx��l{�tl|��l���l���l���l���l���l~��l��l���l���l���l���oa ov��o���o���o���o���o� pb��pe��pl��pt��pu��pw��p{��r ��r ��r ��ra 
rb��re��rl��r���r� 
r���r���r���sa sv��s���s���s���s���s� t ��t ��t ��t ��t ��t ��t m��t }��tV��tZ��t^��ta 2tb��te��ti��tl��tp��tt tv��ty��t|��t}��t~��t��t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t���t� 2t���t���t���t���t{��t|��t���t���t���t���t���u ��u ��u ��u ��u ��u ��u m��u }��uV��uZ��u^��ua 2ub�tue�tui��ul�tup��uv��uy��u|��u}��u~��u��u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u���u� 2u���u���u���u���u{��u|��u���u���u���u���u���v ��v @��v `��vb��ve��vg��vl��vo��vs��vt��vu��vw��v{��v���v���v���w^��wa wi��wp��wv��wx��w|��w���w���w���w���w���w� x ��x ��x ��xa 
xb��xe��xl��xw��x���x� 
x���x���x���yt��yu��y{��{ ��{ ��{ ��{ ��{ ��{ ��{ m��{ }��{V��{Z��{^��{a 2{b�t{e�t{i��{l�t{p��{v��{y��{|��{}��{~��{��{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{���{� 2{���{���{���{���{{��{|��{���{���{���{���{���| ��| 
��| ��| ��| ?��| @��| A��| `��| r��|t��|u��|v��|x��|{��||��|���|���|���|���|���|~��|��|���|���|���|���} ��} @��} `��}t��}u��}{��}|��}���}���}���~t��~u��~{��~���~���~���~���t u w { � ��� @��� `���t���u���{��������������� ��� 
��� ��� ��� ?��� @��� A��� `��� r���t���u���v���x���{���|�����������������������~����������������������t���u���{����������������������� ��� ��� ��� ��� @��� `���b���e���g���l���o���s���t���u���w���{���|���}��������������������������������������������������������������� ��� @��� `���t���u���{������������������������������� ��� @��� `���t���u���{���|���������������v���|���}�������������������������������������������������������������������������������������������t���u���{����������������������� ��� @��� `���t���u���{����������� ��� @��� `���t���u���{���|���}����������������������������������������������������������������������������������� ��� 
��� ��� ��� ?��� @��� A��� `��� r���Z���t���u�t�v���x���{�t�|���}�������������������������������������������������������������������������������������������~���������������������� ��� @��� `���t���u���{��������������� ��� ��� ��� ��� @��� `���b���e���g���l���o���s���t���u���w���{���|���}���������������������������������������������������������������v���|���}������������������������������������������������������������������������������������������� ��� @��� `���t���u���{������������������������������� ��� @��� `���t���u���{����������� ��� @��� `���t���u���{������������������������������� ��� @��� `���t���u���{���|��������������� ��� ��� ��� ��� @��� `���b���e���g���l���o���s���t���u���w���{���|���}��������������������������������������������������������������� ��� ��� ��� ��� @��� `���b���e���g���l���o���s���t���u���w���{���|���}��������������������������������������������������������������� ��� @��� `���t���u���{��������������� ��� @��� `���t���u���{������������������������������� ��� ��� ��� ��� @��� `���b���e���g���l���o���s���t���u���w���{���|���}��������������������������������������������������������������� ��� @��� `���t���u���{��������������� ��� @��� `���t���u���{���������������  � @ � ` �g �o �s �t 2�u 2�w �x 
�{ 2�� �� � ��� @��� `���t���u���{��������������� ��� @��� `���t���u���{������������������������������� ��� @��� `���t���u���{��������������� ��� @��� `���t���u���{���������������������������������������� ��������������"���$���&���*���,���.���1���2���7���R���T���V���X���������������������������� ��������������"���$���&���*���,���.���1���2���7���R���T���V���X��� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r�������������������������������������������� ���������������������!���"���#���$���%���&���)���*���Q���R���S���T���U���V���~���������������������� ��� ��� ��� ��� ��� ��� m��� }���� �������������� �� ���������������������� �� ������ ������������������������������������������������������������������������������������������������������������������������������������������������������ 2�������������������������������������
������������������ ���������������������� ���! �"���$���&���(���) �*���,���.���0���1���2���5���7���9���:���;���<���=���>���@���A���B���D���F���H���J���L���M���N���O���P���Q �R���S �T���U �V���X���Z���\���^���{���|������������������������������������������������ ��������������"���$���&���*���,���.���1���2���7���R���T���V���X��������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V���������������9���;���=��� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r��������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V���~���������������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r��������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V���~���������������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r���������������������������������������������������������������!���"���#���$���%���&���)���*���Q���R���S���T���U���V���~����������������������������������������������������������� �����������������������"���$���&���*���,���.���1���2���7���A���M���O���R���T���V���X��� ��� ��� ��� ��� ��� ��� m��� }���� �������������� �� ���������������������� �� ������ ������������������������������������������������������������������������������������������������������������������������������������������������������ 2�������������������������������������
������������������ ���������������������� ���! �"���$���&���(���) �*���,���.���0���1���2���5���7���9���:���;���<���=���>���@���A���B���D���F���H���J���L���M���N���O���P���Q �R���S �T���U �V���X���Z���\���^���{���|����������������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r����������������������������������������������������������������������������������������������������������!���"���#�t�$���%�t�&���)���*���+���,���-���.���1���2���6���7���A���M���O���Q���R���S���T���U���V���W���X���~���������������������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V��������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V��� ��� ��� ��� ��� ��� ��� m��� }���� �������������� �� ���������������������� �� ������ ������������������������������������������������������������������������������������������������������������������������������������������������������ 2�������������������������������������
������������������ ���������������������� ���! �"���$���&���(���) �*���,���.���0���1���2���5���7���9���:���;���<���=���>���@���A���B���D���F���H���J���L���M���N���O���P���Q �R���S �T���U �V���X���Z���\���^���{���|����������������������� ��� 
��� ��� "��� ?��� A��� r���������������������������������������������������������������� <���������������������!���"���#���$���%���&���)���*���+���,���-���.���1���2���6���7���Q���R���S���T���U���V���W���X���~��������������������������������������� ��������������"���$���&���*���,���.���1���2���7���R���T���V���X���������������������������������������� �����������������������"���$���&���*���,���.���1���2���7���A���M���O���R���T���V���X�����������������������������������������������������!���#���%���'���)���4���9���;���=���C���Q���S���U���������������������������������������� �����������������������"���$���&���*���,���.���1���2���7���A���M���O���R���T���V���X�����������������������������������������������������!���#���%���'���)���4���9���;���=���C���Q���S���U��� ��� ��� ������������������������������������ 
�����������9���:���;���<���=���>���������������������������������������� ��������������"���$���&���*���,���.���1���2���7���R���T���V���X��� ��� ��� ��� ��� ��� ��� m��� }���� �������������� �� ���������������������� �� ������ ������������������������������������������������������������������������������������������������������������������������������������������������������ 2�������������������������������������
������������������ ���������������������� ���! �"���$���&���(���) �*���,���.���0���1���2���5���7���9���:���;���<���=���>���@���A���B���D���F���H���J���L���M���N���O���P���Q �R���S �T���U �V���X���Z���\���^���{���|����������������������� ��� ��� ��� ��� ��� ��� m��� }���� �������������� �� ���������������������� �� ������ ������������������������������������������������������������������������������������������������������������������������������������������������������ 2�������������������������������������
������������������ ���������������������� ���! �"���$���&���(���) �*���,���.���0���1���2���5���7���9���:���;���<���=���>���@���A���B���D���F���H���J���L���M���N���O���P���Q �R���S �T���U �V���X���Z���\���^���{���|����������������������� ��� @��� `���������������������������������������������������������������������!���#���%���'���)���4���9���;���=���C���Q���S���U������������������������������������������������ �����������������������"���$���&���*���,���.���1���2���7���A���M���O���R���T���V���X��� ��� 
��� ��� "��� ?��� A��� r���������������������������������������������������������������� <���������������������!���"���#���$���%���&���)���*���+���,���-���.���1���2���6���7���Q���R���S���T���U���V���W���X���~�������������� ��� 
��� ��� "��� ?��� A��� r���������������������������������������������������������������� <���������������������!���"���#���$���%���&���)���*���+���,���-���.���1���2���6���7���Q���R���S���T���U���V���W���X���~�������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r��������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V���~���������������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r��������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V���~���������������������� ��� @��� `��������������������������������������������������������������������������������!���#���%���'���)���4���9���;���=���C���E���G���Q���S���U�������������������������������������������������������������!���#���%���'���)���4���9���;���=���C���Q���S���U��� ��� "��� @��� `���������������������������������������������������������������!���"���#���$���%���&���)���*���Q���R���S���T���U���V������������������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V��� ��� "��� @��� `���������������������������������������������������������������!���"���#���$���%���&���)���*���Q���R���S���T���U���V����������� ��� ��� ��� ��� @��� `���������������������������������������������������������������������������������������������������������������������������������������� ���!���#���%���'���)���2���4���9���:���;���<���=���>���@���B���C���E���G���N���P���Q���S���U����������������������� ��� 
��� ��� "��� ?��� A��� r������������������������������������������������������������ <���������������������������!���"���#���$���%���&���)���*���+���,���-���.���1���2���6���7���Q���R���S���T���U���V���W���X���~�������������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� @��� `�������������������������������������������������������������������������� ���!���#���%���)���+���-���1���2���6���@���B���N���P���Q���S���U���W����������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� @��� `�������������������������������������������������������������������������� ���!���#���%���)���+���-���1���2���6���@���B���N���P���Q���S���U���W����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� @��� `������������������������������������������������!���#���%���)���2���Q���S���U����������� ��� ��� ��� ��� @��� `���������������������������������������������������������������������������������������������������������������������������������������� ���!���#���%���'���)���2���4���9���:���;���<���=���>���@���B���C���E���G���N���P���Q���S���U����������������������� ��� ��� ��� ��� @��� `���������������������������������������������������������������������������������������������������������������������������������������� ���!���#���%���'���)���2���4���9���:���;���<���=���>���@���B���C���E���G���N���P���Q���S���U����������������������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� @��� `�������������������������������������������������������������������������� ���!���#���%���)���+���-���1���2���6���@���B���N���P���Q���S���U���W����������� ��� 
��� ��� "��� ?��� A��� r������������������������������������������������������������ <���������������������������!���"���#���$���%���&���)���*���+���,���-���.���1���2���6���7���Q���R���S���T���U���V���W���X���~�������������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� 
��� ��� "��� ?��� A��� r������������������������������������������������������������ <���������������������������!���"���#���$���%���&���)���*���+���,���-���.���1���2���6���7���Q���R���S���T���U���V���W���X���~�������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r�������������������������������������������������������������������!���"���#���$���%���&���)���*���+���-���1���6���Q���R���S���T���U���V���W���~���������������������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r�������������������������������������������������������������������!���"���#���$���%���&���)���*���+���-���1���6���Q���R���S���T���U���V���W���~���������������������� ��� "��� @��� `��������������������������������������������������������������������������������������������������������������������!���"���#���$���%���&���'���(���)���*���4���5���9���;���=���C���D���F���H���Q���R���S���T���U���V����������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� "��� @��� `����������������������������������������������������������������������������������!���"���#���$���%���&���(���)���*���5���D���Q���R���S���T���U���V����������� ��� "��� @��� `�������������������������������������������� ���������������������!���"���#���$���%���&���)���*���Q���R���S���T���U���V����������� ��� ��� ��� ��� @��� `���������������������������������������������������������������������������������������������������������������������������������������� ���!���#���%���'���)���2���4���9���:���;���<���=���>���@���B���C���E���G���N���P���Q���S���U����������������������� ��� @��� `������������������������������������������������!���#���%���)���2���Q���S���U����������� ��� "��� @��� `�������������������������������������������������������!���"���#���$���%���&���)���*���1���Q���R���S���T���U���V�����������  � " � @ � ` �� 2�� 2�� 2�� �� �� 2�� 2�� �� 
�� 2�� �� Z� � � 2�! 2�' �) 2�+ 
�- 
�4 �6 
�C �E �G �Q 2�S 2�U 2�W 
�� �� �� � ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r�������������������������������������������������������������������!���"���#���$���%���&���)���*���+���-���1���6���Q���R���S���T���U���V���W���~���������������������� ��� 
��� ��� ��� "��� ?��� @��� A��� `��� r�������������������������������������������������������������������!���"���#���$���%���&���)���*���+���-���1���6���Q���R���S���T���U���V���W���~���������������������� ��� "��� @��� `���������������������������������������������������������������!���"���#���$���%���&���)���*���Q���R���S���T���U���V����������� ��� @��� `�������������������������������������������������������������������������� ���!���#���%���)���+���-���1���2���6���@���B���N���P���Q���S���U���W����������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U����������� ��� ��� ��� ��� @��� `���������������������������������������������������������������������������������������������������������������������������������������� ���!���#���%���'���)���2���4���9���:���;���<���=���>���@���B���C���E���G���N���P���Q���S���U����������������������� ��� "��� @��� `��������������������������������������!���#���%���)���Q���S���U�����������������������������������������������!��#��%��'��)��4��9��;��=��C��Q��S��U�� �� "�� @�� `������������������������������������������������������������!��"��#��$��%��&��(��)��*��5��D��Q��R��S��T��U��V�������� �� �� �� �� �� �� m�� }��� ���� ������� � ���������������� � ���� ���������������������������������������������������������������������������������������������������������������� 2��������������������������
������������ �������������� ��! "��$��&��(��) *��,��.��0��1��2��5��7��9��:��;��<��=��>��@��A��B��D��F��H��J��L��M��N��O��P��Q R��S T��U V��X��Z��\��^��{��|����������������� �� �� ������������������������������������������������ ����������� ��9��:��;��<��=��>��@��B��N��P����������� �� �� �� �� �� �� m�� }��� ���������� � ���������������� � ���� ���������������������������������������������������������������������������������������������������������������� 2��������������������������
������������ �������������� ��! "��$��&��(��) *��,��.��0��1��2��5��7��9��:��;��<��=��>��@��A��B��D��F��H��J��L��M��N��O��P��Q R��S T��U V��X��Z��\��^��{��|����������������� �� �� �� �� @�� `���������������������������������������������������������������������������������������������������� ��!��#��%��'��)��2��4��9��:��;��<��=��>��@��B��C��E��G��N��P��Q��S��U�����������������	���	���	���	���	���	���	���	���	���	���	���	���	� 	���	���	��	��	��	��	��	!��	"��	#��	$��	%��	&��	(��	)��	*��	5��	D��	Q��	R��	S��	T��	U��	V��
 ��
 "��
 @��
 `��
���
���
���
���
���
���
���
���
���
� 
���
��
��
��
��
!��
"��
#��
$��
%��
&��
)��
*��
1��
Q��
R��
S��
T��
U��
V��
���
���������������������������������������������� <���������������!��"��#��$��%��&��)��*��+��,��-��.��1��2��6��7��Q��R��S��T��U��V��W��X������������������������������ <������!��#��%��)��+��,��-��.��1��2��6��7��Q��S��U��W��X���������������������������������������!��#��%��'��)��4��9��;��=��C��Q��S��U�� �� "�� @�� `������������������������������������������������������������!��"��#��$��%��&��(��)��*��5��D��Q��R��S��T��U��V��������������������������������������������������� <���������������!��"��#��$��%��&��)��*��+��,��-��.��1��2��6��7��Q��R��S��T��U��V��W��X������������������������������ <������!��#��%��)��+��,��-��.��1��2��6��7��Q��S��U��W��X������������������������������ ���������������"��$��&��*��,��.��1��2��7��A��M��O��R��T��V��X�� �� @�� `������������������������������������������������������ ��!��#��%��)��+��-��1��2��6��@��B��N��P��Q��S��U��W������������������������������������ ���������������"��$��&��*��,��.��1��2��7��A��M��O��R��T��V��X�� �� @�� `������������������������������������������������������ ��!��#��%��)��+��-��1��2��6��@��B��N��P��Q��S��U��W������������������������������������ ���������������"��$��&��*��,��.��1��2��7��A��M��O��R��T��V��X�� �� @�� `������������������������������������������������������ ��!��#��%��)��+��-��1��2��6��@��B��N��P��Q��S��U��W�������� �� 
�� �� "�� ?�� A�� r������������������������������������������������ <��������������!��"��#��$��%��&��)��*��+��,��-��.��1��2��6��7��Q��R��S��T��U��V��W��X��~���������� �� 
�� �� "�� ?�� A�� r��������������������������������������������� <������������������!��"��#��$��%��&��)��*��+��,��-��.��1��2��6��7��Q��R��S��T��U��V��W��X��~���������� �� �� �� �� �� �� m�� }��� ���������� � ���������������� � ���� ���������������������������������������������������������������������������������������������������������������� 2��������������������������
������������ �������������� ��! "��$��&��(��) *��,��.��0��1��2��5��7��9��:��;��<��=��>��@��A��B��D��F��H��J��L��M��N��O��P��Q R��S T��U V��X��Z��\��^��{��|����������������� �� �� �� �� @�� `���������������������������������������������������������������������������������������������������� ��!��#��%��'��)��2��4��9��:��;��<��=��>��@��B��C��E��G��N��P��Q��S��U����������������� �� 
�� �� �� "�� ?�� @�� A�� `�� r��������������������������������� ��������������!��"��#��$��%��&��)��*��Q��R��S��T��U��V��~���������������� �� 
�� �� �� "�� ?�� @�� A�� `�� r������������������������������������ ��������������!��"��#��$��%��&��)��*��+��-��1��6��Q��R��S��T��U��V��W��~���������������� �� 
�� �� �� "�� ?�� @�� A�� `�� r������������������������������������������������������!��"��#��$��%��&��(��)��*��5��D��Q��R��S��T��U��V��~���������������� �� 
�� �� �� "�� ?�� @�� A�� `�� r�������������������������������������������������!��"��#��$��%��&��)��*��+��-��1��6��Q��R��S��T��U��V��W��~����������������������������������� ���������"��$��&��*��,��.��1��2��7��R��T��V��X��  ��  @��  `�� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� �� �� !�� #�� %�� )�� 2�� Q�� S�� U�� ��� ���! ��! ��! ��! ��! ��! ��! m��! }��!� !���!���!���!� !� !���!���!���!���!���!� !� !���!� !���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!���!� 2!���!���!���!���!���!���!��!��!��!��!
��!��!��!��!��!��! !��!��!��!��!��!��!��! ��!! !"��!$��!&��!(��!) !*��!,��!.��!0��!1��!2��!5��!7��!9��!:��!;��!<��!=��!>��!@��!A��!B��!D��!F��!H��!J��!L��!M��!N��!O��!P��!Q !R��!S !T��!U !V��!X��!Z��!\��!^��!{��!|��!���!���!���!���!���" ��" ��" ��" ��" @��" `��"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"���"��"��"��"��"��"��"��" ��"!��"#��"%��"'��")��"2��"4��"9��":��";��"<��"=��">��"@��"B��"C��"E��"G��"N��"P��"Q��"S��"U��"���"���"���"���"���# ��# ��# ��# ��# ��# ��# m��# }��#���#���#���#��t#���#���#���#���#���#���#���#���#���#��~#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#���#��#��#��#��#
��#��#��#��#��#��#��#��#��#��#��#��#��# ��#"��#$��#&��#(��#*��#,��#.��#0��#1��#5��#7��#9�t#:��#;�t#<��#=�t#>��#@��#A��#B��#D��#F��#H��#J��#L��#M��#N��#O��#P��#R��#T��#V��#X��#Z��#\��#^��#{��#|��#���#���#���#���#���$ ��$ ��$ ��$ ��$ @��$ `��$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$���$��$��$��$��$��$��$��$ ��$!��$#��$%��$'��$)��$2��$4��$9��$:��$;��$<��$=��$>��$@��$B��$C��$E��$G��$N��$P��$Q��$S��$U��$���$���$���$���$���% ��% ��% ��% ��% ��% ��% m��% }��%���%���%���%��t%���%���%���%���%���%���%���%���%���%��~%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%���%��%��%��%��%
��%��%��%��%��%��%��%��%��%��%��%��%��% ��%"��%$��%&��%(��%*��%,��%.��%0��%1��%5��%7��%9�t%:��%;�t%<��%=�t%>��%@��%A��%B��%D��%F��%H��%J��%L��%M��%N��%O��%P��%R��%T��%V��%X��%Z��%\��%^��%{��%|��%���%���%���%���%���& ��& ��& ��& ��& @��& `��&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&���&��&��&��&��&��&��&��& ��&!��&#��&%��&'��&)��&2��&4��&9��&:��&;��&<��&=��&>��&@��&B��&C��&E��&G��&N��&P��&Q��&S��&U��&���&���&���&���&���'���'���'���'���'���'���'���'���'���'���'���'���'���'���'� <'���'��'��'��'��'��'��'!��'"��'#��'$��'%��'&��')��'*��'+��',��'-��'.��'1��'2��'6��'7��'Q��'R��'S��'T��'U��'V��'W��'X��(���(���(���(���(���(���(���(���(���(� <(��(��(��(!��(#��(%��()��(+��(,��(-��(.��(1��(2��(6��(7��(Q��(S��(U��(W��(X��) ��) 
��) ��) "��) ?��) A��) r��)���)���)���)���)���)���)���)���)���)���)���)���)���)���)���)� <)���)���)��)��)��)��)!��)"��)#��)$��)%��)&��))��)*��)+��),��)-��).��)1��)2��)6��)7��)Q��)R��)S��)T��)U��)V��)W��)X��)~��)��)���)���* ��* 
��* ��* "��* ?��* A��* r��*���*���*���*���*���*���*���*���*���*���*���*���*���*���*� <*���*���*��*��*��*��*��*��*!��*"��*#��*$��*%��*&��*)��**��*+��*,��*-��*.��*1��*2��*6��*7��*Q��*R��*S��*T��*U��*V��*W��*X��*~��*��*���*���+ ��+ 
��+ ��+ "��+ ?��+ A��+ r��+���+���+���+���+���+���+���+���+���+���+���+���+���+���+���+� <+���+���+��+��+��+��+!��+"��+#��+$��+%��+&��+)��+*��++��+,��+-��+.��+1��+2��+6��+7��+Q��+R��+S��+T��+U��+V��+W��+X��+~��+��+���+���, ��, 
��, ��, "��, ?��, A��, r��,���,���,���,���,���,���,���,���,���,���,���,���,���,���,� <,���,���,��,��,��,��,��,��,!��,"��,#��,$��,%��,&��,)��,*��,+��,,��,-��,.��,1��,2��,6��,7��,Q��,R��,S��,T��,U��,V��,W��,X��,~��,��,���,���. ��. "��. @��. `��.���.���.���.���.���.���.���.���.��.!��.#��.%��.)��.Q��.S��.U��.���.���/ ��/ 
��/ ��/ ��/ "��/ ?��/ @��/ A��/ `��/ r��/���/���/���/���/���/���/���/���/���/���/���/���/��/��/��/��/!��/"��/#��/$��/%��/&��/)��/*��/Q��/R��/S��/T��/U��/V��/~��/��/���/���/���/���0 ��0 
��0 ��0 ��0 "��0 ?��0 @��0 A��0 `��0 r��0���0���0���0���0���0���0���0���0���0���0���0���0���0��0��0��0��0!��0"��0#��0$��0%��0&��0)��0*��0+��0-��01��06��0Q��0R��0S��0T��0U��0V��0W��0~��0��0���0���0���0���1���1���1���1���1���1���1���1���1���1���1���1���1���1���1���1��1��1!��1'��1)��12��14��19��1;��1=��1C��1Q��1S��1U��2 ��2 "��2 @��2 `��2���2���2���2���2���2���2���2���2���2���2���2���2���2���2���2���2��2��2��2��2��2!��2"��2#��2$��2%��2&��2(��2)��2*��25��2D��2Q��2R��2S��2T��2U��2V��2���2���4���4���4���4���4���4���4���4���4���4� 4���4��4��4��4��4��4��4"��4$��4&��4*��4,��4.��41��42��47��4A��4M��4O��4R��4T��4V��4X��5 ��5 @��5 `��5���5���5���5���5���5���5���5���5���5���5���5���5���5���5��5��5��5��5��5 ��5!��5#��5%��5)��5+��5-��51��52��56��5@��5B��5N��5P��5Q��5S��5U��5W��5���5���7 ��7 "��7 @��7 `��7���7���7���7���7���7���7���7���7��7!��7#��7%��7)��7Q��7S��7U��7���7���9 ��9 
��9 ��9 ��9 "��9 ?��9 @��9 A��9 `��9 r��9���9���9���9���9���9���9���9���9���9���9���9���9���9���9���9���9���9���9���9��9��9��9��9��9��9��9��9��9!��9"��9#�t9$��9%�t9&��9)��9*��9+��9,��9-��9.��91��92��96��97��9A��9M��9O��9Q��9R��9S��9T��9U��9V��9W��9X��9~��9��9���9���9���9���: ��: "��: @��: `��:���:���:���:���:���:���:���:���:���:���:���:���:��:��:��:��:!��:"��:#��:$��:%��:&��:)��:*��:Q��:R��:S��:T��:U��:V��:���:���; ��; 
��; ��; ��; "��; ?��; @��; A��; `��; r��;���;���;���;���;���;���;���;���;���;���;���;���;���;���;���;���;���;���;���;��;��;��;��;��;��;��;��;��;!��;"��;#�t;$��;%�t;&��;)��;*��;+��;,��;-��;.��;1��;2��;6��;7��;A��;M��;O��;Q��;R��;S��;T��;U��;V��;W��;X��;~��;��;���;���;���;���< ��< "��< @��< `��<���<���<���<���<���<���<���<���<���<���<���<���<��<��<��<��<!��<"��<#��<$��<%��<&��<)��<*��<Q��<R��<S��<T��<U��<V��<���<���=���=���=���=���=���=���=� =���=��=��=��="��=$��=&��=*��=,��=.��=1��=2��=7��=R��=T��=V��=X��> ��> "��> @��> `��>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>���>��>��>��>��>��>!��>"��>#��>$��>%��>&��>(��>)��>*��>5��>D��>Q��>R��>S��>T��>U��>V��>���>���?���?���?���?���?���?���?� ?���?��?��?��?"��?$��?&��?*��?,��?.��?1��?2��?7��?R��?T��?V��?X��@ ��@ "��@ @��@ `��@���@���@���@���@���@���@���@���@���@���@���@���@���@���@���@���@��@��@��@��@��@!��@"��@#��@$��@%��@&��@(��@)��@*��@5��@D��@Q��@R��@S��@T��@U��@V��@���@���A���A���A���A���A���A���A���A���A���A���A���A��A��A!��A#��A%��A'��A)��A4��A9��A;��A=��AC��AQ��AS��AU��B ��B "��B @��B `��B���B���B���B���B���B���B���B���B���B���B���B���B���B���B���B���B��B��B��B��B��B!��B"��B#��B$��B%��B&��B(��B)��B*��B5��BD��BQ��BR��BS��BT��BU��BV��B���B���C���C���C���C���C���C���C���C���C���C� C���C��C��C��C��C��C��C"��C$��C&��C*��C,��C.��C1��C2��C7��CA��CM��CO��CR��CT��CV��CX��D ��D @��D `��D���D���D���D���D���D���D���D���D���D���D���D���D���D���D��D��D��D��D��D ��D!��D#��D%��D)��D+��D-��D1��D2��D6��D@��DB��DN��DP��DQ��DS��DU��DW��D���D���E���E���E���E���E���E���E���E���E���E���E���E��E��E!��E#��E%��E'��E)��E4��E9��E;��E=��EC��EQ��ES��EU��F ��F "��F @��F `��F���F���F���F���F���F���F���F���F���F���F���F���F���F���F���F���F��F��F��F��F��F!��F"��F#��F$��F%��F&��F(��F)��F*��F5��FD��FQ��FR��FS��FT��FU��FV��F���F���G���G���G���G���G���G���G���G���G���G���G���G���G���G���G���G��G��G��G!��G"��G$��G&��G(��G)��G*��G5��G9��G;��G=��GD��GQ��GR��GS��GT��GU��GV��H ��H "��H @��H `��H���H���H���H���H���H���H���H���H���H���H���H���H��H��H��H��H��H��H!��H"��H$��H&��H)��H*��H2��HQ��HR��HS��HT��HU��HV��H���H���J ��J "��J @��J `��J���J���J���J���J���J���J���J���J��J!��J#��J%��J)��JQ��JS��JU��J���J���L ��L "��L @��L `��L���L���L���L���L���L���L���L���L��L!��L#��L%��L)��LQ��LS��LU��L���L���M���M���M���M���M���M���M���M���M���M���M���M��M��M!��M#��M%��M'��M)��M4��M9��M;��M=��MC��MQ��MS��MU��N ��N "��N @��N `��N���N���N���N���N���N���N���N���N���N���N���N���N���N���N���N���N��N��N��N��N��N!��N"��N#��N$��N%��N&��N(��N)��N*��N5��ND��NQ��NR��NS��NT��NU��NV��N���N���O���O���O���O���O���O���O���O���O���O���O���O��O��O!��O#��O%��O'��O)��O4��O9��O;��O=��OC��OQ��OS��OU��P ��P "��P @��P `��P���P���P���P���P���P���P���P���P���P���P���P���P���P���P���P���P��P��P��P��P��P!��P"��P#��P$��P%��P&��P(��P)��P*��P5��PD��PQ��PR��PS��PT��PU��PV��P���P���Q ��Q ��Q ��Q ��Q ��Q ��Q m��Q }��Q� Q���Q���Q���Q� Q� Q���Q���Q���Q���Q���Q� Q� Q���Q� Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q���Q� 2Q���Q���Q���Q���Q���Q���Q��Q��Q��Q��Q
��Q��Q��Q��Q��Q��Q Q��Q��Q��Q��Q��Q��Q��Q ��Q! Q"��Q$��Q&��Q(��Q) Q*��Q,��Q.��Q0��Q1��Q2��Q5��Q7��Q9��Q:��Q;��Q<��Q=��Q>��Q@��QA��QB��QD��QF��QH��QJ��QL��QM��QN��QO��QP��QQ QR��QS QT��QU QV��QX��QZ��Q\��Q^��Q{��Q|��Q���Q���Q���Q���Q���R ��R ��R ��R ��R @��R `��R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R���R��R��R��R��R��R��R��R ��R!��R#��R%��R'��R)��R2��R4��R9��R:��R;��R<��R=��R>��R@��RB��RC��RE��RG��RN��RP��RQ��RS��RU��R���R���R���R���R���S ��S ��S ��S ��S ��S ��S m��S }��S� S���S���S���S� S� S���S���S���S���S���S� S� S���S� S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S���S� 2S���S���S���S���S���S���S��S��S��S��S
��S��S��S��S��S��S S��S��S��S��S��S��S��S ��S! S"��S$��S&��S(��S) S*��S,��S.��S0��S1��S2��S5��S7��S9��S:��S;��S<��S=��S>��S@��SA��SB��SD��SF��SH��SJ��SL��SM��SN��SO��SP��SQ SR��SS ST��SU SV��SX��SZ��S\��S^��S{��S|��S���S���S���S���S���T ��T ��T ��T ��T @��T `��T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T���T��T��T��T��T��T��T��T ��T!��T#��T%��T'��T)��T2��T4��T9��T:��T;��T<��T=��T>��T@��TB��TC��TE��TG��TN��TP��TQ��TS��TU��T���T���T���T���T���U ��U ��U ��U ��U ��U ��U m��U }��U� U���U���U���U� U� U���U���U���U���U���U� U� U���U� U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U���U� 2U���U���U���U���U���U���U��U��U��U��U
��U��U��U��U��U��U U��U��U��U��U��U��U��U ��U! U"��U$��U&��U(��U) U*��U,��U.��U0��U1��U2��U5��U7��U9��U:��U;��U<��U=��U>��U@��UA��UB��UD��UF��UH��UJ��UL��UM��UN��UO��UP��UQ UR��US UT��UU UV��UX��UZ��U\��U^��U{��U|��U���U���U���U���U���V ��V ��V ��V ��V @��V `��V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V���V��V��V��V��V��V��V��V ��V!��V#��V%��V'��V)��V2��V4��V9��V:��V;��V<��V=��V>��V@��VB��VC��VE��VG��VN��VP��VQ��VS��VU��V���V���V���V���V���X ��X "��X @��X `��X���X���X���X���X���X���X���X���X��X!��X#��X%��X)��XQ��XS��XU��X���X���Y ��Y ��Y ��Y ��Y ��Y ��Y m��Y }��Y� Y���Y���Y���Y� Y� Y���Y���Y���Y���Y���Y� Y� Y���Y� Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y���Y� 2Y���Y���Y���Y���Y���Y���Y��Y��Y��Y��Y
��Y��Y��Y��Y��Y��Y Y��Y��Y��Y��Y��Y��Y��Y ��Y! Y"��Y$��Y&��Y(��Y) Y*��Y,��Y.��Y0��Y1��Y2��Y5��Y7��Y9��Y:��Y;��Y<��Y=��Y>��Y@��YA��YB��YD��YF��YH��YJ��YL��YM��YN��YO��YP��YQ YR��YS YT��YU YV��YX��YZ��Y\��Y^��Y{��Y|��Y���Y���Y���Y���Y���Z ��Z ��Z ��Z ��Z @��Z `��Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z���Z��Z��Z��Z��Z��Z��Z��Z ��Z!��Z#��Z%��Z'��Z)��Z2��Z4��Z9��Z:��Z;��Z<��Z=��Z>��Z@��ZB��ZC��ZE��ZG��ZN��ZP��ZQ��ZS��ZU��Z���Z���Z���Z���Z���\ ��\ "��\ @��\ `��\���\���\���\���\���\���\���\���\��\!��\#��\%��\)��\Q��\S��\U��\���\���] ��] 
��] ��] "��] ?��] A��] r��]���]���]���]���]���]���]���]���]���]���]���]���]���]���]���]� <]���]���]��]��]��]��]!��]"��]#��]$��]%��]&��])��]*��]+��],��]-��].��]1��]2��]6��]7��]Q��]R��]S��]T��]U��]V��]W��]X��]~��]��]���]���^ ��^ 
��^ ��^ "��^ ?��^ A��^ r��^���^���^���^���^���^���^���^���^���^���^���^���^���^���^� <^���^���^��^��^��^��^��^��^!��^"��^#��^$��^%��^&��^)��^*��^+��^,��^-��^.��^1��^2��^6��^7��^Q��^R��^S��^T��^U��^V��^W��^X��^~��^��^���^���_ 7��_ 9��_ :��_ <��_ Y��_ [��_ \��_ ���_ ���_ ���_ ���_#��_%��_'��_5��_7��_8��_9��_I��_k��_m��_o��_q��_t��_u��` ��` "��` 7��` 9��` :��` <��` @��` Y��` [��` \��` `��` ���` ���` ���` ���` ���`#��`%��`'��`5��`7��`8��`9��`I��`k��`m��`o��`q��`t��`u��`���`���a ��a $��a 7��a 9��a :��a ;��a <��a @��a `��a ���a ���a ���a ���a ���a ���a ���a ���a ���a ���a ���a ���a#��a%��a'��a5��a7��a9��aA��aC��aI��ak��am��ao��aq��at��a���a���c ��c ��c ��c $��c -��c 7 
c 9 
c D��c F��c G��c H��c J��c P��c Q��c R��c S��c T��c U��c V��c X��c ]��c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c � 
c ���c � c � (c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c ���c � (c � (c � (c ���c ���c � c ���c��c��c��c��c
��c��c��c��c��c��c��c��c��c��c ��c"��c# 
c% 
c' 
c(��c*��c,��c.��c0��c2��c4��c;��c=��c?��cA��cB��cC��cD��cF��cH��cI 
cb��cf��ch��cj��ck 
c���c���c���d ��d ��d ��d $��d -��d D��d ���d ���d ���d ���d ���d ���d ���d ���d ���d ���d ���d ���d ���d ���d � 
d � d � (d ���d ���d ���d ���d ���d ���d ���d � (d � (d � (d ���d � d��d(��dA��dB��dC��dD��d���d���d���f ��f "��f 7��f 9��f :��f <��f @��f Y��f \��f `��f ���f ���f ���f ���f ���f#��f%��f'��f5��f7��f8��f9��fI��fk��fm��fo��fq��ft��fu��f���f���g ��g ��g ��g $��g -��g D��g ���g ���g ���g ���g ���g ���g ���g ���g ���g ���g ���g ���g ���g ���g � 
g � 
g ���g ���g ���g ���g ���g ���g ���g � 
g � 
g � 
g ���g � 
g(��gA��gB��gC��gD��g���g���g���h ��h "��h 7��h 9��h :��h <��h @��h Y��h [��h \��h `��h ���h ���h ���h ���h ���h#��h%��h'��h5��h7��h8��h9��hI��hk��hm��ho��hq��ht��hu��h���h���i 7��i 9��i :��i <��i Y��i Z��i [��i \��i ���i ���i ���i ���i ���i#��i%��i'��i5��i6��i7��i8��i9��iI��ik��im��in��io��ip��iq��ir��it��iu��j ��j "��j 7��j 9��j :��j <��j @��j Y��j Z��j \��j `��j ���j ���j ���j ���j ���j#��j%��j'��j5��j6��j7��j8��j9��jI��jk��jm��jn��jo��jp��jq��jr��jt��ju��j���j���k ��k ��k ��k ��k ��k ��k $��k &��k *��k -��k 2��k 4��k 7 k 9 k : 
k D��k F��k G��k H��k J��k P��k Q��k R��k S��k T��k U��k V��k X��k Y��k Z��k [��k \��k ]��k m��k }��k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k � k ���k � k � 2k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k ���k � 2k � 2k � 2k ���k ���k � k ���k��k��k��k��k
��k��k��k��k��k��k��k��k��k��k��k��k��k��k ��k"��k# k% k' k(��k*��k,��k.��k0��k2��k4��k5 
k6��k8��k;��k=��k?��kA��kB��kC��kD��kE��kF��kH��kI kb��kf��kh��kj��kk km 
kn��ko 
kp��kq 
kr��ku��k{��k|��k���k���k���k���k���l ��l 7��l 9��l :��l <��l @��l `��l ���l ���l��l#��l%��l'��l(��l5��l7��l9��lI��lk��lm��lo��lq��lt��l���l���m ��m ��m ��m ��m ��m ��m $��m &��m *��m -��m 2��m 4��m 7 
m 9 
m D��m F��m G��m H��m J��m P��m Q��m R��m S��m T��m U��m V��m X��m Y��m Z��m [��m \��m ]��m m��m }��m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m � 
m ���m � m � (m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m ���m � (m � (m � (m ���m ���m � m ���m��m��m��m��m
��m��m��m��m��m��m��m��m��m��m��m��m��m��m ��m"��m# 
m% 
m' 
m*��m,��m.��m0��m2��m4��m6��m8��m;��m=��m?��mA��mB��mC��mD��mE��mF��mH��mI 
mb��mf��mh��mj��mk 
mn��mp��mr��mu��m{��m|��m���m���m���m���m���n ��n ��n ��n ��n $��n 7��n 9��n :��n ;��n <��n =��n @��n D��n `��n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n ���n��n#��n%��n'��n5��n7��n9��n:��n<��n>��nA��nB��nC��nD��nI��nk��nm��no��nq��nt��n���n���n���n���n���o ��o ��o ��o ��o ��o ��o $��o &��o *��o -��o 2��o 4��o 7 
o 9 
o D��o F��o G��o H��o J��o P��o Q��o R��o S��o T��o U��o V��o X��o Y��o Z��o [��o \��o ]��o m��o }��o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o � 
o ���o � o � (o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o ���o � (o � (o � (o ���o ���o � o ���o��o��o��o��o
��o��o��o��o��o��o��o��o��o��o��o��o��o��o ��o"��o# 
o% 
o' 
o*��o,��o.��o0��o2��o4��o6��o8��o;��o=��o?��oA��oB��oC��oD��oE��oF��oH��oI 
ob��of��oh��oj��ok 
on��op��or��ou��o{��o|��o���o���o���o���o���  9� 	�0  	�p ��p ��p ��p ��p $��p 7��p 9��p :��p ;��p <��p =��p @��p D��p `��p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p ���p��p#��p%��p'��p5��p7��p9��p:��p<��p>��pA��pB��pC��pD��pI��pk��pm��po��pq��pt��p���p���p���p���p���q ��q ��q ��q ��q ��q ��q $��q &��q *��q -��q 2��q 4��q 7 
q 9 
q D��q F��q G��q H��q J��q P��q Q��q R��q S��q T��q U��q V��q X��q Y��q Z��q [��q \��q ]��q m��q }��q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q � 
q ���q � q � (q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q ���q � (q � (q � (q ���q ���q � q ���q��q��q��q��q
��q��q��q��q��q��q��q��q��q��q��q��q��q��q ��q"��q# 
q% 
q' 
q*��q,��q.��q0��q2��q4��q6��q8��q;��q=��q?��qA��qB��qC��qD��qE��qF��qH��qI 
qb��qf��qh��qj��qk 
qn��qp��qr��qu��q{��q|��q���q���q���q���q���r ��r ��r ��r ��r $��r 7��r 9��r :��r ;��r <��r =��r @��r D��r `��r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r ���r��r#��r%��r'��r5��r7��r9��r:��r<��r>��rA��rB��rC��rD��rI��rk��rm��ro��rq��rt��r���r���r���r���r���s 7��s 9��s :��s <��s Y��s Z��s [��s \��s ���s ���s ���s ���s ���s#��s%��s'��s5��s6��s7��s8��s9��sI��sk��sm��sn��so��sp��sq��sr��st��su��t ��t ��t ��t ��t ��t ��t $�tt &��t *��t -��t 2��t 4��t D��t F��t G��t H��t J��t P��t Q��t R��t S��t T��t U��t V��t X��t Y��t Z��t [��t \��t ]��t m��t }��t ��tt ��tt ��tt ��tt ��tt ��tt ��tt ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t � t ���t � t � 2t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ��tt ���t ��tt ���t ��tt ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t ���t � 2t � 2t � 2t ���t ���t � t ���t��t��t��t��t
��t��t��t��t��t��t��t��t��t��t��t��t��t��t ��t"��t*��t,��t.��t0��t2��t4��t6��t8��t;��t=��t?��tA�ttB��tC�ttD��tE��tF��tH��tb��tf��th��tj��tn��tp��tr��tu��t{��t|��t���t���t���t���t���u ��u ��u ��u ��u $��u -��u 7��u 9��u :��u ;��u <��u =��u @��u D��u F��u G��u H��u J��u R��u T��u U��u `��u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u ���u��u��u��u��u��u��u��u#��u%��u'��u(��u5��u7��u9��u:��u<��u>��uA��uB��uC��uD��uF��uI��ub��uk��um��uo��uq��ut��u���u���u���u���u���{ 7��{ 9��{ :��{ <��{ ���{#��{%��{'��{5��{7��{9��{I��{t��{u��{{��{���{���{���{���{���{���{��{!��{#��{%��{)��{Q��{S��{U��{k��{m��{o��{q��{t��{{��| 7��| 9��| :��| <��| ���|#��|%��|'��|5��|7��|9��|I��|t��|u��|{��|���|���|���|���|���|���|��|!��|#��|%��|)��|Q��|S��|U��|k��|m��|o��|q��|t��||��~ $��~ -��~ D��~ F��~ G��~ H��~ J��~ P��~ Q��~ R��~ S��~ T��~ U��~ V��~ X��~ Y��~ Z��~ [��~ \��~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~ ���~��~��~��~
��~��~��~��~��~��~��~��~��~��~ ��~"��~*��~,��~.��~0��~2��~4��~6��~8��~A��~B��~C��~D��~F��~H��~b��~e��~l��~|��~}��~~��~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~���~��~��~��~
��~��~��~��~��~��~��~��~��~��~��~ ��~"��~$��~&��~(��~*��~,��~.��~0��~2��~5��~7��~9��~:��~;��~<��~=��~>��~@��~B��~D��~F��~H��~J��~L��~N��~P��~R��~T��~V��~X��~Z��~\��~^��~b��~f��~h��~j��~n��~p��~r��~u�� $�� -�� D�� F�� G�� H�� J�� P�� Q�� R�� S�� T�� U�� V�� X�� Y�� Z�� [�� \�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���������
�������������������� ��"��*��,��.��0��2��4��6��8��A��B��C��D��F��H��b��e��l��|��}��~�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
���������������������� ��"��$��&��(��*��,��.��0��2��5��7��9��:��;��<��=��>��@��B��D��F��H��J��L��N��P��R��T��V��X��Z��\��^��b��f��h��j��n��p��r��u��� 7��� 9��� :��� <��� Y��� Z��� \��� ���� ���� ����#���%���'���5���6���7���8���9���I���t���u���x���{�������������������������������������������������������������������������!���"���#���$���%���&���)���*���+���,���-���.���6���7���Q���R���S���T���U���V���W���X���k���m���n���o���p���q���r���t���u��� $��� -��� D��� F��� G��� H��� J��� P��� Q��� R��� S��� T��� U��� V��� X��� Y��� Z��� [��� \��� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� �������������
������������������������������ ���"���*���,���.���0���2���4���6���8���A���B���C���D���F���H���b���e���l���|���}���~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��������������������������������� ���"���$���&���(���*���,���.���0���2���5���7���9���:���;���<���=���>���@���B���D���F���H���J���L���N���P���R���T���V���X���Z���\���^���b���f���h���j���n���p���r���u��� $��� -��� D��� F��� G��� H��� J��� P��� Q��� R��� S��� T��� U��� V��� X��� Y��� Z��� [��� \��� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� �������������
������������������������������ ���"���*���,���.���0���2���4���6���8���A���B���C���D���F���H���b���e���l���|���}���~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��������������������������������� ���"���$���&���(���*���,���.���0���2���5���7���9���:���;���<���=���>���@���B���D���F���H���J���L���N���P���R���T���V���X���Z���\���^���b���f���h���j���n���p���r���u��� 7��� 9��� :��� <��� Y��� Z��� \��� ���� ���� ����#���%���'���5���6���7���8���9���I���t���u���x���{�������������������������������������������������������������������������!���"���#���$���%���&���)���*���+���,���-���.���6���7���Q���R���S���T���U���V���W���X���k���m���n���o���p���q���r���t���u��� "��� 7��� 9��� :��� <��� Y��� Z��� \��� ���� ���� ����#���%���'���5���6���7���8���9���I���t���u���x���{�������������������������������������������������������������������������!���"���#���$���%���&���)���*���+���,���-���.���6���7���Q���R���S���T���U���V���W���X���k���m���n���o���p���q���r���t���u��� 7��� 9��� :��� <��� ����#���%���'���5���7���9���I���t���u���{������������������������������!���#���%���)���Q���S���U���k���m���o���q���t��� 7��� 9��� :��� <��� ����#���%���'���5���7���9���I���t���u���{������������������������������!���#���%���)���Q���S���U���k���m���o���q���t��� $��� -��� D��� F��� G��� H��� J��� M (� P��� Q��� R��� S��� T��� U��� V��� X��� Y��� Z��� [��� \��� ]��� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� � � ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� � � � � � � ���� ���� �������������
������������������������������ ���"���*���,���.���0���2���4���6���8���;���=���?���A���B���C���D���F���H���a �b���e���l���v���|���}���~��������������������������������������������������������������������������������������� �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� �� (�������������������������������
������������������������������ ���"���$���&���(���*���,���.���0���2���5���7���9���:���;���<���=���>���@���B���D���F���H���J���L���N���P���R���T���V���X���Z���\���^���b���f���h���j���n���p���r���u��� $��� -��� D��� F��� G��� H��� J��� M (� P��� Q��� R��� S��� T��� U��� V��� X��� Y��� Z��� [��� \��� ]��� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� � � ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� � � � � � � ���� ���� �������������
������������������������������ ���"���*���,���.���0���2���4���6���8���;���=���?���A���B���C���D���F���H���a �b���e���l���v���|���}���~��������������������������������������������������������������������������������������� �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� �� (�������������������������������
������������������������������ ���"���$���&���(���*���,���.���0���2���5���7���9���:���;���<���=���>���@���B���D���F���H���J���L���N���P���R���T���V���X���Z���\���^���b���f���h���j���n���p���r���u��� ��� ��� ��� $��� -��� D��� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� ���� � 
� � � � (� ���� ���� ���� ���� ���� ���� ���� � (� � (� � (� ���� � ����(���A���B���C���D��������������             ! D        x        �        �        �       
       )      	 N       �       JO       �  	   B    	   f  	   �  	  & �  	   �  	   �  	    	 	 2  	  <\  	  ��  	  4� C o p y r i g h t   2 0 1 1 - 2 0 1 6   S e v e r i n   M e y e r  Copyright 2011-2016 Severin Meyer  X o l o n i u m  Xolonium  R e g u l a r  Regular  X o l o n i u m   4 . 1   1 6 1 1 2 2  Xolonium 4.1 161122  X o l o n i u m  Xolonium  V e r s i o n   4 . 1    Version 4.1   X o l o n i u m  Xolonium  S e v e r i n   M e y e r  Severin Meyer  h t t p : / / g i t l a b . c o m / s e v / x o l o n i u m  http://gitlab.com/sev/xolonium  L i c e n s e d   u n d e r   t h e   S I L   O p e n   F o n t   L i c e n s e   1 . 1 ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D  Licensed under the SIL Open Font License 1.1, WITHOUT WARRANTY OF ANY KIND  h t t p : / / s c r i p t s . s i l . o r g / O F L  http://scripts.sil.org/OFL           �� F                    D           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � �	
 � � �  � � !"#$%&'()*+,-./ � �0123456789:;<=> � �?@ABCDEFGHIJKL � �MNOPQRSTUV � � � �WXYZ[\]^_`abcdefghijkl �mnop � � �qrstuvwxyz{ � �| � � � � � �}~�������������������������������������������������������� ������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~���������������������������������� � �� � � �� � � �� � � � �� ��� � ��� �������������������������������������������� � ���������� � � � � ��� � �� � � � � � �������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKuni00A0uni00ADuni00B2uni00B3uni00B9AmacronamacronAbreveabreveAogonekaogonekCcircumflexccircumflex
Cdotaccent
cdotaccentDcarondcaronDcroatEmacronemacronEbreveebreve
Edotaccent
edotaccentEogonekeogonekEcaronecaronGcircumflexgcircumflex
Gdotaccent
gdotaccentuni0122uni0123HcircumflexhcircumflexHbarhbarItildeitildeImacronimacronIbreveibreveIogonekiogonekIJijJcircumflexjcircumflexuni0136uni0137kgreenlandicLacutelacuteuni013Buni013CLcaronlcaronLdotldotNacutenacuteuni0145uni0146NcaronncaronEngengOmacronomacronObreveobreveOhungarumlautohungarumlautRacuteracuteuni0156uni0157RcaronrcaronSacutesacuteScircumflexscircumflexuni0162uni0163TcarontcaronTbartbarUtildeutildeUmacronumacronUbreveubreveUringuringUhungarumlautuhungarumlautUogonekuogonekWcircumflexwcircumflexYcircumflexycircumflexZacutezacute
Zdotaccent
zdotaccent
Aringacute
aringacuteAEacuteaeacuteOslashacuteoslashacuteuni0218uni0219uni021Auni021Buni0237uni02C9uni037Auni037Etonosdieresistonos
Alphatonos	anoteleiaEpsilontonosEtatonos	IotatonosOmicrontonosUpsilontonos
OmegatonosiotadieresistonosAlphaBetaGammauni0394EpsilonZetaEtaThetaIotaKappaLambdaMuNuXiOmicronPiRhoSigmaTauUpsilonPhiChiPsiuni03A9IotadieresisUpsilondieresis
alphatonosepsilontonosetatonos	iotatonosupsilondieresistonosalphabetagammadeltaepsilonzetaetathetaiotakappalambdauni03BCnuxiomicronrhosigma1sigmatauupsilonphichipsiomegaiotadieresisupsilondieresisomicrontonosupsilontonos
omegatonosuni0400uni0401uni0402uni0403uni0404uni0405uni0406uni0407uni0408uni0409uni040Auni040Buni040Cuni040Duni040Euni040Funi0410uni0411uni0412uni0413uni0414uni0415uni0416uni0417uni0418uni0419uni041Auni041Buni041Cuni041Duni041Euni041Funi0420uni0421uni0422uni0423uni0424uni0425uni0426uni0427uni0428uni0429uni042Auni042Buni042Cuni042Duni042Euni042Funi0430uni0431uni0432uni0433uni0434uni0435uni0436uni0437uni0438uni0439uni043Auni043Buni043Cuni043Duni043Euni043Funi0440uni0441uni0442uni0443uni0444uni0445uni0446uni0447uni0448uni0449uni044Auni044Buni044Cuni044Duni044Euni044Funi0450uni0451uni0452uni0453uni0454uni0455uni0456uni0457uni0458uni0459uni045Auni045Buni045Cuni045Duni045Euni045Funi0462uni0463uni0472uni0473uni0474uni0475uni0490uni0491uni0492uni0493uni0494uni0495uni0496uni0497uni0498uni0499uni049Auni049Buni049Cuni049Duni049Euni049Funi04A0uni04A1uni04A2uni04A3uni04A4uni04A5uni04A6uni04A7uni04A8uni04A9uni04AAuni04ABuni04ACuni04ADuni04AEuni04AFuni04B0uni04B1uni04B2uni04B3uni04B4uni04B5uni04B6uni04B7uni04B8uni04B9uni04BAuni04BBuni04BCuni04BDuni04C0uni04C1uni04C2uni04CBuni04CCuni04CFuni04D0uni04D1uni04D2uni04D3uni04D4uni04D5uni04D6uni04D7uni04D8uni04D9uni04DCuni04DDuni04DEuni04DFuni04E0uni04E1uni04E2uni04E3uni04E4uni04E5uni04E6uni04E7uni04E8uni04E9uni04EEuni04EFuni04F0uni04F1uni04F2uni04F3uni04F4uni04F5uni04F6uni04F7uni04F8uni04F9uni0524uni0525uni1E02uni1E03uni1E0Auni1E0Buni1E1Euni1E1Funi1E40uni1E41uni1E56uni1E57uni1E60uni1E61uni1E6Auni1E6BWgravewgraveWacutewacute	Wdieresis	wdieresisuni1E9EYgraveygraveuni2007uni2008uni2009uni200A
figuredashuni2015quotereverseduni201Funi202Fminuteseconduni203Duni203Euni2070uni2074uni2075uni2076uni2077uni2078uni2079uni207Auni207Buni207Cuni207Duni207Euni207Funi2080uni2081uni2082uni2083uni2084uni2085uni2086uni2087uni2088uni2089uni208Auni208Buni208Cuni208Duni208Elirauni20A6uni20A9dongEurouni20AFuni20B1uni20B9uni20BAuni20BDuni20BFuni2105uni2113uni2116uni2117	estimated	oneeighththreeeighthsfiveeighthsseveneighths	arrowleftarrowup
arrowright	arrowdownuni2215uni2219
orthogonaluni2770uni2771uni2772uni2773uniEFFDuniFB00uniFB01uniFB02uniFB03uniFB04
Eng.loclSM
space.fracuni00A0.frac	zero.numrone.numrtwo.numr
three.numr	four.numr	five.numrsix.numr
seven.numr
eight.numr	nine.numr
slash.frac	zero.dnomone.dnomtwo.dnom
three.dnom	four.dnom	five.dnomsix.dnom
seven.dnom
eight.dnom	nine.dnom	zero.zeroone.pnum
three.pnum	four.pnum
seven.pnumcommaaccentcaroncommaaccentcommaaccentrotateJacutejacuteuni2316	filledbox
filledrectuni25AEuni25B0triagupuni25B6triagdnuni25C0uni25C6H18533uni25E2uni25E3uni25E4uni25E5uni2604uni2605uni2620uni2622uni2623uni2699uni269Buni26A0uni26A1uni26D4uni2747uni2748uni274Cuni2764uniF000u1F30Cu1F30Du1F30Eu1F30Fu1F47Du1F4A3u1F525u1F52Bu1F601u1F603u1F604u1F606u1F607u1F608u1F609u1F60Au1F60Eu1F610u1F612u1F615u1F618u1F61Bu1F61Du1F61Eu1F61Fu1F620u1F623u1F62Du1F62Eu1F632u1F634u1F635u1F680       ��               C                 
 � � DFLT cyrl *grek :latn J     ��          ��          ��      : 	ISM  :KSM  :LSM  :MOL  :NLD  :NSM  :ROM  :SKS  :SSM  :  ��      case kern sinf &                     & . 6     0     :     �    �        #�   ��  ��    R  % F F      F F F F  �     �                F F F F  %        ! > @ ^ ` a c m n y } � � �z{|}�������������     Q � � � � � � � � � � � � � � �,228>����������������������������������������������� � � �� b��e��l��  M (� (���  "�������� ������  ��b��e��l����� ���  ?��  M   M Z  Y�� [�� \�� ��� ���8��u��  M F  M   M 2  7�� 9�� :�� <�� ���#��%��'��5��7��9��I��k��m��o��q��t�� Z�� y�� t��u��{�� y�� ������ ��� Z�������� �  � < �  �  {�������� |�������� 	 �� �� �� �� ��{��|��������  Q  
         > ? A J M T ^ r � � � � � � � � � �4Y_`bcdeltuy{��������������	
'()*+,]^{|���� F   � , "                                                                        ������  ������  �t    ����        ��        ����    ������            ��                                       ��      ����                    ��  ��  ��                ��                  ��  ��      ��    ��  ��  ������      ��                                        ��  ��  �� 
          ��    ��  ����  �� (  
��  ������      ����        ��  ��  ��  ��                ��                  ��          ��      ��          ����    ��                    ����        ��    ��                                                                    ����                                      
��        ����         ������  ������  �~    ����        ��        ����    ������        ��        ��  ������                                                ��      ��            ��        ��       
 
          ��                  ��  ��  ��  ��                ��                  ������      ������  ��    
      ��    ��������  �� 2  ��  ����������������  ��        ��    ����      ��                                        ������  �� 
          ��    ��������  �� (  
��  ����  ����������  �t����  ��            ��    ��������  �� 2  ��  ����  ����������      ����                                     ��      ������              ��  ��  ��  ��      ��        ��          ��      ��                ��  ��  ��  ��      ��        ��          ��      ��  ��      ��      ��                                                                    ��  ��  ��                                    ����        ��      ��            ��    ��    ��  ��     ��  ����  ����������            ��  ��  ��      ��        ��        ��      ��                      ��  ��  ��                                                ��      ��            ��    ��    ��          ��  ������      ����  ��      ��            ��    ��    ��              ������      ����            ��  ��  ��      ��        ��          ��                  ��      ��            ��        ��       (  
��      ��                      ��  ��  ��                ��          ��                            ��  ��  ��      ��                    ��      ����                      
                                                             2   (  2                                                                                                                        ��  ��  ��      ��                                                  ��  ��  ��      ����      ��        ��      ��            ��      ����  ��������    ��                                        ��      ��            ��    ��    ��          ��  ����  ������  ��  ��      ����    ��������  ��    ��  ��        ��      ��                  ��  ��  ��  ��      ��        ��          ��      ����        ��      ����  ����������  ����  ��  ��        ��  ��  ��            ��        ��  ����������  ��    ��  ��        ��                          ��  ��  ��  ��      ��        ��        ����    ��            �    
 
                       $ $  % %  & &  ' '  ( (  ) )  * *  - -  . . 	 / / 
 2 2  3 3  4 4  6 6  7 7  8 8  9 9  : :  ; ; 	 < <  = =  > >  ? ?  A A  D D  E E  F F  H H  I I  J J  K K  N N $ P Q  R S  T T  U U ' V V ( W W  X X  Y Y ) Z Z * [ [ $ \ \ ) ] ] + ^ ^  m m  r r  } }  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � � # � �   � � " � � ! � �  � �  � �  � �  � � ) � �  � � ) � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � � ! � � ! � � ! � �  � �  � �  � � " � � 	 � � $ � � 
 � � 
 � � 
    
 %  

           ' '   (  (    (!! "" (## $$ %% '' )) ** ++ ,, -- .. // 00 11 22 33 44 55 66 *77 88 )99 :: ;; +<< == +>> ?? +AA BB CC DD EE FF GG HH (II JJ __ `` aa cc dd ff gg hh ii jj (kk ll mm nn *oo pp *qq rr *ss tt uu ){| ~ &�� �� &�� �� �� �� �� ��   �    
 
                    " "  $ $  & &  * *  - -  2 2  4 4  7 7  8 8  9 9  : :  ; ; 	 < < 
 = =  ? ?  @ @  A A  D D  F H  J J  P Q  R R  S S ! T T  U U  V V  X X  Y Y  Z Z  [ [  \ \  ] ]   ` `  m m  r r  } }  � �  � �  � �  � �  � �  � �  � � 
 � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �  � �     

                 "" ## %% '' (( )) ** ++ ,, -- .. // 00 11 22 33 44 55 66 77 
88 99 
:: ;;  << ==  >> ??  AA BB CC DD EE FF HH II bb ff hh !jj kk mm nn oo pp qq rr tt 
uu {| ~ �� �� �� �� �� �� ��   5     
            $ * 
 - /  2 4  6 ?  A A ! D F " H K % N N ) P ^ * m m 9 r r : } } ; � � < � � I � � J � � O � � g � � m � � � � � � � � � � � � � � � � � � � � � �  � � � �

 � � � �% �'' �)? �AJ �_a �cd �fu �{| �~� �������������	 	V   ��                                                            ������  ���t  ��  ������                            ������        ��      ��                             ��                  ��                       ��  ����         ����    ���������� 2������������  ����        ����                                    ����      ��������      ��              ��          ����                        ��       
  ��          ��                          ��       
  ��          �t  ����          ����    ���������� 2������������        ��                  ��                             ����  ����  ��  ������                                    ����                                            ��  ����          ��                                    ����          ��            ��          ��    ��          ��      ��  ������ ��  ��    ��  ����      ����������    ��  ������      ��  ��  ��              ����        ����            ��                      ����  ��    ��                                      ����          ��                                    ����        ��                                  
  2 2                                                                                               ����  ��    ��    ����        ��    ��        ����  ���t  ��  ������  ����        ��    ��              ����        ��              ��                      ����        ����            ��          ��                ��      ��  ������    ��������          ��          ��      ��  ����        ��    ��  J                > >  ? ?  ^ ^  m m  } } VV YY ZZ [[ __ 	aa bb dd ee ff gg 
ii kk ll oo pp rr ss tt uu 	vv ww xx {{ 	|| }} ~~  �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� {| ~ �� �� �� �� �� �� ��   E    
 
                    ? ?  @ @  A A  ` `  m m  r r  } } VV ZZ ^^ aa bb ee gg 	ii ll oo pp ss tt uu vv ww xx {{ || 
}} ~~  �� �� 
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� {| ~ �� �� �� �� �� �� ��              > ?  ^ ^  m m 	 } } 
VV Y[ __ ab dg ii kl op rx {� "�� /{| E~� G�� J�� M�� N�� P�� Q �   �� ( %                                                                                          ����  ����                ��      ��                                  ��      ��            ��                ����            ��                  ������  ��        ��  ��  ��  ��������������  ��         ��            ��      ��                                              ��                    ����  ����          ��  ������������������  ��    ��    ��                ����  ����                ��      ��                                    ��                ��                  ����         ��  ����  ����    ����      ��                              ��    ��    ��  ��          ����   ������ ����    ����  ����������������������  �� 2  ��  ����            ��      ��                        ��    ��    ��    ��  ��                      ��  ��                                                    ����    ����      ��                        ��    ��    ��    ��  ��                  ��              ����                  ����    ��   ��  ����  ����    ������    ��        ������                ����  ����  �����t����            ��      ��                        ��    ��    ��        ��      ��      ������    ��          ����                ����  ����    ��������            ��    ������  ��                                        ��            ��      ����  ����          ��    ��      ��           
  ��          ��      ��    ����������              ��      ��                ��        ��      ��    ������������            ��      ��                ��        ��    ����      ��                              ��    ��    ��  ��                ��      ��                        ��  ����    ��    ��  ��        ��  ��  ��  ��������������      ��    ����    ��      ����    ����  ��  ��      ������    ��            ��                ����  ����  ����������    ��    ����      ��                        ��  ����    ��    ��  ��        ��      ��      ��            ��        ��              ��    ��������    ��    ����      ��                                    ��        ��        ��      ��      ��                                    ����    ����  ��  ����    ����      ��            ��                ��    ��    ��  ����      ��    ����    ����������              ��  ��������          ��  ��        ��    ����      ��                              ��          ��  ����             2       2           
                           Z                  ��      ����  ����          ��    ����    ��        ��   ��                  ����    ��          ����                ����    ��  ����������            ��      ��            ��                  ��    ��    ��������      ����    ������  �t��    ����  �������~��������������  ��    ��  ��              ��    ����������              ��      ��                    ��            ��    ������                      ��    ��                        ��    ����      ��                            ����          ����    ��  �    
 
                       > >  ? ?  A A  ^ ^  m m  r r  } } �� �� �� 	�� �� 
�� �� �� �� �� 	�� �� 
�� �� 	�� �� �� �� �� �� �� �� �� 	�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��  �� �� �� �� �� ��    	 ! 	 		 


  " #   " #         	         !! 	"" ## $$$ %% $&& '' "(( #)) ** ++ ,, .. // 00 11 %22 44 55 77 99 :: ;; << == >> ?? @@ AA BB CC DD EE FF GG &HH 'JJ LL MM NN OO PP QQ 	RR SS 	TT UU 	VV XX YY 	ZZ \\ ]] ^^ {| ~ �� �� �� �� �� �� ��   �    
 
                    " "  ? ?  @ @  A A  ` `  m m  r r  } } �� �� �� �� 	�� �� 
�� �� �� �� �� 	�� �� �� �� 
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��       !

          !           !! "" ## "$$ %% "&& '' (( )) ** ++ ,, -- .. 00 11 #22 $44 55 66 77 99 :: ;; << == >> @@ AA BB CC DD EE FF GG HH JJ LL MM NN OO PP QQ 
RR SS 
TT UU 
VV WW XX ZZ \\ ^^ {| ~ �� �� �� �� �� �� ��   (     
            > ? 
 A A  ^ ^  m m  r r  } } �� �� �� �� �� %�� &�� '�� .�� 0�� 3�� Y�� Z a, c.2 �45 �77 �9H �JJ �LV �XZ �\^ �{| �~� ��� ��� ��� ��� ��� �    
 �\ DFLT cyrl grek latn  >   : 	ISM  zKSM  zLSM  zMOL  dNLD  NNSM  zROM  dSKS  zSSM  z  ��         	  ��          	  ��          	  ��          	 
aalt >frac Dlocl zlocl �locl �pnum �sinf �subs �sups �zero �            	 
                     "                %    !        $ & N x � � �(666666666Pz��������������6Dt��        ��GHIJ    #$     
 (              �   -              �   M       
    - M        GHIJ   #$       �           J  �          0�         " ,                         ��        �         �  T  �           8�       �"  ��            �                x�-          j  `              F      !  ��         "�          :      #        ��         
 ��    b       �           ����             GDSC            
      ���Ӷ���   ����Ӷ��                                3YY;�  Y`           GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC            ,      ��������τ�   �������϶���   �������Ŷ���   ����׶��   �������ض���   �������ׄ�������������Ҷ   ����׶��   ���������Ӷ�          d                                                       	      
         &      *      3YY;�  �  PR�  QYYY0�  P�  QV�  �  �  �  �  YYY0�  P�  QV�  �  PQY`      [gd_scene load_steps=5 format=2]

[ext_resource path="res://antenna.png" type="Texture" id=1]
[ext_resource path="res://mobs.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 28.0547, 33.3333 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 22.541, 25 )

[node name="mobs" type="RigidBody2D" groups=[
"mobz",
]]
collision_layer = 0
gravity_scale = 0.0
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.75, 0.75 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
scale = Vector2( 0.75, 0.75 )
shape = SubResource( 1 )

[node name="Area2D" type="Area2D" parent="."]
position = Vector2( -2.5, 2.5 )
collision_layer = 0

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( 2.5, -2.5 )
shape = SubResource( 2 )

[connection signal="area_entered" from="Area2D" to="." method="_on_Area2D_area_entered"]
[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
      GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�͛yPUG��?w�^ ��'���(�O��f��"3ƥ"����*�i\"5�gF'�fb��b|��I7RJD+�#e�S�y�	���,�EY�y�9�{����Vu���_���ݧ��}4�$1��h4��L�i@����~H�4d��A/��?��?�fVX���4x%������YRl�,�	�庡�o�����[�� �?�̴���Wi{� Z�[����;�c7t��� �+��h
�h
 u�[J�r�f(d;ŀ�� �4�������Z3�ebSg��<+�h���{�.8rd�+0�7 ��ey�)���'�z#����U�~@p��n ��&���ي�v�$yq��1a�^���6�i�B`�N�'n��#� �O���Jr1g����xq�+.۾8���� &��8��-#aK�yDq3���A�5�Z  s�f���ͺ#�0�CB������A�����[�77����M4~{�����V{I�L �deݑS,ݹ�̍���,-;y* :~���D{I�� &�o��5_�^��o����D{s�������͟���'zIv4�O���� ����:���<z�@[K�R����3���|�{' �M�c���g��w�$��ߢ3���.�m{J�����} :�o;$7ic_n�X�% ���0) <B���XI�ժr�Z�+R@x�dz>L�K������(���%��,��f�`0x�Y�###���j)''G-��ɑ������Ⱦ�ey��A�/88��RMM�TSS#���y�k�A:|��TWW']�~]�>}����*]�~]����>l�|In������UTT��>g-��a�֭$$�^m4ٿ?����F غu�ӶC��v�F��K����BV�C�v@VV)))O-�Sx��U`0�_�I�Ć رc�߾�C���;�[8�<Ǐ ##��ӧ�(z<�ݠ>�����C���1D��)nݺEuu������֭[�xΕynvG�w�N`2������< ����T�@��D�$b'O%v�T$I�����d��<�5��6r�!X�\�X�h>b�<X֏��rR�����qkk+G���ח���K 8z�(����dT�<��y��\wx!-Y��)�S�����o*��n��''e{wթ�QVEYY���GD1v��N��yD��픕��孴��y��M6r]�_������5���N�\���ٌ=Dl`�+:`���lʆ� W�|��j�RZZ
��_-F�բ�j���� ���b�Zmy�׀uؿ�&�Π>�3f�`ƌ.�w� �^��͛�j� "*]r0o "-? z�x[��W���Ѐ�їI����I�Y�}ihh��ի}�& ���و��k�???i���n	U���;T��űh�"%��މN��9�����j����d6mڄ��{��1 &�?���_@ &�َ`ɒ%lڴ���d��M�~�>C�����`�ʕ+5v�ڪ:`˖-ܹsǁxժUDEE!�K.NB�ɿ'����-���MUUEEEdee���S������EQQUUUdgg+U~����F�yq?�1cưp�c��s�[�lQ����Y�v-v�F#Jv!P\��G�>9�0? 	vj��l�z��n�&I]O����Epp0��� ����>9�� ^Lph ^�h4���+�WEGGk׮��Y��:���b�X(,,t���Dff��e��ȌE��t.��:�L��Q�s��-Ǝ��h�уFn�=���8{�G1��;�_>F��w&M���S6?���Q�� ���qqq�
�X,t��Q��M��N������$9Y�	_�6{1��f�:rĀbf���,X� ���{�=|�~q8�`�BCC=�RG�`�lj��B`  &Lp�=x� ����4�MSc�����(
�#w�څ�bq*�d0�k�Xɾ����h4r�7Ξ������Ƃ�h$77w�|C|���W���]���U0%�Y?�R��ɪ		L��j�R[[�P ,,L�ظ�?l\��6$2kkk�Z�L�g��0��: �(�襓`�HJJ�j��j��+
(�(���o����X�F����(�˚5k�-���, b�Zٱc%%% L�8��|�J޶mW�\!??�������!�K���s��E5��= �oi卓������Pf���*zzDw�?>+W�T��۶m����'NPRR���O�?�;���}��M���r�to�����X,N����T��έ����ӃN�#//����:�VK^^����ٳGu�+ttw����ܼ͛y�#�\:`ʔ)�?�U�JKKy���M7 (((p�3##���(
��0�L���;õk��z�-\:�ҥK�p�B"##�r���0��6�_>Æ�l6�u���?���j���޽ˡC��t�K��޴�k��U���Mee%gΜaΜ9;����;�/_Nvv6���J�IEWW'O������=�y�b��3g���V�Z��4u<Q�������|>⺻�S�制�6���ˡC�HIIa��ဘ�.\��Ç�W��/ ���a��=�bO?�ͼ(7�< � [l���Gzz���KKK#))����޽KEE�Mdd$999\�|�n�'O�dϞ=}8�Lځ��Sz`���^ ����}FN�#>��#X�l��'3z���K��x�b���+nܸ���G�Ÿq�;w.z��YT�%$I������rg�+x���Bo^1|!�d�dg�_Y�#�v���ky��w=V�#222>������9w����]����������� :�����q��Mg��[���Ν����3o^�����Lhmmmv�ZZZ����K��nD��V:�M᲍ l~PH�֭���˥��P�켿R��g����Rxx��[Rzz�TWW�QJOOw�+<<\*..��K�=fRhh�T^^.�[�NiW�~��d�=A��_�;;;پ}{��7o�����۷���	p^��ƀ8�0�L���+�?S�999h4��f?�K�k���j�������{������<�i��Eټ��K5�õ+��V@cc�24�:x�{���a޼yv[}-�g���.������/?�u:t����
]�^�e��u�[�$���l_�5���(�A��е�7 Shz__��Ik�-�<��s��{v��޽{<~��� �6��<jT��=�3 � ۀ���̽`��u4o&n~�4�8�"��4��%O�Xe9�2%�	����N	��ٳ\�pA��7P�̊X����E���X�#����{7w�ܠ�>�$����>p�E�2�1cưa�.��IIIܿ���:/��)���Q�_��M9��^�K� q��,�G�*s�Ť䱶o�>�ܾ}�+V(�Q��<����ÿE��@��C�8��1�A?=�/��/qtt4AAA���8<t@?Q�Z�_f���"(:DD�ر~}�B+;`��5p�w��~�w�g����lz��$����Qn;��x���W����>�`F|w[���/C�7�&�e���G���������{;�>��/�y�KUMr�Kr�3y]��Y�v#�j����yۣ��L��u�y������φ��%*    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/spaceship.png-a8aee2801e3b8c6d30c4bff2d748cbe1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://spaceship.png"
dest_files=[ "res://.import/spaceship.png-a8aee2801e3b8c6d30c4bff2d748cbe1.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [remap]

path="res://CanvasLayer.gdc"
          [remap]

path="res://Main.gdc"
 [remap]

path="res://Player.gdc"
               [remap]

path="res://global.gdc"
               [remap]

path="res://mobs.gdc"
 �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name      
   Shooter-2D     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     autoload/global         *res://global.gd   display/window/size/width      �     display/window/size/height      �     input/ui_leftP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/ui_rightP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/move_right8               deadzone      ?      events            input/move_left8               deadzone      ?      events         )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres                