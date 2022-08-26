*** Settings ***
Library    SeleniumLibrary
Resource    ../ObjectPage/RegisterPage.robot
Resource    ../Config/Production.robot

#Register
#    open browser    https://account.sehatq.com/daftar/email     chrome
#    input text    ${fullnameInput}      Nonety
#    input text    ${emailinput}         nonetyviany
#    input password    ${passwordInput}  1234567
#    click element    ${tncCheckbox}
#    wait until element is enabled    ${registerButton}
#    element should be enabled    ${registerButton}
#    click button    ${registerButton}
#    wait until element is visible    ${registerButton}
#    element should be visible    ${registerButton}
#    close browser


*** Keywords ***
#register
Check Register Functionality
    [Arguments]    ${fullname}      ${email}    ${password}     ${Validation}
    Given user is in Register page
    When user input fullname                        ${fullname}
    And user input emails                            ${email}
    And user input passwords                         ${password}
    And user click term and condition checkbox
    And user click Register button
    Then user can see register validation           ${Validation}


#TnC Link
Check Term and Condition Link
    [Arguments]    ${tnc}
    Given user is in register page
    When user click term and condition link    ${tnc}
    Then user should see term and condition page

#Log In Link
Check Log In Link
    [Arguments]    ${login}
    Given user is in register page
    When user click Log In link             ${login}
    Then user should see log in page
