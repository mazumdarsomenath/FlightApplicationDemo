*** Settings ***
Library      Selenium2Library
Library      uuid

*** Keywords ***
Sign-on thru user credentials
   input text      name=userName     ${USER_NAME}
   input text      name=password     ${PASSWD}

   click element   name=login

Capture Page Screenshot With Unique Name
    ${uuid} =  uuid4
    Capture Page Screenshot  selenium-${uuid}.png
    sleep  5s