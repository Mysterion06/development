/***************************** Created by Wipefinger ******************************************
*************************** Credits: Pitted & Wipefinger **********************************/

//  Resident Evil 4: Full Game Load Removed Edition

// 			Disclaimer/Instructions:
//			For Main Game you need to use 19 splits when using this autosplitter with all subsplits active
//			For Separate Ways you need to use 5 splits when using this autosplitter with all subsplits active
// 			For Assignment Ada you need to use 6 splits and cannot use any item or open the inventory after opening the final door in the radio tower
//			For all cateogries you will need to set your timer to compare to Game Time!


// Initialize the game and check for which version is being used
state("bio4")
{
	// In case of Unkown Steam version, use the most recent one
	uint hp : 0x85F714;				// Ada's health amount
	uint igt : 0x85F704;			// Current In Game Time
	uint finalIGT : 0xE7E23C;		// Final In Game Time
	uint isEndOfChapter : 0x867BA0;	// End of Chapter
	byte loadingScreen : 0x858F77;	// The loading screen
	int totalFrames: 0x85FA6C;		// Total Frames that have past
	uint map : 0xCED6DC;			// Map screen
	byte pauseMenu : 0x879A99;		// The pause menu screen
	uint mainMenu : 0x82CADC;		// Main menu screen
	byte fpsSetting : 0x82B7A0;		// Current FPS Setting 30 or 60FPS
	
	uint fslPlaga : 0x85F9EC;		// First, second, and last plaga
	uint operate : 0x850300;		// The operate command on button presses
	uint subtitle : 0x817840;		// Subtitles on the screen
	uint tfPlaga : 0x85F9F0;		// Third and fourth plaga
	
	uint overtime : 0x8594B8;		// The overtime cutscene
	byte startMG : 0x85F710; 		// changes to 32 for NG and NG+ after the intro
	
	uint swEnd : 0x867BDC;			// Ending cutscene in SW
	byte currentScreen: 0x7FC1C9;	// Current Screen / Area
}
state("bio4","1.1.0")
{
	// Steam version 1.1.0
	uint hp : 0x85F714;				// Ada's health amount
	uint igt : 0x85F704;			// Current In Game Time
	uint finalIGT : 0xE7E23C;		// Final In Game Time
	uint isEndOfChapter : 0x867BA0;	// End of Chapter
	byte loadingScreen : 0x858F77;	// The loading screen
	int totalFrames: 0x85FA6C;		// Total Frames that have past
	uint map : 0xCED6DC;			// Map screen
	byte pauseMenu : 0x879A99;		// The pause menu screen
	uint mainMenu : 0x82CADC;		// Main menu screen
	byte fpsSetting : 0x82B7A0;		// Current FPS Setting 30 or 60FPS
	
	uint fslPlaga : 0x85F9EC;		// First, second, and last plaga
	uint operate : 0x850300;		// The operate command on button presses
	uint subtitle : 0x817840;		// Subtitles on the screen
	uint tfPlaga : 0x85F9F0;		// Third and fourth plaga
	
	uint overtime : 0x8594B8;		// The overtime cutscene
	byte startMG : 0x85F710; 		// changes to 32 for NG and NG+ after the intro
	
	uint swEnd : 0x867BDC;			// Ending cutscene in SW
	byte currentScreen: 0x7FC1C9;	// Current Screen / Area
}

state("bio4","1.0.6")
{
	// Steam version 1.0.6
	uint hp : 0x85BE94;				// Ada's health amount
	uint igt : 0x85BE84;			// Current In Game Time
	uint finalIGT : 0xE7A9BC;		// Final In Game Time
	uint isEndOfChapter : 0x864310;	// End of Chapter
	byte loadingScreen : 0x8556F7;	// The loading screen
	int totalFrames: 0x85C1EC;		// Total Frames that have past
	uint map : 0xCE9E5C;			// Map screen
	byte pauseMenu : 0xCE92C0;		// The pause menu screen
	uint mainMenu : 0x82926C;		// Main menu screen
	byte fpsSetting : 0x827F38;		// Current FPS Setting 30 or 60FPS
	
	uint fslPlaga : 0x85C16C;		// First, second, and last plaga
	uint operate : 0x84CA80;		// The operate command on button presses
	uint subtitle : 0x814030;		// Subtitles on the screen
	uint tfPlaga : 0x85C170;		// Third and fourth plaga
	
	uint overtime : 0x855C38;		// The overtime cutscene
	byte startMG : 0x85BE90; 		// changes to 32 for NG and NG+ after the intro
	
	uint swEnd : 0x86434C;			// Ending cutscene in SW
	byte currentScreen: 0x7FB1C9;	// Current Screen / Area
}
state("bio4", "1.0.2")
{
	// Steam BETA version 1.0.2
	uint hp : 0x8398B4;				// Ada's health amount
	uint igt : 0x8398A4;			// Current In Game Time
	uint finalIGT : 0xE5822C;		// Final In Game Time
	uint isEndOfChapter : 0x841D30;	// End of Chapter Screen
	byte loadingScreen : 0x83311F;	// The loading screen
	int totalFrames: 0x839C0C;		// Total Frames that have past
	uint map : 0xCC781C;			// Map screen
	byte pauseMenu : 0xCC6CD0;		// The pause menu screen
	uint mainMenu : 0x807214;		// Main menu screen
	byte fpsSetting : 0x805F18;		// Current FPS Setting 30 or 60FPS
	
	uint fslPlaga : 0x839B8C;		// First, second, and last plaga
	uint operate : 0x82A4C0;		// The operate command on button presses
	uint subtitle : 0x7F2010;		// Subtitles on the screen
	uint tfPlaga : 0x839B90;		// Third and fourth plaga
	
	uint overtime : 0x833658;		// The overtime cutscene
	byte startMG : 0x8398B0; 		// changes to 32 for NG and NG+ after the intro
	
	uint swEnd : 0x841D6C;			// Ending cutscene in SW
	// byte currentScreen: 0x7FB1C9;	// Current Screen / Area NOT WORKING!
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
	refreshRate = 60;				//Set the refreshRate to 60
	vars.frameCount = 0;
	vars.pauseFrames = 0;
	vars.frameStart = 0;
	vars.frameEnd = 0;
	vars.framePause = false;
	vars.door = 0;					// The control tower door
	vars.sampleOne = 0;				// Plaga sample #1
	vars.sampleTwo = 0;				// Plaga sample #2
	vars.sampleThree = 0;			// Plaga sample #3
	vars.sampleFour = 0;			// Plaga sample #4
	vars.sampleFive = 0;			// Plaga sample #5
	vars.gameMode = 0;				// Set the game mode to None = 0, AA = 1, MG = 2 or SW = 3
	vars.swEOCBool = 0;				// Boolean for the SW End of Chapter screens
	vars.chapter = 0;				// Integer for the Current Chapter
	vars.split = 0;					// Set te current Split to 0
}

startup
{
	//Creating the options
	settings.Add("gameMode",true, "Game Modes");
	settings.SetToolTip("gameMode", "Do not uncheck this box");
	settings.CurrentDefaultParent = "gameMode";
	settings.Add("MG", true, "Main Game");
	settings.SetToolTip("MG", "Check this Option if you want to run NG or NG+");
	
	settings.CurrentDefaultParent = "MG";
	settings.Add("splitsMG", true, "Autosplitter");
	settings.SetToolTip("splitsMG", "Check this Option if you want to use the Autosplitting feature.  You can choose your Splits below");
	
	settings.CurrentDefaultParent = "splitsMG";
	
	settings.Add("MGDoors", false, "Main Game Doorsplits (Alpha Pro / Normal only)");
	settings.SetToolTip("MGDoors", "Check this Option if you want to use the MainGame Doorsplits");
	
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
	
	settings.Add("SWDoors", false, "Separate Ways Doorsplits (Alpha)");
	settings.SetToolTip("SWDoors", "Check this Option if you want to use the Separate Ways Doorsplits");
	
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
	
	settings.Add("AADoors", false, "Assignment Ada Doorsplits (Alpha)");
	settings.SetToolTip("AADoors", "Check this Option if you want to use the Assignment Ada Doorsplits");
	
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
	settings.Add("LR",true,"Load Remover & Framecount Timer");
	settings.SetToolTip("LR", "Check this Option if you want to use the Load Remover / Framecount Timer feature");
}

start
{
	// Check to see if Assignment Ada is running and we aren't in the main menu
	// Timer starts after the opening text on screen has disappeared
	if (old.subtitle == 1 && current.subtitle == 0 && current.hp == 102237720 && settings["AA"]){
		// Set inital values to 0
		vars.frameCount = 0;
		vars.pauseFrames = 0;
		vars.frameStart = current.totalFrames;
		vars.frameEnd = 0;
		vars.framePause = false;
		vars.door = 0;				// The control tower door
		vars.sampleOne = 0;			// Plaga sample #1
		vars.sampleTwo = 0;			// Plaga sample #2
		vars.sampleThree = 0;		// Plaga sample #3
		vars.sampleFour = 0;		// Plaga sample #4
		vars.sampleFive = 0;		// Plaga sample #5
		vars.gameMode = 1;			// Set AA mode to on
		vars.split = 0;					// Set te current Split to 0
		return true;
	}
  
	// Check to see if the Main Game is running and we aren't in the main menu
	if (current.startMG == 32 && old.loadingScreen == 255 && current.loadingScreen != 255 && settings["MG"]){
		vars.frameCount = 0;
		vars.pauseFrames = 0;
		vars.frameStart = current.totalFrames;
		vars.frameEnd = 0;
		vars.framePause = false;
		vars.gameMode = 2;			// Set MG mode to on
		vars.chapter = 0;			// Set the current Chapter to 0
		vars.split = 0;					// Set te current Split to 0
		return true;
	}
	
	// Check to see if Separate Ways is running and we aren't in the main menu
	if (old.map == 1 && current.map == 0 && settings["SW"]){
		// Set inital values to 0
		vars.frameCount = 0;
		vars.pauseFrames = 0;
		vars.frameStart = current.totalFrames;
		vars.frameEnd = 0;
		vars.framePause = false;
		vars.gameMode = 3;			// Set SW mode to on
		vars.swEOCBool = 0;			// Set SW EoC boolean to off
		vars.chapter = 0;			// Set the current Chapter to 0
		vars.split = 0;					// Set te current Split to 0
		return true;
	}
}

update
{
	if (settings["LR"])
	{
		if (current.pauseMenu == 1 && old.pauseMenu == 0) //Pause Screen Start
		{
			if (vars.frameStart != 0)
			{
				vars.frameEnd = current.totalFrames;
				vars.frameCount += (vars.frameEnd - vars.frameStart);
				vars.frameStart = 0;
				vars.frameEnd = 0;
			}
		}
		if (current.loadingScreen == 255 && old.loadingScreen != 255 && current.pauseMenu == 0) //Load Screen Start No Checkpoint Reload
		{
			if (vars.frameStart != 0)
			{
				vars.frameEnd = current.totalFrames;
				vars.frameCount += (vars.frameEnd - vars.frameStart);
				vars.frameStart = 0;
				vars.frameEnd = 0;
			}
		}
		if (current.pauseMenu == 0 && old.pauseMenu == 1 && current.totalFrames >= old.totalFrames) //Pause Screen Finish
		{
			vars.frameStart = current.totalFrames;
		}
		if (current.loadingScreen == 0 && old.loadingScreen == 255 && current.pauseMenu == 0) //Load Screen Finish
		{
			vars.frameStart = current.totalFrames;
			vars.pauseFrames = 0;
		}
		if ((current.overtime != 0 && vars.gameMode == 2 ) || (current.swEnd != old.swEnd && vars.gameMode == 3) || (current.fslPlaga == 28 && old.subtitle == 1 && current.operate == 256 && current.subtitle == 0 && vars.door == 1 && vars.gameMode == 1))
		{
			vars.frameEnd = current.totalFrames;
			vars.frameCount += (vars.frameEnd - vars.frameStart);
		}
	}

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
	if( (old.igt > 0 && current.igt == 0 || current.hp == 0 && old.hp > current.hp)){
		vars.swEOCBool = 0;
		vars.gameMode = 0;
		vars.chapter = 0;
		return true;
	}
}

isLoading
{
		// Check if the game is loading and pause the timer if so
		if((current.loadingScreen == 255 || current.pauseMenu == 1) && settings["LR"])
		{
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
	if (settings["LR"])
	{
	if ((current.pauseMenu != old.pauseMenu) || (current.loadingScreen == 255 && old.loadingScreen == 0) || (current.loadingScreen == 0 && old.loadingScreen == 255) || (current.isEndOfChapter - old.isEndOfChapter == 256) || (current.overtime != 0) || (current.swEnd != old.swEnd && vars.gameMode == 3) || (current.fslPlaga == 28 && old.subtitle == 1 && current.operate == 256 && current.subtitle == 0 && vars.door == 1 && vars.gameMode == 1))
	{
		if (current.fpsSetting == 30)
		{
			return TimeSpan.FromMilliseconds(vars.frameCount * 33.3333);
		}
		if (current.fpsSetting == 60)
		{
			return TimeSpan.FromMilliseconds(vars.frameCount * 16.6666);
		}
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
		if(current.overtime != 0 && vars.gameMode == 2 && settings["LR"]){
			return true;
		}
		
		//Separate Ways final split
		if(current.swEnd != old.swEnd && vars.gameMode == 3 && settings["LR"]){
			vars.swEOCBool = 0;
			return true;
		}
		
		//Main Game Door Splits
		if ((settings["MGDoors"] &&  vars.gameMode == 2) && 
	// 1-1
	(old.currentScreen == 233 && current.currentScreen == 65 && vars.split == 0)
	||
	(old.currentScreen == 65 && current.currentScreen == 250 && vars.split == 1)
	||
	(old.currentScreen == 250 && current.currentScreen == 159 && vars.split == 2)
	||
	// 1-2
	(old.currentScreen == 192 && current.currentScreen == 165 && vars.split == 3)
	||
	(old.currentScreen == 165 && current.currentScreen == 202 && vars.split == 4)
	||
	// 1-3
	(old.currentScreen == 202 && current.currentScreen == 65 && vars.split == 5)
	||
	(old.currentScreen == 65 && current.currentScreen == 244 && vars.split == 6)
	||
	(old.currentScreen == 244 && current.currentScreen == 95 && vars.split == 7)
	||
	(old.currentScreen == 95 && current.currentScreen == 146 && vars.split == 8)
	||
	(old.currentScreen == 146 && current.currentScreen == 26 && vars.split == 9)
	||
	(old.currentScreen == 26 && current.currentScreen == 178 && vars.split == 10)
	// 2-1
	||
	(old.currentScreen == 138 && current.currentScreen == 193 && vars.split == 11)
	||
	(old.currentScreen == 193 && current.currentScreen == 26 && vars.split == 12)
	||
	(old.currentScreen == 26 && current.currentScreen == 138 && vars.split == 13)
	||
	(old.currentScreen == 138 && current.currentScreen == 101 && vars.split == 14)
	||
	(old.currentScreen == 101 && current.currentScreen == 81 && vars.split == 15)
	// 2-2
	||
	(old.currentScreen == 81 && current.currentScreen == 101 && vars.split == 16)
	||
	(old.currentScreen == 101 && current.currentScreen == 70 && vars.split == 17)
	||
	(old.currentScreen == 70 && current.currentScreen == 147 && vars.split == 18)
	||
	(old.currentScreen == 147 && current.currentScreen == 110 && vars.split == 19)
	||
	(old.currentScreen == 110 && current.currentScreen == 111 && vars.split == 20)
	// 2-3
	||
	(old.currentScreen == 111 && current.currentScreen == 157 && vars.split == 21)
	||
	(old.currentScreen == 157 && current.currentScreen == 7 && vars.split == 22)
	||
	(old.currentScreen == 7 && current.currentScreen == 206 && vars.split == 23)
	||
	(old.currentScreen == 206 && current.currentScreen == 7 && vars.split == 24)
	||
	(old.currentScreen == 7 && current.currentScreen == 209 && vars.split == 25)
	// 3-1
	||
	(old.currentScreen == 209 && current.currentScreen == 151 && vars.split == 26)
	||
	(old.currentScreen == 151 && current.currentScreen == 175 && vars.split == 27)
	||
	(old.currentScreen == 175 && current.currentScreen == 154 && vars.split == 28)
	||
	(old.currentScreen == 154 && current.currentScreen == 195 && vars.split == 29)
	||
	(old.currentScreen == 195 && current.currentScreen == 152 && vars.split == 30)
	||
	(old.currentScreen == 152 && current.currentScreen == 149 && vars.split == 31)
	// 3-2
	||
	(old.currentScreen == 149 && current.currentScreen == 7 && vars.split == 32)
	||
	(old.currentScreen == 7 && current.currentScreen == 149 && vars.split == 33)
	||
	(old.currentScreen == 149 && current.currentScreen == 182 && vars.split == 34)
	||
	(old.currentScreen == 182 && current.currentScreen == 237 && vars.split == 35)
	||
	(old.currentScreen == 237 && current.currentScreen == 17 && vars.split == 36)
	// 3-3
	||
	(old.currentScreen == 17 && current.currentScreen == 133 && vars.split == 37)
	||
	(old.currentScreen == 133 && current.currentScreen == 207 && vars.split == 38)
	// 3-4
	||
	(old.currentScreen == 174 && current.currentScreen == 221 && vars.split == 39)
	||
	(old.currentScreen == 221 && current.currentScreen == 180 && vars.split == 40)
	||
	(old.currentScreen == 180 && current.currentScreen == 221 && vars.split == 41)
	// 4-1
	||
	(old.currentScreen == 174 && current.currentScreen == 230 && vars.split == 42)
	||
	(old.currentScreen == 230 && current.currentScreen == 178 && vars.split == 43)
	||
	(old.currentScreen == 178 && current.currentScreen == 230 && vars.split == 44)
	||
	(old.currentScreen == 230 && current.currentScreen == 195 && vars.split == 45)
	||
	(old.currentScreen == 195 && current.currentScreen == 89 && vars.split == 46)
	||
	(old.currentScreen == 89 && current.currentScreen == 150 && vars.split == 47)
	||
	(old.currentScreen == 150 && current.currentScreen == 13 && vars.split == 48)
	||
	(old.currentScreen == 13 && current.currentScreen == 150 && vars.split == 49)
	||
	(old.currentScreen == 150 && current.currentScreen == 88 && vars.split == 50)
	||
	(old.currentScreen == 88 && current.currentScreen == 150 && vars.split == 51)
	||
	(old.currentScreen == 150 && current.currentScreen == 117 && vars.split == 52)
	||
	(old.currentScreen == 117 && current.currentScreen == 183 && vars.split == 53)
	||
	(old.currentScreen == 183 && current.currentScreen == 252 && vars.split == 54)
	||
	(old.currentScreen == 252 && current.currentScreen == 183 && vars.split == 55)
	||
	(old.currentScreen == 183 && current.currentScreen == 248 && vars.split == 56)
	||
	(old.currentScreen == 88 && current.currentScreen == 64 && vars.split == 57)
	||
	(old.currentScreen == 64 && current.currentScreen == 236 && vars.split == 58)
	// 4-2
	||
	(old.currentScreen == 119 && current.currentScreen == 56 && vars.split == 59)
	||
	(old.currentScreen == 56 && current.currentScreen == 36 && vars.split == 60)
	||
	(old.currentScreen == 36 && current.currentScreen == 154 && vars.split == 61)
	// 4-3
	||
	(old.currentScreen == 167 && current.currentScreen == 171 && vars.split == 62)
	||
	(old.currentScreen == 171 && current.currentScreen == 116 && vars.split == 63)
	||
	(old.currentScreen == 116 && current.currentScreen == 167 && vars.split == 64)
	// 4-4
	||
	(old.currentScreen == 250 && current.currentScreen == 45 && vars.split == 65)
	||
	(old.currentScreen == 45 && current.currentScreen == 211 && vars.split == 66)
	||
	(old.currentScreen == 211 && current.currentScreen == 229 && vars.split == 67)
	// 5-1
	||
	(old.currentScreen == 74 && current.currentScreen == 119 && vars.split == 68)
	||
	(old.currentScreen == 119 && current.currentScreen == 178 && vars.split == 69)
	||
	(old.currentScreen == 178 && current.currentScreen == 164 && vars.split == 70)
	||
	(old.currentScreen == 164 && current.currentScreen == 137 && vars.split == 71)
	||
	(old.currentScreen == 137 && current.currentScreen == 192 && vars.split == 72)
	||
	(old.currentScreen == 192 && current.currentScreen == 68 && vars.split == 73)
	||
	(old.currentScreen == 68 && current.currentScreen == 192 && vars.split == 74)
	||
	(old.currentScreen == 192 && current.currentScreen == 191 && vars.split == 75)
	||
	(old.currentScreen == 191 && current.currentScreen == 192 && vars.split == 76)
	||
	(old.currentScreen == 192 && current.currentScreen == 191 && vars.split == 77)
	||
	(old.currentScreen == 191 && current.currentScreen == 123 && vars.split == 78)
	||
	(old.currentScreen == 123 && current.currentScreen == 216 && vars.split == 79)
	||
	(old.currentScreen == 216 && current.currentScreen == 226 && vars.split == 80)
	||
	(old.currentScreen == 226 && current.currentScreen == 216 && vars.split == 81)
	||
	(old.currentScreen == 216 && current.currentScreen == 123 && vars.split == 82)
	// 5-2
	||
	(old.currentScreen == 123 && current.currentScreen == 191 && vars.split == 83)
	||
	(old.currentScreen == 191 && current.currentScreen == 30 && vars.split == 84)
	||
	(old.currentScreen == 30 && current.currentScreen == 107 && vars.split == 85)
	||
	(old.currentScreen == 107 && current.currentScreen == 146 && vars.split == 86)
	||
	(old.currentScreen == 146 && current.currentScreen == 132 && vars.split == 87)
	||
	(old.currentScreen == 132 && current.currentScreen == 80 && vars.split == 88)
	// 5-3
	||
	(old.currentScreen == 140 && current.currentScreen == 218 && vars.split == 89)
	||
	(old.currentScreen == 218 && current.currentScreen == 32 && vars.split == 90)
	||
	(old.currentScreen == 32 && current.currentScreen == 176 && vars.split == 91)
	||
	(old.currentScreen == 176 && current.currentScreen == 13 && vars.split == 92)
	||
	(old.currentScreen == 13 && current.currentScreen == 230 && vars.split == 93)
	||
	(old.currentScreen == 230 && current.currentScreen == 147 && vars.split == 94)
	// 5-4
	||
	(old.currentScreen == 37 && current.currentScreen == 150 && vars.split == 95)
	||
	(old.currentScreen == 150 && current.currentScreen == 121 && vars.split == 96)
	||
	(old.currentScreen == 121 && current.currentScreen == 217 && vars.split == 97)
	||
	(old.currentScreen == 217 && current.currentScreen == 182 && vars.split == 98)
	||
	(old.currentScreen == 182 && current.currentScreen == 111 && vars.split == 99)
	||
	(old.currentScreen == 111 && current.currentScreen == 183 && vars.split == 100)
	// 5-5
	||
	(old.currentScreen == 183 && current.currentScreen == 148 && vars.split == 101)
	||
	(old.currentScreen == 148 && current.currentScreen == 51 && vars.split == 102)
	||
	(old.currentScreen == 51 && current.currentScreen == 148 && vars.split == 103)
	)
	{
		vars.split++;
		return true;
	}
	
	//Assignment Ada Door Splits
	if ((settings["AADoors"] &&  vars.gameMode == 1) && 
	// Island (Starting Area into Ladder)
	(old.currentScreen == 114 && current.currentScreen == 204 && vars.split == 0)
	||
	// Island Upper Layer into Infiltrate
	(old.currentScreen == 204 && current.currentScreen == 15 && vars.split == 1)
	||
	// Hallway into First Plaga Room
	(old.currentScreen == 15 && current.currentScreen == 147 && vars.split == 2)
	||
	// Plaga Room into Hallway
	(old.currentScreen == 147 && current.currentScreen == 15 && vars.split == 3)
	||
	// Hallway into Freezer Room
	(old.currentScreen == 15 && current.currentScreen == 13 && vars.split == 4)
	||
	// Freezer into Hallway
	(old.currentScreen == 13 && current.currentScreen == 15 && vars.split == 5)
	||
	// Hallway into Garbage Room
	(old.currentScreen == 15 && current.currentScreen == 13 && vars.split == 6)
	||
	// Garbage Room into Ashley Prison
	(old.currentScreen == 13 && current.currentScreen == 215 && vars.split == 7)
	||
	// Ashley Prison into JJ Room
	(old.currentScreen == 215 && current.currentScreen == 46 && vars.split == 8)
	||
	// JJ Room into Iron Maiden Room
	(old.currentScreen == 46 && current.currentScreen == 64 && vars.split == 9)
	||
	// Iron Maiden Room into Tower Area
	(old.currentScreen == 64 && current.currentScreen == 54 && vars.split == 10)

	)
	{
		vars.split++;
		return true;
	}
	
	//Seperate Ways Door splits 
	
	if ((settings["SWDoors"] &&  vars.gameMode == 3) && 
	// Chapter 1
	// Village into Merchant Cave 
	((old.currentScreen == 231 && current.currentScreen == 154 && vars.split == 0) || (old.currentScreen == 131 && current.currentScreen == 154 && vars.split == 0))
	||
	// Merchant Cave into Graveyard
	(old.currentScreen == 154 && current.currentScreen == 11 && vars.split == 1)
	||
	// Graveyard into Church
	(old.currentScreen == 11 && current.currentScreen == 173 && vars.split == 2)
	||
	// Chapter 2
	// Merchant House into Village 
	(old.currentScreen == 112 && current.currentScreen == 231 && vars.split == 3)
	||
	// Village into Farm
	(old.currentScreen == 231 && current.currentScreen == 160 && vars.split == 4)
	||
	// Farm into Dynamite House Area 
	((old.currentScreen == 160 && current.currentScreen == 141 && vars.split == 5) || (old.currentScreen == 160 && current.currentScreen == 145 && vars.split == 5))
	||
	// Dynamite Area into Farm 
	((old.currentScreen == 141 && current.currentScreen == 160 && vars.split == 6) || (old.currentScreen == 145 && current.currentScreen == 160 && vars.split == 6))
	||
	// Farm into Village 
	(old.currentScreen == 160 && current.currentScreen == 231 && vars.split == 7)
	||
	// Village into Merchant House Area
	(old.currentScreen == 231 && current.currentScreen == 112 && vars.split == 8)
	||
	// Merchant House Area into Gondolla Area 
	(old.currentScreen == 112 && current.currentScreen == 153 && vars.split == 9)
	||
	// Gondola Area into Big Cheese Warehouse
	(old.currentScreen == 153 && current.currentScreen == 34 && vars.split == 10)
	||
	// Big Cheese Warehouse into Gondola Area 
	(old.currentScreen == 34 && current.currentScreen == 153 && vars.split == 11)
	||
	// Gondola Area into Gigante Area 
	(old.currentScreen == 153 && current.currentScreen == 33 && vars.split == 12)
	||
	// Gigante Area into Cabin Area 
	(old.currentScreen == 33 && current.currentScreen == 202 && vars.split == 13)
	||
	// Chapter 3
	// Maze into Hourglass Area 
	(old.currentScreen == 79 && current.currentScreen == 30 && vars.split == 14)
	||
	// Hourglass Area into Garrador Cage
	(old.currentScreen == 30 && current.currentScreen == 196 && vars.split == 15)
	// Garrador Cage into Leon Bridge 
	||
	(old.currentScreen == 196 && current.currentScreen == 249 && vars.split == 16)
	||
	// Leon Bridge into Ashley Area 
	(old.currentScreen == 249 && current.currentScreen == 216 && vars.split == 17)
	||
	// Chapter 4
	// Truck Area into Cannonship Area 
	(old.currentScreen == 70 && current.currentScreen == 30 && vars.split == 18)
	||
	// Cannonship Area into Truck Area 2
	(old.currentScreen == 30 && current.currentScreen == 172 && vars.split == 19)
	||
	// Truck Are 2 into 5-3 Start
	(old.currentScreen == 172 && current.currentScreen == 55 && vars.split == 20)
	||
	// 5-3 Start into Krauser Room
	(old.currentScreen == 55 && current.currentScreen == 119 && vars.split == 21)
	||
	// Chapter 5
	// War Room into Mike Cutscene Area
	(old.currentScreen == 68 && current.currentScreen == 73 && vars.split == 22)
	||
	// Mike Cutscene Area into Leon Cutscene 
	(old.currentScreen == 73 && current.currentScreen == 16 && vars.split == 23)
	||
	// Leon Cutscene into Prison Area 
	(old.currentScreen == 16 && current.currentScreen == 112 && vars.split == 24)
	||
	// Prison into Krauser Fight 
	(old.currentScreen == 112 && current.currentScreen == 73 && vars.split == 25)
	// Krauser Fight into Saddler Fight
	||
	(old.currentScreen == 73 && current.currentScreen == 248 && vars.split == 26)
	||
	// Saddler Fight into RPG Area 
	(old.currentScreen == 248 && current.currentScreen == 250 && vars.split == 27)
	)
	{
		vars.split++;
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