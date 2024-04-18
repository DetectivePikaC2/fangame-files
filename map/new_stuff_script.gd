extends Node3D

var flare_timer = 0

var panel1 = false
var panel2 = false
var panel3 = false
var panel4 = false

@onready var player = $Player

func _physics_process(delta):
	get_tree().call_group("enemy", "update_target_location", player.global_transform.origin)

func _process(delta):
	if flare_timer > 0:
		flare_timer += 1
	if flare_timer == 5:
		$Player/layer1/Grab_layer1/Grab_layer2/Grab_layer3/RootNode/right_hands/Hand_Flare/flare.reparent($flare_container)
	if flare_timer == 10:
		summon()
		flare_timer = 0

func flare_spawned():
	flare_timer = 1

func summon():
	get_tree().call_group("flare", "flare_update")

func check_socket():
	pass

func reciever_active():
	pass

func battery_rev_complete():
	check_socket()

func blue_panel_finish():
	if Worker.blue_scanner_number == 0:
		panel1 = true
	if Worker.blue_scanner_number == 1:
		panel3 = true
	check_panels()

func green_panel_finish():
	if Worker.green_scanner_number == 0:
		panel2 = true
	if Worker.green_scanner_number == 1:
		panel4 = true
	check_panels()

func check_panels():
	if panel1 and panel2:
		$"nav_region/objects/Large Gate".call("open_gate")
	if panel3 and panel4:
		$complete_sfx.play()
		$nav_region/objects/Door_Basic3.locked = false

func lever_flipped_up():
	if Worker.lever_number == 0:
		$nav_region/objects/green_scanner2.call("power_on")
		$nav_region/objects/blue_scanner2.call("power_off")

func lever_flipped_down():
	if Worker.lever_number == 0:
		$nav_region/objects/green_scanner2.call("power_off")
		$nav_region/objects/blue_scanner2.call("power_on")
	if Worker.lever_number == 1:
		$nav_region/objects/Door_Basic4.locked = false

func keypad_finish():
	if Worker.keypad_number == 0:
		$map_anim.play("door")

func vhs_finished():
	if Worker.vhs_id == 0:
		$"nav_region/objects/Large Gate2".call("open_gate")
