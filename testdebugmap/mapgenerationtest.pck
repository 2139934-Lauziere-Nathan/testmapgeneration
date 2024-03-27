GDPC                �                                                                      )   X   res://.godot/exported/133200997/export-0effcf6ae0429515e66a948aa3b1c429-Up_R_wall.scn   �F            2P�v� �������    X   res://.godot/exported/133200997/export-179a456b8b29d5f735a9422eb8dbbe04-DW_R_wall.scn    (      S      ����hE*�|�O	�    T   res://.godot/exported/133200997/export-1c2e771c003a2513e8243d2988123264-L_wall.scn  `/      X      d�Q�9(��0�~�JUv    P   res://.godot/exported/133200997/export-1de74ce3e8a743f2833964b179c3e3a5-1.scn   �      M      ⑓����Nvv5��    P   res://.godot/exported/133200997/export-21056518fdd19514c15e33826ca8baef-2.scn          H      rߪ?�����df���=    T   res://.godot/exported/133200997/export-51b0aace6b71b428f79a51b2e6a03ac7-R_wall.scn  �8            �C�5�Xߩ��,����    T   res://.godot/exported/133200997/export-5232a7555b2855dafac48db38d13219d-node_2d.scn       C      `&QwY�h��A��I��O    X   res://.godot/exported/133200997/export-6d0c79911f02239f673b4223fc7c1d51-Up_L_wall.scn   �?            M��u��P˺�prv�    P   res://.godot/exported/133200997/export-7767f2b9093c00c327c6c58fb4ab896c-main.scn`             o��Q��BZ���l    T   res://.godot/exported/133200997/export-8bbc98fe05aed28a0e530b80bafddf07-corridor.scn�      '      )�FGK��g�춮 �<�    P   res://.godot/exported/133200997/export-9c86d7102523b220aaf9793c39f79ce4-3.scn   p      H      ������O�i��,�    X   res://.godot/exported/133200997/export-ae346e415b5ed2a5b9084ab90ccbd4a7-empty_room.scn  �M      8      !��>~��%E�F�i}:    X   res://.godot/exported/133200997/export-d4954148b4a0498b3381351f77b8dad4-platforme.scn   �      �      q�� ¿�����/_�S    T   res://.godot/exported/133200997/export-e60c1a5bee11c68840db09a93efe187e-coeur.scn   �      �      �7��7Z��֣�#��    X   res://.godot/exported/133200997/export-f7c484635276132ba4c4401f42f3556c-DW_L_wall.scn   p       �      4o��<�^¾�`e�    ,   res://.godot/global_script_class_cache.cfg  �i             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�U      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �m      �      ��4{e�7.���JM	    $   res://debugPerso/CharacterBody2D.gd               ��?��m�+��S�    $   res://debugPerso/node_2d.tscn.remap @c      d       ���E�,�U��fc
b       res://icon.svg  �i      �      C��=U���^Qu��U3       res://icon.svg.import   pb      �       ���)��j e`�0��        res://main/scene/main.tscn.remap�c      a       ~����q���,��       res://main/script/main.gd   `
      B      1�G�ą��~��H�~6    <   res://map/contenusSalle/platforme/scene/platforme.tscn.remap d      f       ���q��@Vf�b;    ,   res://map/corridor/scene/corridor.tscn.remap�d      e       ��*T/�X���~e�OY    ,   res://map/corridor/script/StaticBody2D11.gd �      �       #qR6��y�Ð�^        res://map/rndsale/1.tscn.remap   e      ^       <\�]�a�l0g�=?        res://map/rndsale/2.tscn.remap  `e      ^       �*^[�Kn��X,H�"        res://map/rndsale/3.tscn.remap  �e      ^       v���]8}���        res://map/scene/coeur.tscn.remap f      b       ����{�?�D�f���       res://project.binarypp      �      �|�!��~�&�;FT�H    (   res://room/scene/empty_room.tscn.remap  0i      g       ��ZB�w�Խ�K�gi    ,   res://room/scene/wall/DW_L_wall.tscn.remap  �f      f       �EV�/@��a���    ,   res://room/scene/wall/DW_R_wall.tscn.remap   g      f       4�-y�8 �DX
��        res://room/scene/wall/L_wall.gd �6      �      ��)Q��˜3Y���    (   res://room/scene/wall/L_wall.tscn.remap pg      c       ���h��d#YIs�a5    (   res://room/scene/wall/R_wall.tscn.remap �g      c       /(	n��ފ�1��A    ,   res://room/scene/wall/Up_L_wall.tscn.remap  Ph      f       ZQ�_�������r    ,   res://room/scene/wall/Up_R_wall.tscn.remap  �h      f       /*S� ��$��}��    (   res://room/script/CollisionShape2D.gd    S      j      �W��(���}�B&��    extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -2000.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script $   res://debugPerso/CharacterBody2D.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_qd0ax �         local://PackedScene_dk606 �         RectangleShape2D             PackedScene          	         names "         perso    Node2D    CharacterBody2D    script 	   Sprite2D 	   position    scale    texture    CollisionShape2D    shape 	   Camera2D    	   variants                 
   ��5���
      >��#>                         node_count             nodes     -   ��������       ����                      ����                           ����                                      ����   	                 
   
   ����              conn_count              conns               node_paths              editable_instances              version             RSRC             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://main/script/main.gd ��������   PackedScene    res://debugPerso/node_2d.tscn ?e�E/5Y      local://PackedScene_d1pue K         PackedScene          	         names "         main    script    Node2D    perso 	   position    	   variants                          
    ��C ��C      node_count             nodes        ��������       ����                      ���                         conn_count              conns               node_paths              editable_instances              version             RSRCextends Node2D

 
# Called when the node enters the scene tree for the first time.
func _ready():
	var newlv = load("res://map/scene/coeur.tscn").instantiate()
	add_child(newlv)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_ecsks T         local://PackedScene_rlu5s �         RectangleShape2D       
     'C  �A         PackedScene          	         names "   	   
   Platforme    Node2D    StaticBody2D    CollisionShape2D 	   position    shape 	   Sprite2D    scale    texture    	   variants       
      �              
     �?    
     �?   >                node_count             nodes     &   ��������       ����                      ����                     ����                                  ����                               conn_count              conns               node_paths              editable_instances              version             RSRC           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_cs42w �          PackedScene          	         names "      	   Corridor    Node2D    	   variants              node_count             nodes        ��������       ����              conn_count              conns               node_paths              editable_instances              version             RSRC         extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene 7   res://map/contenusSalle/platforme/scene/platforme.tscn V:���7      local://PackedScene_wkc54 3         PackedScene          	         names "         Salle1    Node2D 
   Platforme 	   position    Platforme2    Platforme3    	   variants                 
    �bD  JC
     dC  �C
     D  �C      node_count             nodes     "   ��������       ����                ���                            ���                            ���                          conn_count              conns               node_paths              editable_instances              version             RSRC   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene 7   res://map/contenusSalle/platforme/scene/platforme.tscn V:���7      local://PackedScene_5de7m 3         PackedScene          	         names "         2    Node2D 
   Platforme 	   position    Platforme2    Platforme3    	   variants                 
    @iD  �C
    �D  �C
    ��C  )C      node_count             nodes     "   ��������       ����                ���                            ���                            ���                          conn_count              conns               node_paths              editable_instances              version             RSRC        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene 7   res://map/contenusSalle/platforme/scene/platforme.tscn V:���7      local://PackedScene_d1rtp 3         PackedScene          	         names "         3    Node2D 
   Platforme 	   position    Platforme2    Platforme3    	   variants                 
    @/D �D
    ��C  �C
    �D  (C      node_count             nodes     "   ��������       ����                ���                            ���                            ���                          conn_count              conns               node_paths              editable_instances              version             RSRC        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene !   res://room/scene/empty_room.tscn ����侳9      local://PackedScene_e7n1g          PackedScene          	         names "         Coeur    Node2D 
   emptyRoom 	   position    emptyRoom2    emptyRoom3    emptyRoom4    	   variants                 
         �B
         2�
     ��  2�
      E    
         ��      node_count             nodes     4   ��������       ����                ���                            ���                            ���                           ���                            ���                          conn_count              conns               node_paths              editable_instances              version             RSRC           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script     res://room/scene/wall/L_wall.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1   Script ,   res://map/corridor/script/StaticBody2D11.gd ��������      local://RectangleShape2D_nnycd $         local://RectangleShape2D_dfikp U         local://RectangleShape2D_y2lr0 �         local://PackedScene_oarfa �         RectangleShape2D       
   �?C  �B         RectangleShape2D       
     @C  �B         RectangleShape2D             PackedScene          	         names "         DwLWall    script    Node2D    StaticBody2D7 	   position    gravity_scale    RigidBody2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    StaticBody2D11    Area2D    _on_area_2d_body_entered    body_entered    	   variants                 
     A   @       
     �B �)D          
     �?   ?                  
    ��C �)D
     �C  *D         
      C  FD
     �A  ��               node_count             nodes     �   ��������       ����                            ����                                ����                          	   	   ����         
                              ����                                      ����                          	   	   ����         
                              ����                          ����      	      
              	   	   ����      	   
                              ����             
             ����                         conn_count             conns        
                              node_paths              editable_instances              version             RSRC             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script     res://room/scene/wall/L_wall.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_npwoy �         local://RectangleShape2D_rvi2o          local://RectangleShape2D_ct1dp C         local://PackedScene_aoeyw t         RectangleShape2D       
   ��?C  �B         RectangleShape2D       
     @C  �B         RectangleShape2D       
     �A  �A         PackedScene          	         names "         DwRWall    script    Node2D    StaticBody2D4 	   position    gravity_scale    RigidBody2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    StaticBody2D6    Area2D    _on_area_2d_body_entered    body_entered    	   variants                 
     A   @       
    �%D �)D          
     �?   ?         
    ��C   @
   :D �)D
    @D �)D
     XD  *D         
     (C  �B
     D  (D               node_count             nodes     �   ��������       ����                            ����                                ����                          	   	   ����         
                              ����                                ����                          	   	   ����      	   
                              ����                          ����      
                    	   	   ����      
   
                              ����             
             ����                         conn_count             conns        
                              node_paths              editable_instances              version             RSRC             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script     res://room/scene/wall/L_wall.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_xm0jl �         local://RectangleShape2D_defmy          local://RectangleShape2D_gcm1h C         local://PackedScene_2tyxm d         RectangleShape2D       
     �B  pC         RectangleShape2D       
     �B  (C         RectangleShape2D             PackedScene          	         names "         LWall 	   position    script    Node2D    StaticBody2D    gravity_scale    RigidBody2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    StaticBody2D5    Area2D     _on_static_body_2d_body_entered    body_entered    _on_area_2d_body_entered    	   variants       
     @�                     
     �A  D          
     �A  �B
      ?  �?         
     �A  �C         
      ?  �?
      �  `C               node_count             nodes     �   ��������       ����                                  ����                          ����                          	   	   ����         
                              ����                          ����                          	   	   ����         
                              ����                          ����            	              	   	   ����         
   
                           ����        
             ����                         conn_count             conns                                
                              node_paths              editable_instances              version             RSRC        extends Node2D
@onready var x = $RigidBody2D
@onready var porte = $RigidBody2D/CollisionShape2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	porte.disabled = true
	#porte.hide()
	remove_child(x)
	
	pass # Replace with function body.

             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script     res://room/scene/wall/L_wall.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_7om68 �         local://RectangleShape2D_yg6n1          local://RectangleShape2D_6yjdv 3         local://PackedScene_bpbw4 d         RectangleShape2D       
     �B  pC         RectangleShape2D             RectangleShape2D       
     �B  (C         PackedScene          	         names "         RWall    script    Node2D    StaticBody2D2    gravity_scale    RigidBody2D    CollisionShape2D 	   position    shape 	   Sprite2D    scale    texture    StaticBody2D8    Area2D    _on_area_2d_body_entered    body_entered    	   variants                        
     �D  �B          
      ?  �?         
     �D  D
     �D  XC         
     �D  �C         
     �D  �C
      ?  �?      node_count             nodes     ~   ��������       ����                            ����                          ����                          	   	   ����         
                              ����                          ����                          	   	   ����         
                              ����                     ����                                 ����             	             ����      	      
       	       	   	   ����         
                      conn_count             conns                                      node_paths              editable_instances              version             RSRC               RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script     res://room/scene/wall/L_wall.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_cj5lx �         local://RectangleShape2D_spbwr          local://RectangleShape2D_xnvu3 3         local://PackedScene_r5d0j d         RectangleShape2D       
     @C  �B         RectangleShape2D             RectangleShape2D       
     @C  �B         PackedScene          	         names "         UpLWall    script    Node2D    StaticBody2D9    gravity_scale    RigidBody2D    CollisionShape2D 	   position    shape 	   Sprite2D    scale    texture    StaticBody2D12    Area2D    _on_area_2d_body_entered    body_entered    	   variants                        
     �B   �          
     �?   ?         
   ���C   �
     �C  �
     �?  ?
     0C  ��         
     �C   �               node_count             nodes     ~   ��������       ����                            ����                          ����                          	   	   ����         
                              ����                          ����                          	   	   ����         
                              ����                     ����      	      
                     ����             	             ����                   	       	   	   ����         
                      conn_count             conns                                      node_paths              editable_instances              version             RSRC            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script     res://room/scene/wall/L_wall.gd ��������
   Texture2D    res://icon.svg ��ޘ�c1      local://RectangleShape2D_61fk3 �         local://RectangleShape2D_gip1b          local://RectangleShape2D_xtvf0 C         local://PackedScene_xfkxb t         RectangleShape2D       
   �?C  �B         RectangleShape2D       
     @C  �B         RectangleShape2D       
     B  �A         PackedScene          	         names "         UpRWall    script    Node2D    StaticBody2D3    gravity_scale    RigidBody2D    CollisionShape2D 	   position    shape 	   Sprite2D    scale    texture    StaticBody2D10    Area2D    _on_area_2d_body_entered    body_entered    	   variants                        
     (D   �          
     �?   ?         
     �D   �
     XD   �         
     :D  ��               node_count             nodes     ~   ��������       ����                            ����                          ����                          	   	   ����         
                              ����                          ����                          	   	   ����         
                              ����                          ����                          	   	   ����         
                              ����        
             ����      	      
             conn_count             conns        
                              node_paths              editable_instances              version             RSRC    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script &   res://room/script/CollisionShape2D.gd ��������   PackedScene "   res://room/scene/wall/L_wall.tscn ��?�>�~   PackedScene %   res://room/scene/wall/Up_R_wall.tscn M$�}�7K   PackedScene %   res://room/scene/wall/DW_R_wall.tscn ���W���V   PackedScene %   res://room/scene/wall/Up_L_wall.tscn ���D�9\   PackedScene "   res://room/scene/wall/R_wall.tscn ۚ��lJH   PackedScene %   res://room/scene/wall/DW_L_wall.tscn ��({�m`      local://PackedScene_860iy �         PackedScene          	         names "   	   
   emptyRoom    script    Node2D    LWall    UpRWall    DwRWall    UpLWall    RWall    DwLWall    	   variants                                                                             node_count             nodes     3   ��������       ����                      ���                      ���                      ���                      ���                      ���                      ���                    conn_count              conns               node_paths              editable_instances              version             RSRC        extends Node2D

var roomIDs = [1,2,3] 
# Called when the node enters the scene tree for the first time.
func _ready():
	var randomRoomID = roomIDs[randi() % roomIDs.size()]
	loadRoom(randomRoomID)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func loadRoom(roomID):
	# Load the room scene based on the given ID
	var roomScene = load("res://map/rndsale/" + str(roomID) + ".tscn")
	
	# Instance the room scene
	var roomInstance = roomScene.instantiate()
	
	# Add the room instance to the scene tree
	add_child(roomInstance)
      GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bqx8h4nkh7bnj"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-5232a7555b2855dafac48db38d13219d-node_2d.scn"
            [remap]

path="res://.godot/exported/133200997/export-7767f2b9093c00c327c6c58fb4ab896c-main.scn"
               [remap]

path="res://.godot/exported/133200997/export-d4954148b4a0498b3381351f77b8dad4-platforme.scn"
          [remap]

path="res://.godot/exported/133200997/export-8bbc98fe05aed28a0e530b80bafddf07-corridor.scn"
           [remap]

path="res://.godot/exported/133200997/export-1de74ce3e8a743f2833964b179c3e3a5-1.scn"
  [remap]

path="res://.godot/exported/133200997/export-21056518fdd19514c15e33826ca8baef-2.scn"
  [remap]

path="res://.godot/exported/133200997/export-9c86d7102523b220aaf9793c39f79ce4-3.scn"
  [remap]

path="res://.godot/exported/133200997/export-e60c1a5bee11c68840db09a93efe187e-coeur.scn"
              [remap]

path="res://.godot/exported/133200997/export-f7c484635276132ba4c4401f42f3556c-DW_L_wall.scn"
          [remap]

path="res://.godot/exported/133200997/export-179a456b8b29d5f735a9422eb8dbbe04-DW_R_wall.scn"
          [remap]

path="res://.godot/exported/133200997/export-1c2e771c003a2513e8243d2988123264-L_wall.scn"
             [remap]

path="res://.godot/exported/133200997/export-51b0aace6b71b428f79a51b2e6a03ac7-R_wall.scn"
             [remap]

path="res://.godot/exported/133200997/export-6d0c79911f02239f673b4223fc7c1d51-Up_L_wall.scn"
          [remap]

path="res://.godot/exported/133200997/export-0effcf6ae0429515e66a948aa3b1c429-Up_R_wall.scn"
          [remap]

path="res://.godot/exported/133200997/export-ae346e415b5ed2a5b9084ab90ccbd4a7-empty_room.scn"
         list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             ��ޘ�c1   res://icon.svg����侳9    res://room/scene/empty_room.tscn�ȮT�T�   res://main/scene/main.tscn?e�E/5Y   res://debugPerso/node_2d.tscn�/�Od9]   res://map/scene/coeur.tscn�{�m�+�   res://map/rndsale/salle1.tscnV:���76   res://map/contenusSalle/platforme/scene/platforme.tscn�{�m�+�   res://map/rndsale/1.tscn!un5��D   res://map/rndsale/2.tscn��y3B�   res://map/rndsale/3.tscn��?�>�~!   res://room/scene/wall/L_wall.tscnۚ��lJH!   res://room/scene/wall/R_wall.tscnM$�}�7K$   res://room/scene/wall/Up_R_wall.tscn���W���V$   res://room/scene/wall/DW_R_wall.tscn���D�9\$   res://room/scene/wall/Up_L_wall.tscn��({�m`$   res://room/scene/wall/DW_L_wall.tscn��y+D �J&   res://map/corridor/scene/corridor.tscn              ECFG      application/config/name         mapgenerationtest      application/run/main_scene$         res://main/scene/main.tscn     application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg  #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility        