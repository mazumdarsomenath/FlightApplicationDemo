*** Settings ***
#Resource     ../Resources/Globalparameters.robot
Library      Selenium2Library
Library      uuid

*** Keywords ***
Enter the credit card details to Book a Flight page
     input text      name=passFirst0     ${FIRST_NAME}
     input text      name=passLast0      ${LAST_NAME}
     input text      name=creditnumber   ${CC_NUMBER}
     click element   name=buyFlights

Capture Page Screenshot With Unique Name
    ${uuid} =  uuid4
    Capture Page Screenshot  selenium-${uuid}.png
    sleep  5s
