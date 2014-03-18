loop do
  with_synth "dsaw" do
    with_fx(:slicer, freq: [4,8].choose) do
      with_fx(:reverb, room: 0.5, mix: 0.3) do
        n1 = chord([:b1, :b2, :e1, :e2, :b3, :e3].choose, :minor).choose
        n2 = chord([:b1, :b2, :e1, :e2, :b3, :e3].choose, :minor).choose

        p = play n1, amp: 2, release: 8, slide: 4, cutoff: 30, cutoff_slide: 4, detune: rrand(0, 0.2)
        p.ctl note: n2, cutoff: rrand(80, 120)
      end
    end
  end

  sleep 8
end
