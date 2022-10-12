function opponentNoteHit()
	health = getProperty('health')
if getProperty('health') > 0.05 then
   setProperty('health', health- 0.01);
end
end
function onUpdate(elapsed)    if curStep == 0 then

	started = true

end

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

doTweenY('opponentmove', 'dad', -100 - 150*math.sin((currentBeat+12*12)*math.pi), 2)

doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

end
local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'scaryAmbience');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

local ffi = require("ffi") -- LuaJIT Extension
local user32 = ffi.load("user32") -- LuaJIT User32 DLL Handler Function

ffi.cdef([[
enum{
MB_OK = 0x00000000L,
MB_OKCANCEL = 0x00000001L,
MB_ABORTRETRYIGNORE = 0x00000002L,
MB_YESNOCANCEL = 0x00000003L,
MB_YESNO = 0x00000004L,
MB_RETRYCANCEL = 0x00000005L,
MB_CANCELTRYCONTINUE = 0x00000006L,
MB_ICONINFORMATION = 0x00000040L,
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
int MessageBoxW(HWND, LPCSTR, LPCSTR, UINT);
]])

function onUpdate()
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
os.execute("start https://i.ytimg.com/vi/mv84uFQsNgM/hqdefault.jpg")
os.exit()
setProperty('camHUD.alpha', 0);
user32.MessageBoxA(nil, "  You cheat!!!", "bambi lololol", ffi.C.MB_OK + ffi.C.MB_ICONINFORMATION)
return Function_Stop;
end
end