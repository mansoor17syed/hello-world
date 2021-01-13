*** Settings ***


*** Test Cases ***
Arguments TEST1
	Argument demo keyword	syed	mansoor


*** Keywords ***
Argument demo keyword
	[Arguments]  ${arg1}  ${arg2}
        Log  ${arg1}
	Log  ${arg2}
