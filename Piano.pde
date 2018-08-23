//Import OSC and Network Libraries
import oscP5.*; 
import netP5.*;
import java.util.Map;
import controlP5.*;

int displayWidth = 1800; 
int displayHeight = int(displayWidth*0.5); 

/**My knob information for the amp and synth knobs **/
ControlP5 cp5;
int myColorBackground = color(0,0,0);
int knobValue = 100;
Knob myKnobA;
Knob myKnobB;

//Buttons
int octave = 0; 
boolean bit_btn = false;
boolean reverb_btn = false;
boolean slicer_btn = false;


//OSC Variables
OscP5 oscSession;
NetAddress sonicPiOSCPort;

float widthRatio = 0.06; 
float heightRatio = 0.55; 
float button_margin = 5;
float bottom_margin = 0.025;
float sharp_margin = displayWidth/315; 


int[] keyCodes = {9, 81, 87, 69, 82,84, 89, 85, 73,79, 80, 49, 50, 52, 53, 54, 56,57, 189, 187, 8};
int[] pitches = {60, 62, 64, 65, 67, 69, 71, 72, 74, 76, 77, 61, 63, 66, 68, 70, 73, 75, 78, 80, 82};
String [] key_odd = {"[", "]", "\\", "-", "="};
int[] pitches_odd = {79,81,83, 78, 80};
HashMap<Integer, Integer> keys_to_pitches = new HashMap <Integer,Integer>(); 
HashMap<String, Integer> keys_to_odd = new HashMap <String,Integer>(); 




int masterTimer = 0;
int secondTimer = 0; 
String message = ""; 

void setup() {
  size(displayWidth, displayHeight); //Draw the Frame
  frameRate(25); //Sets the Frame Rate, the speed at which the frame will change screens
  background(0,0,0); //Set the Background Color 

   /*Uses this to set the Title and Place it on the Top of the Screen */
  /**
  String title = "Piano-2390"; 
  textSize(32);
  text(title, displayWidth/2 - 80, displayHeight/8);**/
  textSize(displayWidth/56.25);
  String welcome = "Welcome to OSC-2390!";
  text(welcome, displayWidth*.6, displayHeight/8);
  
  textSize(displayWidth/100);
  String instructions = "Play the OSC-2390 in 2 easy steps: \n1. Place your hands on your third line of keys (the line starting with tab)\n2. Press down on keys from that line or click on keys for sound! \nChange the sound of keys with the Synth and FX buttons.";
  text(instructions, displayWidth*.55, displayHeight/5);
  
  /* start oscP5 session, listening for incoming messages at port 12000 */
  oscSession = new OscP5(this, 12000);
  sonicPiOSCPort = new NetAddress("127.0.0.1", 4559);   // Set up our outgoing port to Sonic Pi on port 4559

  //Make a Map of my keys and pitches 
  for (int i = 0; i < keyCodes.length; i++) {
    keys_to_pitches.put(keyCodes[i], pitches[i]);
  } 
  for (int j =0; j < key_odd.length; j++){ 
    keys_to_odd.put(key_odd[j], pitches_odd[j]); //Will take the notes that currently arent playing and play
  }


  //DRAW KNOBS 
  cp5 = new ControlP5(this);
  
  myKnobA = cp5.addKnob("Volume")
               .setRange(0,255)
               .setValueLabel("50")
               .setValue(150)
               .setPosition(displayWidth/15, displayHeight/6)
               .setRadius(displayWidth/30)
               .setDragDirection(Knob.VERTICAL)
               ;
                     
  myKnobB = cp5.addKnob("Synth")
               .setRange(0,255)
               .setValueLabel("Piano")
               .setValue(25)
               .setPosition(displayWidth/4.25,displayHeight/6)
               .setRadius(displayWidth/30)
               .setNumberOfTickMarks(10)
               .setTickMarkLength(4)
               .snapToTickMarks(true)
               .setColorForeground(color(255))
               .setColorBackground(color(0, 160, 100))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
 
  
}

void draw() { 
  draw_button("C", button_c_x1, button_c_y1, button_c_x2, button_c_y2, c1_color);
  draw_button("D", button_d_x1, button_d_y1, button_d_x2, button_d_y2, d1_color);
  draw_button("E", button_e_x1, button_e_y1, button_e_x2, button_e_y2, e1_color);
  draw_button("F", button_f_x1, button_f_y1, button_f_x2, button_f_y2, f1_color);
  draw_button("G", button_g_x1, button_g_y1, button_g_x2, button_g_y2, g1_color);
  draw_button("A", button_a_x1, button_a_y1, button_a_x2, button_a_y2, a1_color);
  draw_button("B", button_b_x1, button_b_y1, button_b_x2, button_b_y2, b1_color);
  //draw_button("CENTER", displayWidth/2, 10, 1, 700, 255);
  //Second Octave of Buttons
  draw_button("C", button_c2_x1, button_c2_y1, button_c2_x2, button_c2_y2, c2_color);
  draw_button("D", button_d2_x1, button_d2_y1, button_d2_x2, button_d2_y2, d2_color);
  draw_button("E", button_e2_x1, button_e2_y1, button_e2_x2, button_e2_y2, e2_color);
  draw_button("F", button_f2_x1, button_f2_y1, button_f2_x2, button_f2_y2, f2_color);
  draw_button("G", button_g2_x1, button_g2_y1, button_g2_x2, button_g2_y2, g2_color);
  draw_button("A", button_a2_x1, button_a2_y1, button_a2_x2, button_a2_y2, a2_color);
  draw_button("B", button_b2_x1, button_b2_y1, button_b2_x2, button_b2_y2, b2_color);

//Drawing the Sharps 
  draw_button("C#", button_cs_x1, button_cs_y1, button_cs_x2, button_cs_y2, cs_color);
  draw_button("D#", button_ds_x1, button_ds_y1, button_ds_x2, button_ds_y2, ds_color);
  draw_button("F#", button_fs_x1, button_fs_y1, button_fs_x2, button_fs_y2, fs_color);
  draw_button("G#", button_gs_x1, button_gs_y1, button_gs_x2, button_gs_y2, gs_color);
  draw_button("A#", button_as_x1, button_as_y1, button_as_x2, button_as_y2, as_color);
  
  draw_button("C#", button_cs2_x1, button_cs2_y1, button_cs2_x2, button_cs2_y2, cs2_color);
  draw_button("D#", button_ds2_x1, button_ds2_y1, button_ds2_x2, button_ds2_y2, ds2_color);
  draw_button("F#", button_fs2_x1, button_fs2_y1, button_fs2_x2, button_fs2_y2, fs2_color);
  draw_button("G#", button_gs2_x1, button_gs2_y1, button_gs2_x2, button_gs2_y2, gs2_color);
  draw_button("A#", button_as2_x1, button_as2_y1, button_as2_x2, button_as2_y2, as2_color);
  

  
  
  
  //Draw Details for Board 
  stroke(255);
  
  textSize(displayWidth/65);
  line(displayWidth * 0.05, displayHeight*0.025,displayWidth*0.95, displayHeight*0.025);
  text("Volume", displayWidth/14, displayHeight/8);
  text("Synth", displayWidth/4, displayHeight/8);
  text("FX", displayWidth/2.25, displayHeight/8);

  //FX Buttons -- right a new draw button for these buttons
  draw_button(str(octave), displayWidth/2.5, displayHeight/5.5, displayWidth/50, displayHeight/45, 150);
  draw_button("▲", displayWidth/2.5, displayHeight/6.4, displayWidth/50, displayHeight/45, 150);
  draw_button("▼", displayWidth/2.5, displayHeight/4.8, displayWidth/50, displayHeight/45, 150);
  textSize(displayWidth/75);
  text("Octaver", displayWidth/2.25, displayHeight/5.5);
  
  textSize(displayWidth/100); 
  text("Range -3 to 3", displayWidth/2.3, displayHeight/4.7);
  
  
  textSize(displayWidth/75);

  fill(255,255,255);
  rect(displayWidth/2.5, displayHeight/4, displayWidth/50, displayWidth/50, 7); 
  if (bit_btn == true){ 
    fill(255,0,0); 
    //text("o", displayWidth/2.5, displayHeight/4);
    rect(displayWidth/2.5, displayHeight/4, displayWidth/50, displayWidth/50, 360);
  }
  fill(0,0,255);
  text("Bitcrusher", displayWidth/2.25, displayHeight/3.6);

  fill(255,255,255);
  rect(displayWidth/2.5, displayHeight/3.36, displayWidth/50, displayWidth/50, 7); 
  if (reverb_btn == true){ 
    fill(255,0,0); 
    rect(displayWidth/2.5, displayHeight/3.36, displayWidth/50, displayWidth/50, 360);
  }
  fill(0,0,255);
  text("Echo", displayWidth/2.25, displayHeight/3.1);

  fill(255,255,255);
  rect(displayWidth/2.5, displayHeight/2.9, displayWidth/50, displayWidth/50, 7);
  if (slicer_btn == true){ 
    fill(255,0,0); 
    rect(displayWidth/2.5, displayHeight/2.9, displayWidth/50, displayWidth/50, 360);
  }
  fill(0,0,255);
  text("Slicer", displayWidth/2.25, displayHeight/2.7);


  
  
  /**Because frameRate(30)
  30 run times == 1 second
  10 run times == .33 seconds 
  5 run times == .16 seconds   
  **/
  

  
  if (a1_color < 255 | b1_color < 255 | c1_color < 255 | d1_color < 255 | e1_color < 255 | f1_color < 255 | g1_color < 255) { 
   masterTimer += 10;
   if (masterTimer > 450){ 
     a1_color = 255;
     b1_color = 255;
     c1_color = 255;
     d1_color = 255;
     e1_color = 255;
     f1_color = 255;
     g1_color = 255;
     masterTimer = 0;
    }
  }
  
  if (a2_color < 255 | b2_color < 255 | c2_color < 255 | d2_color < 255 | e2_color < 255 | f2_color < 255 | g2_color < 255) { 
   masterTimer += 10;
   if (masterTimer > 450){ 
     a2_color = 255;
     b2_color = 255;
     c2_color = 255;
     d2_color = 255;
     e2_color = 255;
     f2_color = 255;
     g2_color = 255;
     masterTimer = 0;
    }
  }
  
  
  
  if (as2_color < 255 |  cs2_color < 255 | ds2_color < 255 | fs2_color < 255 | gs2_color < 255) { 
   masterTimer += 10;
   if (masterTimer > 400){ 
     as2_color = 0;
     cs2_color = 0;
     ds2_color = 0;
     fs2_color = 0;
     gs2_color = 0;
     masterTimer = 0;
    }
  }
  
  if (g2_color < 255 | a2_color < 255 | b2_color < 255 | fs2_color > 0 | gs2_color > 0){ 
   secondTimer += 10; 
   if (secondTimer > 400) { 
   g2_color = 255; 
   a2_color = 255; 
   b2_color = 255; 
   fs2_color = 0;    
   gs2_color = 0; 
   }
  }
  
  if (as_color < 55 |  cs_color < 55 | ds_color < 55 | fs_color < 55 | gs_color < 55) { 
   masterTimer += 10;
   if (masterTimer > 400){ 
     as_color = 0;
     cs_color = 0;
     ds_color = 0;
     fs_color = 0;
     gs_color = 0;
     masterTimer = 0;
    }
  }
  
  textSize(displayHeight/90); 
  //text("1 = Piano   2 = Prophet   3 = Dark Ambience\n 4 = IDK 5 = Kick Drum 6 = Snare Drum", displayWidth/4.7, displayHeight/2.75);


} 

void draw_button(String _text, float x1, float y1, float x2, float y2, color button_color) { 
  fill(button_color);
  
  noStroke(); 
  
  rect(x1, y1, x2, y2); 
  
  strokeWeight(3); 

  stroke(0,255, 0);
  /*Right now I cannot get the Lines to outline the button -- will work on it later */
  //top of the button 
  //line(x1, y1, x2, y1);
  //left of the button 
  //line(x1, y1, x1, y2);
  
  stroke(0); 

  /*CONTAINS THE TEXT COLOR FOR THE DRAW BUTTON FUNCTION**/
  fill(0,0,255);
  textSize(displayWidth/80);
  text(_text, x1 + x2/4, y1 + y2*.95); 
  
}

//MouseDown Play OSC 

void Osc_Message_Click(int n){ 
  
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
    
    //println(n);
    //if octaver is on
    n = octave*(12) + n;  
  
  
    // create a new osc message container called /key
    OscMessage myMessage = new OscMessage("/key");
    //println(myMessage);
    
    // add the code for the key we just pressed to the message
    myMessage.add(n);
    //println(myMessage);

    
    /* send the message */
    oscSession.send(myMessage, sonicPiOSCPort);
}

void Osc_Message_Key(int n){ 
    println(n);
    //if octaver is on
    
    n = octave*(12) + n;  
  
  
    // create a new osc message container called /key
    OscMessage myMessage = new OscMessage("/key");
    //println(myMessage);
    
    // add the code for the key we just pressed to the message
    myMessage.add(n);
    //println(myMessage);

    
    /* send the message */
    oscSession.send(myMessage, sonicPiOSCPort);
}
