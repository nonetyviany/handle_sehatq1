*** Settings ***
Library     SeleniumLibrary
Resource    ../TestScenario/EditProf.robot
Resource    ../Config/Production.robot
Resource    ../ObjectPage/EditProfPage.robot
Resource    ../Ob

Test Setup   Login page is open
Test Teardown    Close page


*** Test Cases ***
#Check Data Diri button
#    [Template]    Check edit Data Diri button
#    ${DataButton}

#Check change Photo Profile
#    [Template]    Check Upload Photo
#    /Users/nonetyviany/Downloads/durian-.jpeg

Edit Profile Functionality
    [Template]    Check Register
    ${fullnamemax}        ${maleInput}        ${None}     4     ${None}         address aja         user failed edited      #name more than 36
    n                     ${maleInput}        ${None}     4     ${None}         address aja         user failed edited      #name < 2
#    12                    ${maleInput}        ${None}     4     ${None}         address aja         user failed edited      #name with special character
#    noni                  ${femaleInput}      12          2     ${None}         address aja         user failed edited      #tinggi badan > 3
#    noni                  ${femaleInput}      0           2     ${None}         address aja         user failed edited      #tinggi badan 0
#    noni                  ${femaleInput}      sas         2     ${None}         address aja         user failed edited      #tinggi special character
#    noni                  ${femaleInput}      ${none}     22     ${None}         address aja         user failed edited     #berat >3
#    noni                  ${femaleInput}      ${none}     0     ${None}         address aja         user failed edited      #berat 0
#    noni                  ${femaleInput}      ${none}     aa     ${None}         address aja         user failed edited     #berat special char
#    noni                  ${femaleInput}      ${none}     22     ${None}         ${address256}         user failed edited     #address > 256
#    noni                  ${femaleInput}      ${none}     22     ${None}         nana                   user success edited     #success




