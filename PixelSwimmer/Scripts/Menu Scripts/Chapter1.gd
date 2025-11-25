extends Node2D

@onready var level_2 = $Buttons/Level2
@onready var level_3 = $Buttons/Level3
@onready var level_4 = $Buttons/Level4
@onready var level_5 = $Buttons/Level5
@onready var level_6 = $Buttons/Level6
@onready var level_7 = $Buttons/Level7
@onready var level_8 = $Buttons/Level8
@onready var level_9 = $Buttons/Level9
@onready var boss_level = $Buttons/BossLevel

func _ready() -> void:
	set_level_locked(level_2, GameSession.highest_unlocked_level < 1)
	set_level_locked(level_3, GameSession.highest_unlocked_level < 2)
	set_level_locked(level_4, GameSession.highest_unlocked_level < 3)
	set_level_locked(level_5, GameSession.highest_unlocked_level < 4)
	set_level_locked(level_6, GameSession.highest_unlocked_level < 5)
	set_level_locked(level_7, GameSession.highest_unlocked_level < 6)
	set_level_locked(level_8, GameSession.highest_unlocked_level < 7)
	set_level_locked(level_9, GameSession.highest_unlocked_level < 8)
	set_level_locked(boss_level, GameSession.highest_unlocked_level < 9)

func set_level_locked(button: TouchScreenButton, locked: bool) -> void:
	button.set_block_signals(locked)  # prevents presses
	if button.has_node("LockedOverlay"):
		button.get_node("LockedOverlay").visible = locked

func _on_level_1_pressed() -> void:
	if 0 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 0
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_2_pressed() -> void:
	if 1 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 1
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_3_pressed() -> void:
	if 2 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 2
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_4_pressed() -> void:
	if 3 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 3
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_5_pressed() -> void:
	if 4 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 4
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_6_pressed() -> void:
	if 5 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 5
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_7_pressed() -> void:
	if 6 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 6
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_8_pressed() -> void:
	if 7 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 7
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_level_9_pressed() -> void:
	if 8 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 8
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_boss_level_pressed() -> void:
	if 9 > GameSession.highest_unlocked_level:
		return
	GameSession.mode = "story"
	GameSession.current_level = 9
	get_tree().change_scene_to_file("res://Scenes/Root.tscn")

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu Scenes/ChaptersScreen.tscn")
