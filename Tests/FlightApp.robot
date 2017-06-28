*** Settings ***
Documentation  Demo of Robot Framework for Flight Application
Resource     ../Resources/Globalparameters.robot
Resource     ../Resources/PO/Openbrowser.robot
Resource     ../Resources/PO/Login.robot
Resource     ../Resources/PO/Flightfinder.robot
Resource     ../Resources/PO/Selectflight.robot
Resource     ../Resources/PO/Bookflight.robot
Resource     ../Resources/PO/Logout.robot

# Command for the Execution with no overide of browser : robot -d results tests/FlightApp.robot
# Command for the Execution thru override of chrome browser : robot -d results -i Flightdemo -v BROWSER:chrome tests/FlightApp.robot
# Command for the Execution thru override of firefox browser : robot -d results -i Flightdemo -v BROWSER:firefox tests/FlightApp.robot

*** Test Cases ***

Should be able to navigate To Login Page
     [Tags]  Flightdemo
      Openbrowser.Open the browser
      Openbrowser.Init
      Openbrowser.Capture Page Screenshot With Unique Name
      Openbrowser.Verify Page Loaded

Should be able to login thru The User Credentials
     [Tags]  Flightdemo
     Login.Sign-on thru user credentials
     Login.Capture Page Screenshot With Unique Name

Should be able to navigate to Flight Finder Page and click to Continue button
     [Tags]  Flightdemo     Flightfinder.Click to navigate Flight finder page
     Flightfinder.Capture Page Screenshot With Unique Name

Should be able to navigate to Select Flight Page and click to Continue button
     [Tags]  Flightdemo
      Selectflight.Click to navigate Select Flight page
      Selectflight.Capture Page Screenshot With Unique Name

Should be able to Book flights thru Flight Application
     [Tags]  Flightdemo
     Bookflight.Enter the credit card details to Book a Flight page
     Bookflight.Capture Page Screenshot With Unique Name

Should be able to verify Flight Confirmation page and close browser by logging out
     [Tags]  Flightdemo
     Logout.Logs out from flight confirmation page and close the browser
     Logout.Capture Page Screenshot With Unique Name


