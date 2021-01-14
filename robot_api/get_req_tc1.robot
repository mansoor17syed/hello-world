*** Settings ***
Library		RequestsLibrary

*** Variables ***
${base_url}	https://gorest.co.in
${post}		posts

*** Test Cases ***
Get posts
    Create Session	myssion	${base_url}
    ${response}=	get request	myssion	/public-api/${post}
    log to console	${response.status_code}
    log to console	${response.content}
    log to console	${response.headers}

