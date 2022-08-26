*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${inputEmail}               xpath=//input[@id='email']
${inputPassword}            xpath=//input[@type='password']
${loginButton}              xpath=//button[contains(text(),'Login')]
${manfaatButton}            xpath=//*[contains(text(),'Manfaat Log in')]
${forgotPasswordButton}     xpath=//*[contains(text(),'Lupa Password?')]
${gmailButton}              xpath=//a[@href="/auth/login/google"]
${registerButton}           xpath=//*[contains(text(),'Daftar')]
${registerPageButton}       xpath=//button[contains(text(),'Daftar')]
${corporateLoginLink}       xpath=//a[contains(text(),'di sini')]
${corporateLoginButton}     xpath=//button[contains(text(),'Login')]


*** Keywords ***
#Login
user is in login page
    Wait Until Element Is Visible    ${loginButton}
    element should be visible        ${loginButton}

user input email
    [Arguments]    ${Email}
    input text          ${inputEmail}     ${Email}

user input password
    [Arguments]    ${Password}
    input password      ${inputPassword}  ${Password}

user click Login button
    click button    ${loginButton}

user should stay in login page
    Wait Until Element Is Visible    ${loginButton}
    element should be visible        ${loginButton}

user success login
    Wait Until Element Is Not Visible        ${loginButton}
    element should not be visible            ${loginButton}

user can see login validation
    [Arguments]        ${Validation}
     run keyword if    '${Validation}' == 'success login'   user success login
    ...    ELSE IF  '${Validation}' == 'invalid login'      user should stay in login page


#manfaat login
user click 'Manfaat Login' link
    [Arguments]    ${manfaat}
    click element    ${manfaat}

user should see Manfaat Login page
     wait until element is visible    ${loginButton}
     element should be visible        ${loginButton}


#forgot password
user click 'Forgot Password' link
    [Arguments]    ${forgotPassword}
    click element    ${forgotPassword}

user should see Forgot Password page
    page should contain    Ikuti petunjuk pada email untuk aktivasi password baru.


#Gmail
user click Gmail button
    [Arguments]    ${gmail}
    click element    ${gmail}

user should see Gmail page
    page should contain    Login dengan Google


#Register
user click Register link
    [Arguments]    ${register}
    click element    ${register}

user should see Register page
    wait until element is visible   ${registerPageButton}
    element should be disabled      ${registerPageButton}


#Corporate Log In
user click Corporate Log In link
    [Arguments]    ${corporateLogin}
    click element    ${corporateLogin}

user should see Corporate Login page
    wait until element is visible   ${corporateLoginButton}
    element should be visible       ${corporateLoginButton}