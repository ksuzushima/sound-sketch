notes = (ring 65.3, 62.1, 82, 75.2, 64, 68.4, 67, 46.4)
##| use_bpm 100

live_loop :arp do
  ##| stop
  with_fx :reverb, mix: 0.5, room: 0.3 do
    with_fx :echo, mix: 0.3, decay: 10 do
      use_synth :sine
      play notes.tick, release: 0.1, decay_level: 0.1, decay: 0.15
      sleep 1
    end
  end
end

