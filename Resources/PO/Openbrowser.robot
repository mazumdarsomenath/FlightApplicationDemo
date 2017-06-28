*** Settings ***
Library      Selenium2Library
#Library      SauceLabs
Library      uuid

*** Variables ***
${LANDING_TEXT} =  SIGN-ON

*** Keywords ***
Open the browser
      open browser      ${URL}     ${BROWSER}

Init
    Register Keyword To Run On Failure  Capture Page Screenshot With Unique Name

Capture Page Screenshot With Unique Name
    ${uuid} =  uuid4
    Capture Page Screenshot  selenium-${uuid}.png

Verify Page Loaded
    wait until page contains  ${LANDING_TEXT}
