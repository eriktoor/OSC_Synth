set :volume, 0.6 #amp
'Getting the Volume from Processing'
live_loop :volume_val do
  volume = sync "/osc/volume"
  set :volume, volume[0]
  puts "Volume Mix is: ", volume[0]
end


set :bit_mix, 0 #bit
set :echo_mix, 0 #echo
set :slicer_mix, 0 #echo

'Getting the FX from Processing -- FX Include Bitcrusher, Echo, and Slicer'
live_loop :bit_bool do
  pitch = sync "/osc/bit_bool"
  set :bit_mix, pitch[0]
  puts "Bitcrusher Mix is: ", pitch[0]
end

live_loop :echo_bool do
  pitch_1 = sync "/osc/reverb_bool" #reverb bool is echo bool
  set :echo_mix, pitch_1[0]
  puts "Echo Mix is: ", pitch_1[0]
end

live_loop :slicer_bool do
  pitch_2 = sync "/osc/slice_bool"
  set :slicer_mix, pitch_2[0]
  puts "Slicer Mix is: ", pitch_2[0]
end

set :synth_value, 0
'Getting the Synths from Processing'
num_list = [0,1,2,3,4,5]
synth_list = [:piano, :prophet, :dark_ambience, :chiplead, 'Snaredrum', 'Kickdrum']

live_loop :synth_value do
  synth_1 = sync "/osc/synth"
  set :synth_value, synth_1[0]
  print "Synth Value is: ", synth_1[0]
  print "Synth is: ", synth_list[synth_1[0]]
end


'Drum Beats -- When called will play drum sounds'
# Bass Drum
define :bd do |pitch=56.17, vol=1|
  s1 = synth :tri, amp: vol, note: pitch-24, decay: rt(0.12), release: rt(0.47), note_slide: 0.15
  s2 = synth :dtri, amp: vol, note: pitch-24, decay: rt(0.12), release: rt(0.12), note_slide: 0.15
  control s1, note: pitch-48
  control s2, note: pitch-48
end

# Snare Drum
define :sd do |pitch=65, vol=1|
  with_fx :rlpf, cutoff: 95, res: 0.55 do
    synth :noise, amp: 0.65*vol, release: rt(0.05)
    s1 = synth :sine, amp: vol, note: pitch-12, note_slide: rt(0.07), release: rt(0.07)
    control s1, note: pitch-14
  end
end


live_loop :oscFoo do
  if get[:synth_value] < 0
    with_fx :bitcrusher, mix: get[:bit_mix] do
      with_fx :echo, mix: get[:echo_mix] do
        with_fx :slicer, mix: get[:slicer_mix] do
          use_real_time
          use_osc "localhost", 12000
          pitch = sync "/osc/key"
          play pitch[0], amp: get[:volume]
        end
      end
    end
  end
  if get[:synth_value] < 4 and get[:synth_value] >= 0
    with_synth synth_list[get[:synth_value]] do
      with_fx :bitcrusher, mix: get[:bit_mix] do
        with_fx :echo, mix: get[:echo_mix] do
          with_fx :slicer, mix: get[:slicer_mix] do
            use_real_time
            use_osc "localhost", 12000
            pitch = sync "/osc/key"
            play pitch[0], amp: get[:volume]
          end
        end
      end
    end
  end
  if get[:synth_value] == 4
    pitch = sync "/osc/key"
    bd pitch[0], get[:volume]
  end
  if get[:synth_value] == 5
    pitch = sync "/osc/key"
    sd pitch[0], get[:volume]
  end
  sleep 0.02
end





