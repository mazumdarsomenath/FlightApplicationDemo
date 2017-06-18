*** Settings ***
Library  Selenium2Library
Library  uuid

*** Keywords ***
Click to navigate Select Flight page
    click element   name=reserveFlights

Capture Page Screenshot With Unique Name
    ${uuid} =  uuid4
    Capture Page Screenshot  selenium-${uuid}.png
    sleep  5s