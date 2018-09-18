def bread
  sample :ambi_choir
end

def cheese
  sample :ambi_piano
end

def bologna(expired)
  sample :ambi_haunted_hum
end

def want_miracle_whip?
  1 == [1,2].choose
end

def miracle_whip(amount)
  if amount >= 5
    sample :bd_zome
  else
    sample :bd_pure, rate: amount
    sleep 1
    miracle_whip(amount +1)
  end
end

def want_ketchup?
  1==[1,2].choose
end

def ketchup(amount)
  if amount >= 5
    sample :bd_ada
  else
    sample :ambi_drone, rate: amount
    sleep 1
    ketchup(amount +1)
  end
end

def want_mustard?
  1 == [1,2].choose
end

def mustard(amount)
  if amount >= 5
    sample :ambi_soft_buzz
  else
    sample :bd_klub, rate: amount
    sleep 1
    mustard(amount + 1)
  end
end

def tomato
  sample :ambi_lunar_land
end

def lettuce
  sample :bass_hard_c
end

2.times do
  bread
  sleep 1
  cheese
  sleep 1
  bologna
  sleep 1
  miracle_whip(1) if want_miracle_whip?
  ketchup(1) if want_ketchup?
  mustard(1) if want_mustard?
  sleep 1
  tomato
  sleep 1
  lettuce
  sleep 1
  bread
end


