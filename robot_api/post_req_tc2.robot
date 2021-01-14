*** Settings ***
Library    RequestsLibrary
Library    Collections



*** Variables ***
${base_url}=    https://gorest.co.in/public-api/users
${bearerToken}=	'bba09dfca9d3e2a1944c916bd04efaf29f033e8b862c9e26145251b2ad909fb7'

*** Test Cases ***
Put_User_Details
    Create Session    mysession    ${base_url}
    ${body}=	create dictionary    id=30    name=Shubha Gandhi    email=shubha_gandhi@gggmail.io    gender=Male    status=Active    created_at=2021-01-14T03:50:03.564+05:30    updated_at=2021-01-14T03:50:03.564+05:30
    ${headers}=		create dictionary	Authorization=${bearerToken}	Content-Type=application/json
    ${response}=    post request    mysession    /    data=${body}    headers=${headers}

    log to console    ${response.status_code}
    log to console    ${response.content}

    #validations

    ${status_code}=    convert to string    ${response.status_code}
    should be equal    ${status_code}    201
