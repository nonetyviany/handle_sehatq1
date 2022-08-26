*** Settings ***
Library     SeleniumLibrary
Resource    ../TestScenario/Login.robot
Resource    ../Config/Production.robot
Test Setup   Login page is open
Test Teardown    Close page


*** Test Cases ***
Check Login functionality
    [Template]    Login with email and password
    ${empty}           ${empty}                     invalid login
    nonety             ${validPassword}             invalid login
    ${validEmail}      1234                         invalid login
    ${invalidEmail}    ${invalidPassword}           invalid login
    ${invalidEmail}    ${validPassword}             invalid login
    ${validemail}      ${invalidPassword}           invalid login
    ${validEmail}      ${validPassword}             success login

Check manfaat Log In Link
    [Template]    check 'manfaat log in' link
    ${manfaatButton}

Check Forgot Password Link
    [Template]    check 'forgot password' link
    ${forgotPasswordButton}

Check Gmail button
    [Template]    check 'gmail' button
    ${gmailButton}

Check Register button
    [Template]    check 'register' button
    ${registerButton}

Check Corporate Log In button
    [Template]    check 'corporate log in' button
    ${corporateLoginLink}



