
void mousePressed() { 
  //If the up arrow in octaver is pressed 
  if (mouseX > displayWidth/2.5 && mouseX < displayWidth/2.5 + displayWidth/50 && mouseY < displayHeight/6.4 + displayHeight/45 && mouseY > displayHeight/6.4)
  {
    if (octave == 3){ 
    } else {
    octave += 1; 
    }
  }
  //If the down arrow in octaver is pressed
  if (mouseX > displayWidth/2.5 && mouseX < displayWidth/2.5 + displayWidth/50 && mouseY < displayHeight/4.8 + displayHeight/45 && mouseY > displayHeight/4.8)
  {
    if (octave == -3){ 
    } else {
    octave -= 1; 
    }
  }
  
  //If Slicer is pressed 
  if (mouseX > displayWidth/2.5 && mouseX < displayWidth/2.5 + displayWidth/50 && mouseY < displayHeight/2.9 + displayWidth/50 && mouseY > displayHeight/2.9){
    if (slicer_btn == false) { 
      slicer_btn = true; 
    } else { 
    slicer_btn = false; 
    }
  }
  
  //If Bitcrusher is pressed 
  if (mouseX > displayWidth/2.5 && mouseX < displayWidth/2.5 + displayWidth/50 && mouseY < displayHeight/4 + displayWidth/50 && mouseY > displayHeight/4){
    if (bit_btn == false) { 
      bit_btn = true; 
    } else { 
    bit_btn = false; 
    }
  }

  //If Reverb is pressed 
  if (mouseX > displayWidth/2.5 && mouseX < displayWidth/2.5 + displayWidth/50 && mouseY < displayHeight/3.36 + displayWidth/50 && mouseY > displayHeight/3.36){
    if (reverb_btn == false) { 
      reverb_btn = true; 
    } else { 
    reverb_btn = false; 
    }
  }
  
  
  
  
  /* Clicking the Keys **/ 
  if(mouseX > button_d_x1 - button_margin*sharp_margin && mouseX < button_d_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { //C#
   message = "You Clicked C#"; 
   cs_color = 150; 
   Osc_Message_Click(61); 
  }
  else if(mouseX > button_e_x1 - button_margin*sharp_margin && mouseX < button_e_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked D#"; 
   ds_color = 150; 
   Osc_Message_Click(63); 
  }
  else if(mouseX > button_g_x1 - button_margin*sharp_margin && mouseX < button_g_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked F#"; 
   fs_color = 150; 
   Osc_Message_Click(66); 
  }
  else if(mouseX > button_a_x1 - button_margin*sharp_margin && mouseX < button_a_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked G#"; 
   gs_color = 150; 
   Osc_Message_Click(68); 
  }
  else if(mouseX > button_b_x1 - button_margin*sharp_margin && mouseX < button_b_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked A#"; 
   as_color = 150; 
   Osc_Message_Click(70); 
  }
  //if c1 is pressed 
  else if(mouseX > button_c_x1 && mouseX < button_c_x2+button_c_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked C";
   println(message);
   //draw_button("Sup", button_c_x1, button_c_y1, button_c_x1, button_c_y2, 0);
   c1_color = 150;
   Osc_Message_Click(60);
  }
  //if d1 is pressed 
  else if(mouseX > button_d_x1 && mouseX < button_d_x2+button_d_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked D";
   println(message);
   d1_color = 150;
   Osc_Message_Click(62);
  }
  //if e1 is pressing 
  else if(mouseX > button_e_x1 && mouseX < button_e_x2+button_e_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked E";
   println(message);
   e1_color = 150;
   Osc_Message_Click(64);
  }
  
  else if(mouseX > button_f_x1 && mouseX < button_f_x2+button_f_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked F";
   println(message);
   f1_color = 150;
   Osc_Message_Click(65);

  }
  
  else if(mouseX > button_g_x1 && mouseX < button_g_x2+button_g_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked G";
   println(message);
   g1_color = 150;
   Osc_Message_Click(67);

  }
  
  else if(mouseX > button_a_x1 && mouseX < button_a_x2+button_a_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked A";
   println(message);
   a1_color = 150;
   Osc_Message_Click(69);

  }
  else if(mouseX > button_b_x1 && mouseX < button_b_x2+button_b_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked B";
   println(message);
   b1_color = 150;
   Osc_Message_Click(71);

  }
  
  
  //SECOND OCTAVE OF NOTES
  if(mouseX > button_d2_x1 - button_margin*sharp_margin && mouseX < button_d2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { //C#
   message = "You Clicked C#"; 
   cs2_color = 150; 
   Osc_Message_Click(73); 
  }
  else if(mouseX > button_e2_x1 - button_margin*sharp_margin && mouseX < button_e2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked D#"; 
   ds2_color = 150; 
   Osc_Message_Click(75); 
  }
  else if(mouseX > button_g2_x1 - button_margin*sharp_margin && mouseX < button_g2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked F#"; 
   fs2_color = 150; 
   Osc_Message_Click(78); 
  }
  else if(mouseX > button_a2_x1 - button_margin*sharp_margin && mouseX < button_a2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked G#"; 
   gs2_color = 150; 
   Osc_Message_Click(80); 
  }
  else if(mouseX > button_b2_x1 - button_margin*sharp_margin && mouseX < button_b2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Clicked A#"; 
   as2_color = 150; 
   Osc_Message_Click(82); 
  }
  
  //if c2 is pressed 
  else if(mouseX > button_c2_x1 && mouseX < button_c2_x2+button_c2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked C";
   println(message);
   //draw_button("Sup", button_c2_x1, button_c2_y1, button_c2_x1, button_c2_y2, 0);
   c2_color = 150;
   Osc_Message_Click(72);
  }
  
  //if d1 is pressed 
  else if(mouseX > button_d2_x1 && mouseX < button_d2_x2+button_d2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked D";
   println(message);
   d2_color = 150;
   Osc_Message_Click(74);
  }
  //if e1 is pressing 
  else if(mouseX > button_e2_x1 && mouseX < button_e2_x2+button_e2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked E";
   println(message);
   e2_color = 150;
   Osc_Message_Click(76);
  }
  
  else if(mouseX > button_f2_x1 && mouseX < button_f2_x2+button_f2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked F";
   println(message);
   f2_color = 150;
   Osc_Message_Click(77);

  }
  
  else if(mouseX > button_g2_x1 && mouseX < button_g2_x2+button_g2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked G";
   println(message);
   g2_color = 150;
   Osc_Message_Click(79);

  }
  
  else if(mouseX > button_a2_x1 && mouseX < button_a2_x2+button_a2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked A";
   println(message);
   a2_color = 150;
   Osc_Message_Click(81);

  }
  else if(mouseX > button_b2_x1 && mouseX < button_b2_x2+button_b2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Clicked B";
   println(message);
   b2_color = 150;
   Osc_Message_Click(83);

  }
   
}




void mouseReleased(){
    

  
  /**Changing the Attributes for the Knob **/
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
  
  
  
  

  
  /**Checking the buttons for FX**/
  if (bit_btn == true) { 
     OscMessage fx_Message = new OscMessage("/bit_bool");
     fx_Message.add(1); 
     oscSession.send(fx_Message, sonicPiOSCPort); 
     println(fx_Message);
    } else { 
      OscMessage fx_Message = new OscMessage("/bit_bool");
      fx_Message.add(0); 
      oscSession.send(fx_Message, sonicPiOSCPort); 
    }
  if (reverb_btn == true) { 
     OscMessage fx_Message = new OscMessage("/reverb_bool");
     fx_Message.add(1); 
     oscSession.send(fx_Message, sonicPiOSCPort); 
     println(fx_Message);
    } else { 
      OscMessage fx_Message = new OscMessage("/reverb_bool");
      fx_Message.add(0); 
      oscSession.send(fx_Message, sonicPiOSCPort); 
  }   
  if (slicer_btn == true) { 
     OscMessage fx_Message = new OscMessage("/slice_bool");
     fx_Message.add(1); 
     oscSession.send(fx_Message, sonicPiOSCPort); 
     println(fx_Message);
    } else { 
      OscMessage fx_Message = new OscMessage("/slice_bool");
      fx_Message.add(0); 
      oscSession.send(fx_Message, sonicPiOSCPort); 
  }
  
  float value_Sound = myKnobA.getValue()/2.55;
  myKnobA.setValueLabel(str(int(value_Sound)));
  
  
  
    //if c1 is pressed 
  if(mouseX > button_c_x1 && mouseX < button_c_x2+button_c_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released C";
   println(message);
   //draw_button("Sup", button_c_x1, button_c_y1, button_c_x1, button_c_y2, 0);
   c1_color = 255;
   masterTimer = 0; 
  }
  
  //if d1 is pressed 
  else if(mouseX > button_d_x1 && mouseX < button_d_x2+button_d_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released D";
   println(message);
   d1_color = 255;
   masterTimer = 0; 

  }
  //if e1 is pressing 
  else if(mouseX > button_e_x1 && mouseX < button_e_x2+button_e_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released E";
   println(message);
   e1_color = 255;
   masterTimer = 0; 

  }
  
  else if(mouseX > button_f_x1 && mouseX < button_f_x2+button_f_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released F";
   println(message);
   f1_color = 255;
   masterTimer = 0; 

  }
  
  else if(mouseX > button_g_x1 && mouseX < button_g_x2+button_g_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released G";
   println(message);
   g1_color = 255;
   masterTimer = 0; 

  }
  
  else if(mouseX > button_a_x1 && mouseX < button_a_x2+button_a_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released A";
   println(message);
   a1_color = 255;
   masterTimer = 0; 

  }
  else if(mouseX > button_b_x1 && mouseX < button_b_x2+button_b_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released B";
   println(message);
   b1_color = 255;
   masterTimer = 0; 

  }
  //if c1 is pressed 
  if(mouseX > button_c2_x1 && mouseX < button_c2_x2+button_c2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released C";
   println(message);
   //draw_button("Sup", button_c2_x1, button_c2_y1, button_c2_x1, button_c2_y2, 0);
   c2_color = 255;
   masterTimer = 0; 

  }
  
  //if d1 is pressed 
  else if(mouseX > button_d2_x1 && mouseX < button_d2_x2+button_d2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released D";
   println(message);
   d2_color = 255;
   masterTimer = 0; 

  }
  //if e1 is pressing 
  else if(mouseX > button_e2_x1 && mouseX < button_e2_x2+button_e2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released E";
   println(message);
   e2_color = 255;
    masterTimer = 0; 

  }
  
  else if(mouseX > button_f2_x1 && mouseX < button_f2_x2+button_f2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released F";
   println(message);
   f2_color = 255;
   masterTimer = 0; 

  }
  
  else if(mouseX > button_g2_x1 && mouseX < button_g2_x2+button_g2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released G";
   println(message);
   g2_color = 255;
    masterTimer = 0; 


  }
  
  else if(mouseX > button_a2_x1 && mouseX < button_a2_x2+button_a2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released A";
   println(message);
   a2_color = 255;

  }
  else if(mouseX > button_b2_x1 && mouseX < button_b2_x2+button_b2_x1 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio)
  {
   message = "You Released B";
   println(message);
   b2_color = 255;
   masterTimer = 0; 

  }  
  
  
  if(mouseX > button_d_x1 - button_margin*sharp_margin && mouseX < button_d_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { //C#
   message = "You Released C#"; 
   cs_color = 0; 
   masterTimer = 0; 
  }
  else if(mouseX > button_e_x1 - button_margin*sharp_margin && mouseX < button_e_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released D#"; 
   ds_color = 0; 
   masterTimer = 0; 

  }
  else if(mouseX > button_g_x1 - button_margin*sharp_margin && mouseX < button_g_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released F#"; 
   fs_color = 0; 
   masterTimer = 0; 

  }

  else if(mouseX > button_a_x1 - button_margin*sharp_margin && mouseX < button_a_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released G#"; 
   gs_color = 0; 
   masterTimer = 0; 

  }
  else if(mouseX > button_b_x1 - button_margin*sharp_margin && mouseX < button_b_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released A#"; 
   as_color = 0; 
   masterTimer = 0; 

  }
  
  //RELEASING ALL SHARP KEYS IN THE SECOND OCTAVE
  if(mouseX > button_d2_x1 - button_margin*sharp_margin && mouseX < button_d2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { //C#
   message = "You Released C#"; 
   cs2_color = 0; 
   masterTimer = 0; 
  }
  else if(mouseX > button_e2_x1 - button_margin*sharp_margin && mouseX < button_e2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released D#"; 
   ds2_color = 0; 
   masterTimer = 0; 

  }
  else if(mouseX > button_g2_x1 - button_margin*sharp_margin && mouseX < button_g2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released F#"; 
   fs2_color = 0; 
   masterTimer = 0; 

  }

  else if(mouseX > button_a2_x1 - button_margin*sharp_margin && mouseX < button_a2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released G#"; 
   gs2_color = 0; 
   masterTimer = 0; 

  }
  else if(mouseX > button_b2_x1 - button_margin*sharp_margin && mouseX < button_b2_x1 - button_margin*sharp_margin + displayWidth*widthRatio*.4 && mouseY > displayHeight - displayHeight*(heightRatio + bottom_margin) && mouseY < displayHeight - displayHeight*(heightRatio + bottom_margin) + displayHeight*heightRatio*.65) 
  { 
   message = "You Released A#"; 
   as2_color = 0; 
   masterTimer = 0; 

  }
  
  
  /**Set Volume Conditions on Mouse Release **/
  if (myKnobA.getValue() <= 3){ 
     Osc_Set_Volume(0.0);
  } else if (myKnobA.getValue() <= 42.5){ 
     Osc_Set_Volume(0.1);
  } else if (myKnobA.getValue() > 42.5 && myKnobA.getValue() <= 85){ 
     Osc_Set_Volume(0.2);
  } else if (myKnobA.getValue() > 85 && myKnobA.getValue() <= 127.5){ 
     Osc_Set_Volume(0.5);
  } else if (myKnobA.getValue() > 127.5 && myKnobA.getValue() <= 170){ 
     Osc_Set_Volume(0.7);
  } else if (myKnobA.getValue() > 170 && myKnobA.getValue() <= 212.5){ 
     Osc_Set_Volume(1.0);
  } else if (myKnobA.getValue() > 212.5 && myKnobA.getValue() <= 255){ 
     Osc_Set_Volume(1.3);
  }
  
  
}

void Osc_Set_Synth(int n){ 
     // create a new osc message container called /key
    OscMessage synth = new OscMessage("/synth");
    //println(myMessage);
    
    // add the code for the key we just pressed to the message
    synth.add(n);
    //println(myMessage);

    
    /* send the message */
    oscSession.send(synth, sonicPiOSCPort);
  
}


void Osc_Set_Volume(float n){ 
     // create a new osc message container called /key
    OscMessage volume = new OscMessage("/volume");
    //println(myMessage);
    
    // add the code for the key we just pressed to the message
    volume.add(n);
    //println(myMessage);

    
    /* send the message */
    oscSession.send(volume, sonicPiOSCPort);
  
}
