/***************************** Created by the RE4Central Development Team ******************************************
********************** Credits: Austin Davenport, Jonathan Strickland, Wipefinger, & Ricky Marske *********************/

//  Resident Evil 4: Full Game Load Removed Edition

// 			Disclaimer/Instructions:
//			For Main Game you need to use 19 splits when using this autosplitter
//			For Separate Ways you need to use 5 splits when using this autosplitter
// 			For Assignment Ada you need to use 6 splits and cannot use any item or open the inventory after opening the final door in the radio tower
//			For all cateogries you will need to set your timer to compare to Game Time


// Initialize the game and check for which version is being used
state("bio4")
{
	// In case of Unkown Steam version, use the most recent one
	uint hp : 0x85F714;				// Ada's health amount
	uint igt : 0x85F704;			// Current In Game Time
	uint finalIGT : 0xE7E23C;		// Final In Game Time
	uint isEndOfChapter : 0x867BA0; // End of Chapter
	uint loadingScreen : 0x858F8C;	// The loading screen
	uint map : 0xCED6DC;			// Map screen
	uint pauseMenu : 0x879A98;		// The pause menu screen
	uint mainMenu : 0x82CADC;		// Main menu screen
	
	uint fslPlaga : 0x85F9EC;		// First, second, and last plaga
	uint operate : 0x850300;		// The operate command on button presses
	uint subtitle : 0x817840;		// Subtitles on the screen
	uint tfPlaga : 0x85F9F0;		// Third and fourth plaga
	
	uint overtime : 0x8594B8;		// The overtime cutscene
	uint startMG : 0x85F710; 		// changes to 288 for NG and NG+ after the intro
	
	uint swEnd : 0x867BDC;			// Ending cutscene in SW
}
state("bio4","1.1.0")
{
	// Steam version 1.1.0
	uint hp : 0x85F714;				// Ada's health amount
	uint igt : 0x85F704;			// Current In Game Time
	uint finalIGT : 0xE7E23C;		// Final In Game Time
	uint isEndOfChapter : 0x867BA0; // End of Chapter
	uint loadingScreen : 0x858F8C;	// The loading screen
	uint map : 0xCED6DC;			// Map screen
	uint pauseMenu : 0x879A98;		// The pause menu screen
	uint mainMenu : 0x82CADC;		// Main menu screen
	
	uint fslPlaga : 0x85F9EC;		// First, second, and last plaga
	uint operate : 0x850300;		// The operate command on button presses
	uint subtitle : 0x817840;		// Subtitles on the screen
	uint tfPlaga : 0x85F9F0;		// Third and fourth plaga
	
	uint overtime : 0x8594B8;		// The overtime cutscene
	uint startMG : 0x85F710; 		// changes to 288 for NG and NG+ after the intro
	
	uint swEnd : 0x867BDC;			// Ending cutscene in SW
}

state("bio4","1.0.6")
{
	// Steam version 1.0.6
	uint hp : 0x85BE94;				// Ada's health amount
	uint igt : 0x85BE84;			// Current In Game Time
	uint finalIGT : 0xE7A9BC;		// Final In Game Time
	uint isEndOfChapter : 0x864310; // End of Chapter
	uint loadingScreen : 0x85570C;	// The loading screen
	uint map : 0xCE9E5C;			// Map screen
	uint pauseMenu : 0x876218;		// The pause menu screen
	uint mainMenu : 0x82926C;		// Main menu screen
	
	uint fslPlaga : 0x85C16C;		// First, second, and last plaga
	uint operate : 0x84CA80;		// The operate command on button presses
	uint subtitle : 0x814030;		// Subtitles on the screen
	uint tfPlaga : 0x85C170;		// Third and fourth plaga
	
	uint costume : 0x85BEAC;		// Costume select screen
	uint overtime : 0x855C38;		// The overtime cutscene
	uint startMG : 0x85BE90; 		// changes to 288 for NG and NG+ after the intro
	
	uint swEnd : 0x86434C;			// Ending cutscene in SW
}
state("bio4", "1.0.2")
{
	// Steam BETA version 1.0.2
	uint hp : 0x8398B4;				// Ada's health amount
	uint igt : 0x8398A4;			// Current In Game Time
	uint finalIGT : 0xE5822C;		// Final In Game Time
	uint isEndOfChapter : 0x841D30;	// End of Chapter Screen
	uint loadingScreen : 0x833134;	// The loading screen
	uint map : 0xCC781C;			// Map screen
	uint pauseMenu : 0x853C38;		// The pause menu screen
	uint mainMenu : 0x807214;		// Main menu screen
	
	uint fslPlaga : 0x839B8C;		// First, second, and last plaga
	uint operate : 0x82A4C0;		// The operate command on button presses
	uint subtitle : 0x7F2010;		// Subtitles on the screen
	uint tfPlaga : 0x839B90;		// Third and fourth plaga
	
	uint costume : 0x8398CC;		// Costume select screen
	uint overtime : 0x833658;		// The overtime cutscene
	uint startMG : 0x8398B0; 		// changes to 288 for NG and NG+ after the intro
	
	uint swEnd : 0x841D6C;			// Ending cutscene in SW
}

init
{
	// Check the Version of the Game
    version = modules.First().FileVersionInfo.FileVersion;
		if (version ==  "1.0.18384.3" || version == "1.0.18384.2" || version == "1.0.18384.1"){
			version = "1.0.6";		// Set the version to 1.0.6
		}
		else if (version ==  "1.0.13328.3" || version == "1.0.13328.2" || version == "1.0.13328.1"){
			version = "1.0.2";		// Set the version to 1.0.2 (BETA)
		}
		else if (version ==  "1.0.0.0" || version == "1.0.0RELEASE_DEV.0"){
			version = "1.1.0";		// Set the version to 1.1.0
		}
		else {
			version = "";			// Use the 1.1.0 Version as Default
		}
	
	// Set inital values to 0
	vars.door = 0;					// The control tower door
	vars.sampleOne = 0;				// Plaga sample #1
	vars.sampleTwo = 0;				// Plaga sample #2
	vars.sampleThree = 0;			// Plaga sample #3
	vars.sampleFour = 0;			// Plaga sample #4
	vars.sampleFive = 0;			// Plaga sample #5
	vars.gameMode = 0;				// Set the game mode to None = 0, AA = 1, MG = 2 or SW = 3
	vars.swEOCBool = 0;				// Boolean for the SW End of Chapter screens
	vars.chapter = 0;				// Integer for the Current Chapter
}

startup
{
	settings.Add("gameMode",true, "Game Modes");
	settings.SetToolTip("gameMode", "Do not uncheck this box");
	settings.CurrentDefaultParent = "gameMode";
	settings.Add("MG", true, "Main Game");
	settings.SetToolTip("MG", "Check this Option if you want to run NG or NG+");
	
	settings.CurrentDefaultParent = "MG";
	settings.Add("splitsMG", true, "Autosplitter");
	settings.SetToolTip("splitsMG", "Check this Option if you want to use the Autosplitting feature.  You can choose your Splits below");
	
	settings.CurrentDefaultParent = "splitsMG";
	settings.Add("chaptersMG", true, "Chapters");
	settings.SetToolTip("chaptersMG", "Check this Option if you want to Autosplit on Chapters");
	settings.CurrentDefaultParent = "chaptersMG";
	settings.Add("chapter1MG",true,"Chapter 1-1");
	settings.Add("chapter2MG",true,"Chapter 1-2");
	settings.Add("chapter3MG",true,"Chapter 1-3");
	settings.Add("chapter4MG",true,"Chapter 2-1");
	settings.Add("chapter5MG",true,"Chapter 2-2");
	settings.Add("chapter6MG",true,"Chapter 2-3");
	settings.Add("chapter7MG",true,"Chapter 3-1");
	settings.Add("chapter8MG",true,"Chapter 3-2");
	settings.Add("chapter9MG",true,"Chapter 3-3");
	settings.Add("chapter10MG",true,"Chapter 3-4");
	settings.Add("chapter11MG",true,"Chapter 4-1");
	settings.Add("chapter12MG",true,"Chapter 4-2");
	settings.Add("chapter13MG",true,"Chapter 4-3");
	settings.Add("chapter14MG",true,"Chapter 4-4");
	settings.Add("chapter15MG",true,"Chapter 5-1");
	settings.Add("chapter16MG",true,"Chapter 5-2");
	settings.Add("chapter17MG",true,"Chapter 5-3");
	settings.Add("chapter18MG",true,"Chapter 5-4");
	settings.Add("chapter19MG",true,"Final Split (always active)");
	
	settings.CurrentDefaultParent = "gameMode";
	settings.Add("SW", true, "Separate Ways");
	settings.SetToolTip("SW", "Check this Option if you want to run Separate Ways");
	settings.CurrentDefaultParent = "SW";
	settings.Add("splitsSW", true, "Autosplitter");
	settings.SetToolTip("splitsSW", "Check this Option if you want to use the Autosplitting feature.  You can choose your Splits below");
	
	settings.CurrentDefaultParent = "splitsSW";
	settings.Add("chaptersSW", true, "Chapters");
	settings.SetToolTip("chaptersSW", "Check this Option if you want to Autosplit on Chapters");
	settings.CurrentDefaultParent = "chaptersSW";
	settings.Add("chapter1SW",true,"Chapter 1");
	settings.Add("chapter2SW",true,"Chapter 2");
	settings.Add("chapter3SW",true,"Chapter 3");
	settings.Add("chapter4SW",true,"Chapter 4");
	settings.Add("chapter5SW",true,"Final Split (always active)");
	
	settings.CurrentDefaultParent = "gameMode";
	settings.Add("AA", true, "Assignment Ada");
	settings.SetToolTip("AA", "Check this Option if you want to run Assignment Ada");
	settings.CurrentDefaultParent = "AA";
	settings.Add("splitsAA", true, "Autosplitter");
	settings.SetToolTip("splitsAA", "Check this Option if you want to use the Autosplitting feature.  You can choose your Splits below");
	
	settings.CurrentDefaultParent = "splitsAA";
	settings.Add("samplesAA", true, "Plaga Samples");
	settings.SetToolTip("samplesAA", "Check this Option if you want to Autosplit on Plaga Samples");
	settings.CurrentDefaultParent = "samplesAA";
	settings.Add("sample1",true,"Plaga Sample 1");
	settings.Add("sample2",true,"Plaga Sample 2");
	settings.Add("sample3",true,"Plaga Sample 3");
	settings.Add("sample4",true,"Plaga Sample 4");
	settings.Add("sample5",true,"Plaga Sample 5");
	settings.Add("chopper",true,"Final Split (always active)");
	
	settings.CurrentDefaultParent = null;
	settings.Add("options",true, "Options");
	settings.CurrentDefaultParent = "options";
	settings.Add("LR",false,"Load Remover / RE4C Timer");
	settings.SetToolTip("LR", "Check this Option if you want to use the Load Remover / RE4C Timing feature");
	settings.Add("Any",false, "Save & Quit Mode");
	settings.SetToolTip("Any", "Check this Option if you want to run the Save & Quit Category");
}

start
{
	// Check to see if Assignment Ada is running and we aren't in the main menu
	// Timer starts after the opening text on screen has disappeared
	if (old.subtitle == 1 && current.subtitle == 0 && current.hp == 102237720 && settings["AA"]){
		// Set inital values to 0
		vars.door = 0;				// The control tower door
		vars.sampleOne = 0;			// Plaga sample #1
		vars.sampleTwo = 0;			// Plaga sample #2
		vars.sampleThree = 0;		// Plaga sample #3
		vars.sampleFour = 0;		// Plaga sample #4
		vars.sampleFive = 0;		// Plaga sample #5
		vars.gameMode = 1;			// Set AA mode to on
		return true;
	}
  
	// Check to see if the Main Game is running and we aren't in the main menu
	if (current.startMG == 288 && old.loadingScreen == 0 && current.loadingScreen == 20 && settings["MG"]){
		vars.gameMode = 2;			// Set MG mode to on
		vars.chapter = 0;			// Set the current Chapter to 0
		return true;
	}
	
	// Check to see if Separate Ways is running and we aren't in the main menu
	if (old.map == 1 && current.map == 0 && settings["SW"]){
		// Set inital values to 0
		vars.gameMode = 3;			// Set SW mode to on
		vars.swEOCBool = 0;			// Set SW EoC boolean to off
		vars.chapter = 0;			// Set the current Chapter to 0
		return true;
	}
}

update
{
	// Check to see if we are at the End of Chapter screens in SW
	if(old.isEndOfChapter == 0 && current.isEndOfChapter == 256 && vars.gameMode == 3){
		vars.swEOCBool = 1;			// Set boolean to on
	}
	// Set the boolean back to 0 after you skip the Map screen
	if(old.map == 1 && current.map == 0 && vars.gameMode == 3){
		vars.swEOCBool = 0;
	}
}

reset
{
   // Reset timer when the IGT equals 0
	if((!settings["Any"] || vars.gameMode != 2) && (old.igt > 0 && current.igt == 0 || current.hp == 0 && old.hp > current.hp)){
		vars.swEOCBool = 0;
		vars.gameMode = 0;
		vars.chapter = 0;
		return true;
	}
}

isLoading
{
	// Check if the game is loading and pause the timer if so
	if(((current.loadingScreen == 0 || current.loadingScreen == 120 || current.loadingScreen == 15 || current.pauseMenu == 256 || current.isEndOfChapter == 256 || vars.swEOCBool == 1 || current.map == 1) && vars.gameMode == 3 && settings["LR"])
		|| ((current.loadingScreen == 0 || current.loadingScreen == 120 || current.loadingScreen == 15 || current.pauseMenu == 256 || current.isEndOfChapter == 256 || current.map == 1) && vars.gameMode == 2 && settings["LR"] && !settings["Any"])
		|| ((current.loadingScreen == 0 || current.loadingScreen == 120 || current.loadingScreen == 15) && vars.gameMode == 1 && settings["LR"])
		|| ((current.loadingScreen == 0 || current.loadingScreen == 120 || current.loadingScreen == 15) && current.mainMenu == 1 && vars.gameMode == 2 && settings["LR"] && settings["Any"])){
		return true;
	}
	else{
		return false;
	}
}

gameTime
{
	// Check if Load Remover Mode is not active
	if (!settings["LR"] && vars.gameMode != 1)
	{
	if (current.igt != old.igt || current.igt == current.finalIGT) 
	{
        return TimeSpan.FromSeconds(current.igt);
    }
	}
}


split
{
	// Main Game and Separate Ways
		
		// Split if we ended a chapter
		if(current.isEndOfChapter - old.isEndOfChapter == 256 && vars.gameMode == 3){
			vars.chapter = (vars.chapter + 1);
			if (settings["chapter1SW"] && vars.chapter == 1)
			{
			return true;
			}
			if (settings["chapter2SW"] && vars.chapter == 2)
			{
			return true;
			}
			if (settings["chapter3SW"] && vars.chapter == 3)
			{
			return true;
			}
			if (settings["chapter4SW"] && vars.chapter == 4)
			{
			return true;
			}
			if (settings["chapter5SW"] && vars.chapter == 5)
			{
			return true;
			}
		}
		if(current.isEndOfChapter - old.isEndOfChapter == 256 && vars.gameMode == 2){
			vars.chapter = (vars.chapter + 1);
			if (settings["chapter1MG"] && vars.chapter == 1)
			{
			return true;
			}
			if (settings["chapter2MG"] && vars.chapter == 2)
			{
			return true;
			}
			if (settings["chapter3MG"] && vars.chapter == 3)
			{
			return true;
			}
			if (settings["chapter4MG"] && vars.chapter == 4)
			{
			return true;
			}
			if (settings["chapter5MG"] && vars.chapter == 5)
			{
			return true;
			}
			if (settings["chapter6MG"] && vars.chapter == 6)
			{
			return true;
			}
			if (settings["chapter7MG"] && vars.chapter == 7)
			{
			return true;
			}
			if (settings["chapter8MG"] && vars.chapter == 8)
			{
			return true;
			}
			if (settings["chapter9MG"] && vars.chapter == 9)
			{
			return true;
			}
			if (settings["chapter10MG"] && vars.chapter == 10)
			{
			return true;
			}
			if (settings["chapter11MG"] && vars.chapter == 11)
			{
			return true;
			}
			if (settings["chapter12MG"] && vars.chapter == 12)
			{
			return true;
			}
			if (settings["chapter13MG"] && vars.chapter == 13)
			{
			return true;
			}
			if (settings["chapter14MG"] && vars.chapter == 14)
			{
			return true;
			}
			if (settings["chapter15MG"] && vars.chapter == 15)
			{
			return true;
			}
			if (settings["chapter16MG"] && vars.chapter == 16)
			{
			return true;
			}
			if (settings["chapter17MG"] && vars.chapter == 17)
			{
			return true;
			}
			if (settings["chapter18MG"] && vars.chapter == 18)
			{
			return true;
			}
		}
		if (current.igt == current.finalIGT && old.finalIGT != current.finalIGT && !settings["LR"])
		{
			return true;
		}
		
		//Main Game final split
		if(current.overtime != 0 && vars.gameMode == 2 && (settings["LR"] || settings["Any"])){
			return true;
		}
		
		//Separate Ways final split
		if(current.swEnd != old.swEnd && vars.gameMode == 3 && settings["LR"]){
			vars.swEOCBool = 0;
			return true;
		}
	
	//Assignment Ada splits
	
		// Plaga Sample #1
		// Check if first plaga sample was retrieved to prevent double splitting
		if(old.fslPlaga == 0 && current.fslPlaga == 8 && vars.sampleOne == 0 && vars.gameMode == 1){
			vars.sampleOne = 1;
			if (settings["sample1"])
			{
			return true;
			}
		}
		// Plaga Sample #2
		// Check if second plaga sample was retrieved to prevent double splitting
		if(old.fslPlaga == 8 && current.fslPlaga == 12 && vars.sampleTwo == 0 && vars.gameMode == 1){
			vars.sampleTwo = 1;
		if (settings["sample2"])
			{
			return true;
			}
		}
		// Plaga Sample #3
		// Check if third plaga sample was retrieved to prevent double splitting
		if(old.tfPlaga == 0 && current.tfPlaga == 1073741824 && vars.sampleThree == 0 && vars.gameMode == 1){
			vars.sampleThree = 1;
			if (settings["sample3"])
			{
			return true;
			}
		}
		// Plaga Sample #4
		// Check if fourth plaga sample was retrieved to prevent double splitting
		if(old.tfPlaga == 1073741824 && current.tfPlaga == 1342177280 && vars.sampleFour == 0 && vars.gameMode == 1){
			vars.sampleFour = 1;
			if (settings["sample4"])
			{
			return true;
			}
		}
		// Plaga Sample #5
		// Check if last plaga sample was retrieved to prevent double splitting
		if(old.fslPlaga == 12 && current.fslPlaga == 28 && vars.sampleFive == 0 && vars.gameMode == 1){
			vars.sampleFive = 1;
			if (settings["sample5"])
			{
			return true;
			}
		}
		// Check if the door was used after defeating Krauser
		if(current.fslPlaga == 28 && current.operate == 0 && old.operate == 65537 && current.subtitle == 0 && vars.door == 0 && vars.gameMode == 1){
			vars.door = 1;
			return false;
		}
		// Final split
		// Timer will stop once the "contact the chopper" subtitle has disappeared
		if(current.fslPlaga == 28 && old.subtitle == 1 && current.operate == 256 && current.subtitle == 0 && vars.door == 1 && vars.gameMode == 1){
			return true;	
		}
}
