import Tone from 'tone'

const synth = new Tone.Synth()
synth.oscillator.type = 'sine'
const metal = new Tone.MetalSynth()
const delay = new Tone.PingPongDelay(2.3, 0.4)
metal.connect(delay)
synth.connect(delay)
delay.toMaster()

const notes = [
  'C4', 'E4', 'G#4',
  'C5', 'G5', 'F3', 'F1',
  'F3', 'C#2', 'A4'
]

let index = 0

Tone.Transport.scheduleRepeat(time => {
  repeat(time)
}, '8n')

function repeat(time) {
  let note = notes[index % notes.length]
  synth.triggerAttackRelease(note, '8n', time)
  // metal.triggerAttackRelease(note, '16n', time)
  index++
}

// BPM
Tone.Transport.bpm.value = 120

const startButton = document.querySelector('.start')
startButton.addEventListener('click', () => Tone.Transport.start())

const stopButton = document.querySelector('.stop')
stopButton.addEventListener('click', () => Tone.Transport.stop())

const loopButton = document.querySelector('.loop')