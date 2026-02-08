extends Control
class_name TimerProgress

#Variable Groups
@export var start_time: float
@export var ring5_max_time: float
@export var ring4_max_time: float
@export var ring3_max_time: float
@export var ring2_max_time: float
@export var ring1_max_time: float
@export var timer_path: NodePath
@export var start_timer: bool = true

@onready var timer: Timer = get_node(timer_path)
@onready var Ring1: TextureProgressBar = $ProgressRing1
@onready var Ring2: TextureProgressBar = $ProgressRing2
@onready var Ring3: TextureProgressBar = $ProgressRing3
@onready var Ring4: TextureProgressBar = $ProgressRing4
@onready var Ring5: TextureProgressBar = $ProgressRing5
@onready var TimerLabel: RichTextLabel = $LabelMargin/VBoxContainer/TimerLabel

var current_time: float

#Initialization function
func _ready() -> void:
	
	#Ring minmax values allocation
	Ring1.min_value = 0.0
	Ring1.max_value = ring1_max_time
	Ring2.min_value = ring1_max_time
	Ring2.max_value = ring2_max_time
	Ring3.min_value = ring2_max_time
	Ring3.max_value = ring3_max_time
	Ring4.min_value = ring3_max_time
	Ring4.max_value = ring4_max_time
	Ring5.min_value = ring4_max_time
	Ring5.max_value = ring5_max_time
	
	#Timer start
	if (start_timer):
		timer.wait_time = start_time
		timer.one_shot = true
		timer.start()

#Process function
func _process(_delta: float) -> void:
	#Time left
	current_time = timer.time_left
	#Ring progress update
	Ring1.value = current_time
	Ring2.value = current_time
	Ring3.value = current_time
	Ring4.value = current_time
	Ring5.value = current_time
	#Label update
	TimerLabel.text = "%.1f" % current_time
