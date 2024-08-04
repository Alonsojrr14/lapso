extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var emissor = %CharacterBody2D
	print(emissor)
	emissor.connect("time_travel", _on_time_travel)

func _on_time_travel(event):
	if event == 'forward':
		texture = preload("res://Assets/future.jpg")
	if event == 'backward':
		texture = preload("res://Assets/past.png")
	if event == 'present':
		texture = preload('res://Assets/present.jpg')
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
