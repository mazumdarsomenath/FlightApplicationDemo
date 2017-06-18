*** Settings ***
Library  Selenium2Library
Library  uuid

*** Keywords ***
Click to navigate Flight finder page
    click element   name=findFlights

Capture Page Screenshot With Unique Name
    ${uuid} =  uuid4
    Capture Page Screenshot  selenium-${uuid}.png
    sleep  5s