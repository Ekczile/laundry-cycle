def prewash
  sample :ambi_choir
end

def teardown
  sample :ambi_piano
end

def frame_damage?
  1 == [1,2].choose
end

def frame_repair
  sample :ambi_sauna
  sleep 2
end

def body_damage?
  1 -- [1,2].choose
end

def body_repair(cure)
  if cure >= 10
    sample :ambi_soft_buzz
  else
    sample :bd_boom, rate: cure
    sleep 1
    body_repair(cure + 1)
  end
end


def paint(wet)
  if wet >= 10
    sample :bass_voxy_hit_c
  else
    sample :ambi_lunar_land, rate: wet
    sleep 1
    paint(wet + 1)
  end
end

def reassembly
  sample :ambi_haunted_hum
end




5.times do
  prewash
  sleep 1
  teardown
  sleep 1
  frame_repair if frame_damage?
  body_repair(1) if body_damage?
  sleep 1
  paint(10)
  sleep 1
  reassembly
end




