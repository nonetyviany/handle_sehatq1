*** Settings ***
Library    SeleniumLibrary
Resource   ../ObjectPage/LoginPage.robot
Resource    ../Config/Production.robot

*** Variables ***

*** Keywords ***
Login with email and password
    [Arguments]    ${Email}     ${Password}      ${Validation}
    Given user is in login page
    When user input email                           ${Email}
    And user input password                         ${Password}
    And user click Login button
    Then user can see login validation              ${Validation}

Check 'Manfaat Log In' Link
    [Arguments]    ${manfaat}
    Given user is in login page
    When user click 'manfaat login' link             ${manfaat}
    Then user should see manfaat login page

Check 'Forgot Password' Link
    [Arguments]     ${forgotPassword}
    Given user is in login page
    When user click 'forgot password' link           ${forgotPassword}
    Then user should see forgot password page

Check 'Gmail' button
    [Arguments]     ${gmail}
    Given user is in login page
    When user click Gmail button                     ${gmail}
    Then user should see Gmail page

Check 'Register' button
    [Arguments]     ${register}
    Given user is in login page
    When user click register link                    ${register}
    Then user should see Register page

Check 'Corporate Log In' button
    [Arguments]     ${corporateLogin}
    Given user is in login page
    When user click corporate log in link            ${corporateLogin}
    Then user should see corporate login page