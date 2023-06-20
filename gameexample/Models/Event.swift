//
//  Event.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/19/23.
//

import Foundation
import SwiftUI

class Event: Identifiable {
    let id = UUID()
    
    var story: storyThing
    init(story: storyThing) {
        self.story = story
    }
    static var events:[Event] = [Event(story: storyThing(text: "The main floor is stark and unfeeling. A simulation of a receptionist sits behind the desk. It's after hours so the program doesn’t appear to be active. All that is in the room is a painting on the wall and a monstera plant tucked into the corner.", choice:
                                                            [Choice(description: "Investigate the receptionist"),
                                                             
                                                             Choice(description: "Look closer at the picture", nextStoryThing: storyThing(text: "A picture of two people smiling outside of a small building. Living Innovations is marked on the sign above them. A muscle bound man with soft eyes and salt n’ pepper hair stands next to a rigid and thing woman with jet black curly hair tossed into a messy bun giving a slight smile. ", choice: [Choice(description: "Step away from painting")], storyType: .decision)),
                                                             
                                                             
                                                             
                                                             Choice(description: "Investigate the plant", nextStoryThing: storyThing(text: "You touch one of the leaves of the plant. Its fake, like you assumed. Real plants are only kept in government controlled green houses due to their endangerment. Even Nova Corp couldn’t afford a a real one.", choice: [Choice(description: "Pull a leaf off the stem"), Choice(description: "Leave the plant alone")], storyType: .decision))],
                                                         storyType: .decision)), Event(story: storyThing(text: "You find yourself in a waiting room, likely used for their unknowing test subjects. People coming in sold a dream of healing and help only to be stolen away or ending up worse than they were when they came in. You notice something shiny stuck between two of the couch cushions",
                                                                                                         choice: [Choice(description: "Reade magazines on table", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Continue Reading", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Continue Reading", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Put down magazine")], storyType: .decision)), Choice(description: "You put the magazine back down on the table")], storyType: .decision)), Choice(description: "Put down magazine")], storyType: .decision)),
                                                                                                                  Choice(description: "Investigate shiny object", nextStoryThing: storyThing(text: "You find a stick of gum and from the shiny wrapper you know this to be Ultrasonic Smile, a very popular gum brand that touts being able to make teeth shinier after one chew", choice: [Choice(description: "Pop the piece of gum in your mouth"), Choice(description: "Decide you don't trust this couch gum")], storyType: .decision))], storyType: .decision)), Event(story: storyThing(text: "An empty conference room. A long table with 6 chairs on each side perfectly equidistant from each other. A low hum from a holo projecter displaying a still screen of the Radient Nova logo.  It all seems too perfect.", choice: [Choice(description: "Turn off the projecter", nextStoryThing: storyThing(text: "You gently hit the power button on the projector but instead of turning off the screen switches to an angry robotic face. You hear “Hey, you! Don’t touch me!", choice: [Choice(description: "Hit the power button again", nextStoryThing: storyThing(text: "You hit the power button for a third time and feel in your chest that you have made a grave mistake. The whole room starts to rumble and shake. Alarms start to blare and shutters come down trapping you in the room. The face on the screen turns into a deep menacing smile, “You’re mine now.”", choice: [], storyType: .decision)), Choice(description: "Apologize and don't touch the button")], storyType: .decision))], storyType: .decision)), Event(story: storyThing(text: "The door slide open but before you can truely get a good look at its contents you hear the sound someone coming down the hallway. You quickly turn to the first things you see for a hiding place. A giant tube, a desk and a ", choice: [Choice(description: "Hide in tube", nextStoryThing: storyThing(text: "You quickly hop into the metallic tube and stand as ridgid and statue-like as you can hoping no one hear the door close behind you. There is no way to see what is happening outside so ow the question is how long do you wait before you get out?", choice: [Choice(description: "Wait 5 minutes"), Choice(description: "Wait 15 minutes")], storyType: .decision)), Choice(description: "Crouch under desk", nextStoryThing: storyThing(text: "You move the chairs, looking under the table and in every nook and cranny. It seems as if your time spent searching was pointless until you find small indentation in the arm rest of the last chair. The object inside is pushed deep into the indent.", choice: [Choice(description: "Gently attempt to remove the object"), Choice(description: "Forcibly tear open arm rest")], storyType: .decision))], storyType: .decision)), Event(story: storyThing(text: "You find yourself in one of the testing labs, treadmills, heart monitors, clipboards and all variety of measurement tools in every corner of the space.", choice: [Choice(description: "Read the clipboards for any valuable information", nextStoryThing: storyThing(text: "The clipboard has notes and statistics on a “Volunteer #486M”", choice: [Choice(description: "Read next section", nextStoryThing: storyThing(text: "One the next page you find a page notating the different scheduled maintenence for the lab and different areas of the building. It notes different items in the lab that are inoperable or due for updates. The Cryo Compensator is on the list as top priority.", choice: [Choice(description: "Put down clipboard")], storyType: .decision)), Choice(description: "Set the clipboard back down")], storyType: .decision)),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Choice(description: "take a roll of gauze", nextStoryThing: storyThing(text: "You find the foll of gauze in your Futron Pouch. Hopefully this wil lcome in handy later.", choice: [Choice(description: "collect", item: Item(itemName: "Gauze", itemDescription:"This will patch up any cuts and stuff you may get along your journey"))], storyType: .decision)),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Choice(description: "Run on treadmill", nextStoryThing: storyThing(text: "You start to run on the treadmill, an odd choice in the middle of a rescue mission but you’ve always been an odd duck. ", choice: [Choice(description: "Run for 20 minutes")], storyType: .decision)), Choice(description: "Run for 60 minutes")], storyType: .decision)), Event(story: storyThing(text: "You walk into a small office, whoever works here is definitely not high up on the totem pole but maybe there is something in here that can help you. A Quadtronic 3000 computer and a holo-file cabinet pique your interest. ", choice: [Choice(description: "Search Quadtronic 3000", nextStoryThing: storyThing(text: "You sit down at the computer and the screen flashes “FACIAL RECOGNITION REQUIRED”. Foolish to think that Nova Corp wouldn’t keep their secrets locked up tight but maybe you can hack your way in. ", choice: [Choice(description: "Attempt to hack in", nextStoryThing: storyThing(text: "You crack your knuckles and get to work. Numbers and code fly by on the holo screen and one after another manuever through the blockades and firewalls.", choice: [Choice(description: "𝔩:𝔦𝔩10:1:𝔩01:1;𝔦10:0:𝔏10:𝔩0𝔩;10;ℑ1" , nextStoryThing: storyThing(text: "After an intense battle between human and machine, human has won. You’ve cracked the code and", choice: [], storyType: .decision)), Choice(description: ":̶̬̺̤̱̑̓̈́̈́͜0̴̨̻̍͒̌̀̅̑͒͝1̷̻̹̘͖̆;̴̘̫̳̦̠̘̂̈͊̐ǐ̷̠͑̓̕͝1̴̧̤̮͂̂̎̑̑̈́̀͋͝͝l̷̜̻͒͌͌̀0̷͎̲̫̱̩͔̥̓̓̿̄̓̾1̴̨̪͖̥̙͎̤̆͒͜:̶͍͖̟̣̞͕̈́̔͑̏̾̽0̵̙̬͉̀̾͗͗̄͑1̶̢̪̣̱̫͉̫̬̜̝̄͌̄l̵̗̀͒̀́̚1̸̛͚̘̝̞̳̬̮̀͐̈́͋̈̅̕1̷̧̼̬̺̼̘͙̰͋̒̏̇̿̽͝͝0̷̛͖̠̦̾̒̊̈́̍̾̆͝1̶͙͈̭̹̤͙̑̍͠0̵͓̗͉̞̲͇̖̝̦͉̓̾;̴̙̟̙̣̜̠͓͈͉͆̿̅͊͐͘1̷̛͔͔͙͙̟͚̗̌͝ͅ0̵̛͕̠̼͔͍̗̫̀͆̾͊͌̒̎̈̚:̷̡̨̘̭̪̮͓͚̮͂̇̒̂͊ĭ̷͈͚̪̼̞̠͙̩͓̀͋̏͒̏͝1̶̡̣̫̦̗̣̘̪̣͒͑̄͋̉̑̈́l̸̢͙̹̥͈͍̰̺̥͊̊͆̓̉̚ͅ;̸̧͓̝̯̰̪̙̟̑", nextStoryThing: storyThing(text: "You do your best but the systems are just too much for you to handle. Before you know it alarms ring out and guards yell from outside the door.", choice: [], storyType: .decision))], storyType: .decision)), Choice(description: "Leave the computer alone")], storyType: .decision)), Choice(description: "Search holo-file cabinet", nextStoryThing: storyThing(text: "You search through drawers, looking for anything that could aid you in your journey but you know that these cabinets usually require passwords for sensitive information.", choice: [Choice(description: "Look in top cabinet"), Choice(description: "Look in bottom cabinet")], storyType: .decision))], storyType: .decision)), Event(story: storyThing(text: "You hear the sound of foot steps behind you. You try to duck away but they spot you. “Who’s there! You’re not supposed to be in here!”", choice: [Choice(description: "Tell him you are the maintenence man here to fix the Cryo Compensator in the lab(CHA)"), Choice(description: "Offer them an item you found"), Choice(description: "Beat him up(STR)")], storyType: .decision)), Event(story: storyThing(text: "The door opens to a laboratory, test tubes, syringes and beakers surround you on the desks. You can still smell some the chemical residue in the air. You notice three beakers, one with a blue liquid that smells of peppermints, one with a purple liquid that moves in the beaker like a lava lamp and the final one a green liquid seems to be boiling but is ice cold when you touch the beaker.", choice: [Choice(description: "Drink the blue liquid", nextStoryThing: storyThing(text: "The liquid moves slowly but eventually drops from the beaker onto your tongue. The second you taste it you know you’ve made an unfortunate mistake. It tastes like rotten fish and burnt rubber. You stomach immediately flips and you run to the nearest sink. You release all contents of your stomach and its not a fun time but at least your vomit is colored a sparkling blue as it comes out.(-1 CHA)", choice: [], storyType: .decision)), Choice(description: "Drink the purple liquid", nextStoryThing: storyThing(text: "You take the risk and drink the concoction. It smells good so it must be good right? The liquid hits your tongue and it taste like water, you’re pleasantly surprised. You feel your blood start to boil and your heart pumps faster but this only last for a moment. You collect yourself and look at your arms they look a bit bigger and more toned. Good choice(+1 STR) ", choice: [], storyType: .decision)), Choice(description: "Drink the green liquid", nextStoryThing: storyThing(text: "You take a big swig and immediately get brain freeze. It takes a few minutes to shake off the feeling and can feel a surge of energy, thoughts and knowledge get uploaded to your brain. Maybe it is okay to drink unkown liquids sometimes.(+1 INT)", choice: [], storyType: .decision))], storyType: .decision))]
}
