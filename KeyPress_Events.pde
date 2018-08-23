SimpleThread thread1; 


void keyPressed(){ 
  if (keyCode == 38){ //up arrow 
    if (octave == 3){ 
    } else {
      println("You moved the piano up 1 octave");
      octave +=1 ;
    }
  }
  if (keyCode == 40){ //up arrow 
  if (octave == -3){ 
  } else {
    println("You moved the piano down 1 octave");
    octave -=1 ;
    }
  }
  
    
  if (keyCode == 37){
        myKnobB.setValue(myKnobB.getValue() - 30); 
              if (myKnobB.getValue() <= 3){ 
         myKnobB.setValueLabel("Default");
         Osc_Set_Synth(-1);
      } else if (myKnobB.getValue() <= 42.5){ 
         myKnobB.setValueLabel("Piano");
         Osc_Set_Synth(0);
      } else if (myKnobB.getValue() > 42.5 && myKnobB.getValue() <= 85){ 
         myKnobB.setValueLabel("Prophet");
         Osc_Set_Synth(1);
      } else if (myKnobB.getValue() > 85 && myKnobB.getValue() <= 127.5){ 
         myKnobB.setValueLabel("Dark Ambience");
         Osc_Set_Synth(2);
      } else if (myKnobB.getValue() > 127.5 && myKnobB.getValue() <= 170){ 
         myKnobB.setValueLabel("Chiplead");
         Osc_Set_Synth(3);
      } else if (myKnobB.getValue() > 170 && myKnobB.getValue() <= 212.5){ 
         myKnobB.setValueLabel("Snaredrum");
         Osc_Set_Synth(4);
      } else if (myKnobB.getValue() > 212.5 && myKnobB.getValue() <= 300){ 
         myKnobB.setValueLabel("Bass Drum");
         Osc_Set_Synth(5);

  }


  }
  if (keyCode == 39){
        myKnobB.setValue(myKnobB.getValue() + 30); 
      if (myKnobB.getValue() <= 3){ 
         myKnobB.setValueLabel("Default");
         Osc_Set_Synth(-1);
      } else if (myKnobB.getValue() <= 42.5){ 
         myKnobB.setValueLabel("Piano");
         Osc_Set_Synth(0);
      } else if (myKnobB.getValue() > 42.5 && myKnobB.getValue() <= 85){ 
         myKnobB.setValueLabel("Prophet");
         Osc_Set_Synth(1);
      } else if (myKnobB.getValue() > 85 && myKnobB.getValue() <= 127.5){ 
         myKnobB.setValueLabel("Dark Ambience");
         Osc_Set_Synth(2);
      } else if (myKnobB.getValue() > 127.5 && myKnobB.getValue() <= 170){ 
         myKnobB.setValueLabel("Chiplead");
         Osc_Set_Synth(3);
      } else if (myKnobB.getValue() > 170 && myKnobB.getValue() <= 212.5){ 
         myKnobB.setValueLabel("Snaredrum");
         Osc_Set_Synth(4);
      } else if (myKnobB.getValue() > 212.5 && myKnobB.getValue() <= 300){ 
         myKnobB.setValueLabel("Bass Drum");
         Osc_Set_Synth(5);

  }
  }
  
  
  
  if(keys_to_pitches.containsKey(keyCode)){ 
    
   OscMessage pitch = new OscMessage("/key");
    
    // add the code for the key we just pressed to the message
    pitch.add(keys_to_pitches.get(keyCode) + octave*12);
    
    
    /* send the message */
    oscSession.send(pitch, sonicPiOSCPort);
  }
  
  
  if(keys_to_odd.containsKey(str(key))) {
    // create a new osc message container called /key
    OscMessage myMessage = new OscMessage("/key");
    
    // add the code for the key we just pressed to the message
    myMessage.add(keys_to_odd.get(str(key)) + octave*12);

    if(keys_to_odd.get(str(key)) % 12 == 7){ 
      g2_color = 120;
    } else if (keys_to_odd.get(str(key)) % 12 == 9){
      a2_color = 120; 
    }else if (keys_to_odd.get(str(key)) % 12 == 11){
      b2_color = 120;
    } else if (keys_to_odd.get(str(key)) % 12 == 6){
      fs2_color = 120;
    } else if (keys_to_odd.get(str(key)) % 12 == 8){
      gs2_color = 120;
    }
    
    /* send the message */
    oscSession.send(myMessage, sonicPiOSCPort);
  }
  
  /** Musical Note Presses **/ 

  
   
  if (keyCode == 9){ //Keycode for "Tab"  
    println("You Played C"); //prints that for the tab key
    c1_color = 120;
  }
  if (keyCode == 81){ //Keycode for "Q"
    println("You Played D"); //prints that for the tab key
    d1_color = 120;

  }
  if (keyCode == 87){ //Keycode for "W"
    println("You Played E"); //prints that for the tab key
    e1_color = 120;

    
  }
  if (keyCode == 69){ //Keycode for "E"  
    println("You Played F"); //prints that for the tab key
    f1_color = 120;
   
  }
  if (keyCode == 82){ //Keycode for "R"
    println("You Played G"); //prints that for the tab key
    g1_color = 120;
   
  }
  if (keyCode == 84){ //Keycode for "T"
    println("You Played A"); //prints that for the tab key
    a1_color = 120;

  }
  if (keyCode == 89){ //Keycode for "Y"  
    println("You Played B"); //prints that for the tab key
    b1_color = 120;
   
  }
  if (keyCode == 85){ //Keycode for "U"
    println("You Played C"); //prints that for the tab key
    c2_color = 120;
    
  }
  if (keyCode == 73){ //Keycode for "I"
    println("You Played D"); //prints that for the tab key
    d2_color = 120;

  }
  if (keyCode == 79){ //Keycode for "O"
    println("You Played E"); //prints that for the tab key
    e2_color = 120;
 
  }
  if (keyCode == 80){ //Keycode for "P"
    println("You Played F"); //prints that for the tab key
    f2_color = 120;

  }
  
  
  
  /**HAVING SOME ISSUES PLAYING THE NOTES EVEN THOUGH keycode.info insists that these keycords are correct**/
  if (keyCode == 219){ //Keycode for "["
    println("You Played G"); //prints that for the tab key
    g2_color = 120;
    
  }
  if (keyCode == 221){ //Keycode for "]"
    println("You Played A"); //prints that for the tab key
    a2_color = 120;

  }
  if (keyCode == 220){ //Keycode for "|"
    println("You Played B"); //prints that for the tab key
    b2_color = 120;

  }

   if (keyCode ==   49){ //Keycode for "|"
    println("You Played C#"); //prints that for the tab key
    cs_color = 120;

  }
  
  if (keyCode ==   50){ //Keycode for "|"
    println("You Played D#"); //prints that for the tab key
    ds_color = 120;

  }
  
  if (keyCode ==   52){ //Keycode for "|"
    println("You Played F#"); //prints that for the tab key
    fs_color = 120;

  }

  if (keyCode ==   53){ //Keycode for "|"
    println("You Played G#"); //prints that for the tab key
    gs_color = 120;

  }
  
  if (keyCode ==   54){ //Keycode for "|"
    println("You Played A#"); //prints that for the tab key
    as_color = 120;

  }
  
  if (keyCode ==   56){ //Keycode for "|"
    println("You Played C#"); //prints that for the tab key
    cs2_color = 120;

  }
  
  
  if (keyCode ==   57){ //Keycode for "|"
    println("You Played D#"); //prints that for the tab key
    ds2_color = 120;

  }
  
  if (keyCode ==   189){ //Keycode for "|"
    println("You Played F#"); //prints that for the tab key
    fs2_color = 120;

  }
  
  if (keyCode ==   187){ //Keycode for "|"
    println("You Played G#"); //prints that for the tab key
    gs2_color = 120;

  }
  if (keyCode ==   8){ //Keycode for "|"
    println("You Played A#"); //prints that for the tab key
    as2_color = 120;

  }


}


void keyReleased() {

    /** Musical Note Presses **/ 
  if (keyCode == 9){ //Keycode for "Tab"  
    println("You Released C"); //prints that for the tab key
    c1_color = 255;
  }
  if (keyCode == 81){ //Keycode for "Q"
    println("You Released D"); //prints that for the tab key
    d1_color = 255;

  }
  if (keyCode == 87){ //Keycode for "W"
    println("You Released E"); //prints that for the tab key
    e1_color = 255;

    
  }
  if (keyCode == 69){ //Keycode for "E"  
    println("You Released F"); //prints that for the tab key
    f1_color = 255;
   
  }
  if (keyCode == 82){ //Keycode for "R"
    println("You Released G"); //prints that for the tab key
    g1_color = 255;
   
  }
  if (keyCode == 84){ //Keycode for "T"
    println("You Released A"); //prints that for the tab key
    a1_color = 255;

  }
  if (keyCode == 89){ //Keycode for "Y"  
    println("You Released B"); //prints that for the tab key
    b1_color = 255;
   
  }
  if (keyCode == 85){ //Keycode for "U"
    println("You Released C"); //prints that for the tab key
    c2_color = 255;
    
  }
  if (keyCode == 73){ //Keycode for "I"
    println("You Released D"); //prints that for the tab key
    d2_color = 255;

  }
  if (keyCode == 79){ //Keycode for "O"
    println("You Released E"); //prints that for the tab key
    e2_color = 255;
 
  }
  if (keyCode == 80){ //Keycode for "P"
    println("You Released F"); //prints that for the tab key
    f2_color = 255;

  }
  
  
  
  /**HAVING SOME ISSUES PLAYING THE NOTES EVEN THOUGH keycode.info insists that these keycords are correct**/
  if (keyCode == 219){ //Keycode for "["
    println("You Released G"); //prints that for the tab key
    g2_color = 255;
    
  }
  if (keyCode == 221){ //Keycode for "]"
    println("You Released A"); //prints that for the tab key
    a2_color = 255;

  }
  if (keyCode == 220){ //Keycode for "|"
    println("You Released B"); //prints that for the tab key
    b2_color = 255;

  }
  
     if (keyCode ==   49){ //Keycode for "|"
    println("You Released C#"); //prints that for the tab key
    cs_color = 0;

  }
  
  if (keyCode ==   50){ //Keycode for "|"
    println("You Released D#"); //prints that for the tab key
    ds_color = 0;

  }
  
  if (keyCode ==   52){ //Keycode for "|"
    println("You Released F#"); //prints that for the tab key
    fs_color = 0;

  }

  if (keyCode ==   53){ //Keycode for "|"
    println("You Released G#"); //prints that for the tab key
    gs_color = 0;

  }
  
  if (keyCode ==   54){ //Keycode for "|"
    println("You Released A#"); //prints that for the tab key
    as_color = 0;

  }
  
  if (keyCode ==   56){ 
    println("You Released C#"); //prints that for the tab key
    cs2_color = 0;

  }
  
  
  if (keyCode ==   57){ 
    println("You Released D#"); //prints that for the tab key
    ds2_color = 0;

  }
  
  if (keyCode ==   189){ //Keycode for "+"
    println("You Released F#"); //prints that for the tab key
    fs2_color = 0;

  }
  
  if (keyCode ==   187){ //Keycode for "="
    println("You Released G#"); //prints that for the tab key
    gs2_color = 0;

  }
  if (keyCode ==   8){ //Keycode for "backspace"
    println("You Released A#"); //prints that for the tab key
    as2_color = 0;

  }
  
  

  
  
  
  
}
