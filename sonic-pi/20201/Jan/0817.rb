use_bpm 160
use_random_seed 10
ranran = rrand(0.1, 2)

live_loop :dolemi do
  ##| stop
  with_fx :reverb, decay: 10, mix: 0.5, phase: 1 do
    use_synth choose([:sine, :pretty_bell])
    sample :bd_boom
    play rrand(61, 80).round
    sleep ranran
  end
end

live_loop :kan do
  ##| stop
  use_bpm 120
  with_fx :echo, decay: 3, mix: 0.1, phase: 1 do
    use_synth choose([:sine, :pretty_bell])
    sample :ambi_piano
    play rrand(51, 66).round
    sleep ranran
  end
end

