*** Settings ***
Library  Selenium2Library
Library      uuid

*** Keywords ***
Logs out from flight confirmation page and close the browser
        click element     xpath=//img[contains(@src,'/images/forms/Logout.gif')]

Capture Page Screenshot With Unique Name
    ${uuid} =  uuid4
    Capture Page Screenshot  selenium-${uuid}.png
    sleep  5s
    close browser