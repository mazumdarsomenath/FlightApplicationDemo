*** Settings ***
Library  Selenium2Library
Library  uuid

*** Variables ***
# User name for Sign-in Flight Demo Application
${USER_NAME}    mercury
# Password for Sign-in Flight Demo Application
${PASSWD}       mercury
# First name to be entered for booking the flight
${FIRST_NAME}   FNAME
# Last name to be entered for booking the flight
${LAST_NAME}    LNAME
# Credit Card# to be entered for booking the flight
${CC_NUMBER}    1234567887654321
# URL for the Flight Demo Application
${URL}          http://www.newtours.demoaut.com/mercurywelcome.php
# Browser for the flight demo application
${BROWSER}      firefox