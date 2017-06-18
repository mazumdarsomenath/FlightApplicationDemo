*** Settings ***
Library  Selenium2Library
Library  uuid

*** Variables ***
${USER_NAME}    mercury
${PASSWD}       mercury
${FIRST_NAME}   FNAME
${LAST_NAME}    LNAME
${CC_NUMBER}    1234567887654321
${URL}          http://www.newtours.demoaut.com/mercurywelcome.php
${BROWSER}      firefox