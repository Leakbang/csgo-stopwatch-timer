//Create the timer entities
LogicTimer1    <-     Entities.CreateByClassname("logic_timer");
LogicTimer1.__KeyValueFromInt("StartDisabled", 1);
LogicTimer1.__KeyValueFromFloat("refiretime", 1);
LogicTimer1.__KeyValueFromString("OnTimer", "logic_scriptRunScriptCodeIncrementVariable()0-1");
LogicTimer2    <-     Entities.CreateByClassname("logic_timer");
LogicTimer2.__KeyValueFromInt("StartDisabled", 1);
LogicTimer2.__KeyValueFromFloat("refiretime", 0.1);
LogicTimer2.__KeyValueFromString("OnTimer", "logic_scriptRunScriptCodeMilisecondtimer()0-1");

//Variables
Secs <- 0;
Milisecs <- 0;

function StartTimer()
{
	//Start the timers
	EntFireByHandle(LogicTimer1, "Enable", "", 0, null, null);
	EntFireByHandle(LogicTimer2, "Enable", "", 0, null, null);
	ScriptPrintMessageCenterAll("Go");
}
function Milisecondtimer()
{
	if(Milisecs >= 9)
	{
		Milisecs=0;
	}
	Milisecs ++;
	if(Secs >= 1)
	{
		ScriptPrintMessageCenterAll(Secs + "." + Milisecs);
	}
}
function IncrementVariable()
{
    Secs++;
}
function StopTimer()
{
	//Stop the timers
	EntFireByHandle(LogicTimer1   , "Disable", "", 0, null, null);
	EntFireByHandle(LogicTimer2, "Disable", "", 0, null, null);
	ScriptPrintMessageCenterAll("" + Secs + "." + Milisecs);
	ScriptPrintMessageChatAll("Time: " + Secs + "." + Milisecs);
	//Reset the timers
	Secs=0;
	Milisecs=0;
}
function Enable()
{
   ScriptPrintMessageCenterAll("Stopwatch Enabled");
}
function Disable()
{
   ScriptPrintMessageCenterAll("Stopwatch Disabled");
}
