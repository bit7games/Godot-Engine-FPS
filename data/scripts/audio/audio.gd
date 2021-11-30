extends Node

class_name AudioNode

var rng = RandomNumberGenerator.new()

var wind_noise = OpenSimplexNoise.new()

func _ready():
	rng.seed = OS.get_ticks_msec()
	
	# Initialize procedural wind noise
	# Audio.get_node("Misc/Wind").play()
	# Audio.get_node("Misc/Wind").volume_db = -999
	# wind_noise.seed = OS.get_ticks_msec()
	# wind_noise.octaves = 2
	# wind_noise.persistence = 0.5

func rand(audio_dir: String):
	var sfx = Audio.get_node(audio_dir).get_children()
	return sfx[floor(rng.randf() * sfx.size())]

func _physics_process(delta):
	
	# Using open simplex noise, modulate the volume and cutoff of
	# the low-pass filter of the Wind audio bus
	# var n = wind_noise.get_noise_1d(OS.get_ticks_msec() / 100)
	# var wind_db = ((n * 5) - 15)
	# Audio.get_node("Misc/Wind").volume_db = wind_db
	
	# AudioServer.set_bus_effect_enabled(0, 0, false)
	
	# AudioServer.get_bus_effect(1, 0).cutoff_hz = (n * 1500) + 1000 - rng.randf() * 100
	pass
