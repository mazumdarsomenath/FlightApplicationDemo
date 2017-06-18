*** Settings ***
Documentation  Demo of Robot Framework for Flight Application
Resource     ../Resources/Globalparameters.robot
Resource     ../Resources/PO/Openbrowser.robot
Resource     ../Resources/PO/Login.robot
Resource     ../Resources/PO/Flightfinder.robot
Resource     ../Resources/PO/Selectflight.robot
Resource     ../Resources/PO/Bookflight.robot
Resource     ../Resources/PO/Logout.robot

# pybot -d results tests/FlightApp.robot

*** Test Cases ***

Should be able to navigate To Login Page
     [Tags]
      Openbrowser.Open the browser
      Openbrowser.Init
      Openbrowser.Capture Page Screenshot With Unique Name
      Openbrowser.Verify Page Loaded

Should be able to login thru The User Credentials
     [Tags]
     Login.Sign-on thru user credentials
     Login.Capture Page Screenshot With Unique Name

Should be able to navigate to Flight Finder Page and click to Continue button
     [Tags]
     Flightfinder.Click to navigate Flight finder page
     Flightfinder.Capture Page Screenshot With Unique Name

Should be able to navigate to Select Flight Page and click to Continue button
     [Tags]
      Selectflight.Click to navigate Select Flight page
      Selectflight.Capture Page Screenshot With Unique Name

Should be able to Book flights thru Flight Application
     [Tags]
     Bookflight.Enter the credit card details to Book a Flight page
     Bookflight.Capture Page Screenshot With Unique Name

Should be able to verify Flight Confirmation page and close browser by logging out
     [Tags]
     Logout.Logs out from flight confirmation page and close the browser
     Logout.Capture Page Screenshot With Unique Name


