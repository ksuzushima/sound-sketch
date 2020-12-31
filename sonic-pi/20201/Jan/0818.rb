=begin
in_thread do
  loop do
    sample :loop_compus
    sleep 1.753
  end
end
=end

in_thread do
  use_synth :fm
  128.times do
    play 60
    sleep 0.5
    play 67
    sleep 0.75
  end
end

in_thread do
  use_synth :tri
  128.times do
    play 64
    sleep 0.5
    play 55
    sleep 0.25
  end
end

in_thread do
  use_synth :mod_sine
  128.times do
    play 74
    sleep 1
    play 67
    sleep 0.5
  end
end

