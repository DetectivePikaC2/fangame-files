extends Node

var current_hand = 0
var hand_amount = 2
var green_hand_location = true
var player_data
var hand_pos = Vector3()
var grappling_use = false
var left_grappling_use = false
var handle_pos = Vector3()
var handle_rot = Vector3()
var handle_available = false
var handle_available_left = false
var grappling = false
var adaptive_sway = false
var power_available = false
var recieve_finish = 0
var hand_powered = false
var flare_pos = Vector3()
var flare_rot = Vector3()
var battery_pos = Vector3()
var battery_rot = Vector3()
var battery_right = false
var battery_right_place = 0
var revieve_done = Vector3()
var battery_rev_pos = Vector3()
var battery_rev_rot = Vector3()
var battery_left = false
var battery_rev_active = Vector3()
var battery_rev_finish = 0
var battery_pos_left = Vector3()
var battery_rot_left = Vector3()
var handle_pos_left = Vector3()
var handle_rot_left = Vector3()
var blue_scanner_number = 0
var jump_pad_height = 0
var has_grabpack = false
var allow_movement = true
var selected = 0
var switching = false
var player_pos = Vector3()
var load_path = "none"
var vhs_id = 0
var current_vhs = -1
var green_scanner_number = 0
var lever_number = 0
var keypad_number = 0
