*** Settings ***
Documentation      Robot Framework test script
Library            SSHLibrary

*** Variables ***
${host}            192.168.56.107
${username}        root
${password}        1234
${alias}           remote_host_1

*** Test Cases ***
Test SSH Connection
    Open Connection     ${host}        alias=${alias}
    Login               ${username}    ${password}    delay=1
    Execute Command     hostname
    Close All Connections
