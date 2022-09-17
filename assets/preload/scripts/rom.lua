
function onCreate()

resetStacks();

end

function onEndSong()

resetStacks();

end

function addOneStack()
Bruh = poisonstacks;
poisonstacks = Bruh + 0.25;
setTextString('Lcounter',poisonstacks )
end

function resetStacks()
	poisonstacks = 0;
	setTextString('Lcounter',poisonstacks )
end

function onStepHit()

curHealth = getProperty('health');

bruh = 0.01 * poisonstacks;

	if bruh >= curHealth then
	setProperty('health', 0);
	else
	setProperty('health', curHealth - bruh);
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'rom' then
		addOneStack();
	end
	if noteType == 'fullHeal Note' then
		resetStacks();
	end
	if noteType == 'halfHeal Note' then
		resetStacks();
	end
	if noteType == 'medHeal Note' then
		resetStacks();
	end
	if noteType == 'smaHeal Note' then
		resetStacks();
	end
end
function onEvent(name, value1, value2)
	if name == 'addPoison' then
		for i = 0 , value1 do
		addOneStack();
		end
	end
	if name == 'resetPoison' then 
	resetStacks();
	end

end