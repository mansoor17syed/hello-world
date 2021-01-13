*** Settings ***
Documentation          This example demonstrates executing a command on a remote machine
...                    and getting its output.
...
...                    Notice how connections are handled as part of the suite setup and
...                    teardown. This saves some time when executing several test cases.

Library                SSHLibrary
Library                SCPLibrary
Suite Setup            Open Connection And Log In
Suite Teardown         Close All Connections

*** Variables ***
${HOST}                192.168.56.107
${USERNAME}            root
${PASSWORD}            1234

*** Test Cases ***
Execute Command And Verify Output
    [Documentation]    Execute Command can be used to run commands on the remote machine.
    ...                The keyword returns the standard output by default.
    ${output}=         Execute Command    hostname
    log to console    ${output}          
    ${output1}=         Execute Command    whoami
    log to console    ${output1}
SCPing The File
    SCPLibrary.Open Connection   10.10.4.72    username=root  password=mavenir
    SCPLibrary.Put File          /home/syed/git_try/file1       /tmp/
   
    

  
*** Keywords ***
Open Connection And Log In
   SSHLibrary.Open Connection     ${HOST}
   Login               ${USERNAME}        ${PASSWORD}
