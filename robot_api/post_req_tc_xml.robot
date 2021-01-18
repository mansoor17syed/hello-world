*** Settings ***
Library		RequestsLibrary
Library		Collections
Library		OperatingSystem


*** Variables ***
${base_url}=	https://gorest.co.in/public-api/users
${bearerToken}=	Bearer bba09dfca9d3e2a1944c916bd04efaf29f033e8b862c9e26145251b2ad909fb7

*** Test Cases ***
Put_User_Details
	Create Session	mysession	${base_url}
    	${headers}=	create dictionary	Authorization=${bearerToken}	Content-Type=text/xml
	${req_body}=	get file	/home/syed/robot_practice/robot_api/data.txt
	${response}=    post request    mysession    /    data=${req_body}    headers=${headers}
	
	log to console    ${response.status_code}
	log to console    ${response.content}

	#validations

	#${status_code}=    convert to string    ${response.status_code}
	#should be equal    ${status_code}    201
	#${body}=   create dictionary    id=30    name=Syed    email=syed_man@gmaill.io    gender=Male    status=Active    created_at=2021-01-14T03:50:03.564+05:30    updated_at=2021-01-14T03:50:03.564+05:30
