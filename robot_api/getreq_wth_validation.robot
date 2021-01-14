*** Settings ***
Library		RequestsLibrary
Library		Collections
*** Variables ***
${base_url}	https://gorest.co.in
${post}		posts

*** Test Cases ***
Get posts
    Create Session	myssion	${base_url}
    ${response}=	get request	myssion	/public-api/${post}
    #log to console	${response.status_code}
    #log to console	${response.content}
    #log to console	${response.headers}

    #validations
    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    200

    #validation 2 checking is given string present Subvenio cunctatio
    ${body}=    convert to string    ${response.content}
    should contain    ${body}    Subvenio cunctatio


    #validation 3 check headers
    ${contentTypeValue}=    get from dictionary    ${response.headers}    Content-Type
    should be equal    ${contentTypeValue}	application/json; charset=utf-8

    



