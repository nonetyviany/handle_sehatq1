*** Settings ***
Library    SeleniumLibrary
Resource    ../Config/production.robot
Resource    ../TestScenario/Register.robot

Test Setup  Register page is open
Test Teardown    Close page
Library    SeleniumLibrary
Resource    ../TestScenario/Register.robot
Resource    ../Config/Production.robot


*** Test Cases ***
#tnc link
Check Term and Condition Text Link
    [Template]    Check term and condition link
    ${tncLink}

#Log In Link
Check Log In Text Link
    [Template]    Check Log In Link
    ${loginLink}

Check Register Functionality
    [Template]    check register functionality
#    ${none}            ${none}                         ${none}              failed registered           #empty all field
#    ${none}            nonetyviany@gmail.com           1234567              failed registered           #empty full name
#    ${fullnamemax}     nonetyviany@gmail.com           1234567              failed registered           #fullname max characters (pakai 500 char)
#    Nama.Nonety        nonetyviany@gmail.com           1234567              failed registered           #fullname use special character/number
#    Nana               ${none}                         1234567              failed registered           #empty email
#    Nana               nonetyviany                     1234567              failed registered           #wrong format email
#    Nana               nonetyvianysusilo12@gmail.com   1234567              failed registered           #existing email
#    Nana               nonetyvian@gmail.com            ${none}              failed registered          #empty password
#    Nana               nonetyvian@gmail.com            1234                 failed registered          #passwordlessthan6
     Nonea              chckc38@gmail.com               12344567             success registered          #valid data


