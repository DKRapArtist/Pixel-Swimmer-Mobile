class_name ChaptersScreen
extends Node2D

@onready var chapter_2 = $Buttons/Chapter2
@onready var chapter_3 = $Buttons/Chapter3
@onready var chapter_4 = $Buttons/Chapter4

func _ready() -> void:
	# Lock level 2 if highest_unlocked_level < 1
	lock_touch_button(chapter_2, GameSession.highest_unlocked_chapter < 1)
	lock_touch_button(chapter_3, GameSession.highest_unlocked_chapter < 2)
	lock_touch_button(chapter_4, GameSession.highest_unlocked_chapter < 3)

func lock_touch_button(btn: TouchScreenButton, locked: bool) -> void:
	btn.set_block_signals(locked)
	btn.get_node("LockedOverlay").visible = locked

func _on_chapter_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu Scenes/Chapters/Chapter1.tscn")

func _on_chapter_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu Scenes/Chapters/ComingSoonScreen.tscn")

func _on_chapter_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu Scenes/Chapters/ComingSoonScreen.tscn")

func _on_chapter_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu Scenes/Chapters/ComingSoonScreen.tscn")

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu Scenes/main_menu.tscn")
