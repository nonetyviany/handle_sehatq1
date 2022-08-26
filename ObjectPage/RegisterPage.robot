*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${fullnameInput}        xpath=//input[@id='name']
${emailInput}           xpath=//input[@id='email']
${passwordInput}        xpath=//input[@type='password']
${tncCheckbox}          xpath=//span[@for='ok-check']
${registerButton}       xpath=//button[@class='sc-pVTma bHEGA-D sc-jrQzUz bkMTmP']
${tncLink}              xpath=//a[@href="https://www.sehatq.com/kebijakan-privasi"]
${loginLink}            xpath=//span[contains(text(),'Klik disini')]
${tncValuesx}           xpath=//input[@resource-id='ok-check']


*** Keywords ***
#register
user is in Register page
    wait until element is visible    ${registerbutton}
    element should be visible        ${registerButton}

user input fullname
    [Arguments]    ${fullname}
    wait until element is visible    ${fullnameinput}               60s
    input text     ${fullnameinput}     ${fullname}

user input emails
    [Arguments]    ${email}
    input text    ${emailinput}     ${email}

user input passwords
    [Arguments]    ${password}
    input password    ${passwordInput}      ${password}

user click term and condition checkbox
    click element    ${tncCheckbox}

user should see Edit Profile Page
    page should contain    Edit Profil Kamu

##Checkbox Validate
#    ${isChecked}  run keyword and return status  checkbox should be selected  ${tncValuesx}}
#    run keyword if    '${isChecked}' == 'false'    user click term and condition checkbox
#    ...     ELSE    Log to console  tnc already checked


user click Register button
    click button    ${registerbutton}

user failed register
    wait until element is visible    ${registerbutton}
    element should be visible        ${registerButton}

user successfully registered
    wait until page contains    Lengkapi Profil
    page should contain         Lengkapi Profil

user can see register validation
    [Arguments]    ${Validation}
    run keyword if    '${Validation}'=='success registered'     user successfully registered
    ...     ELSE IF    '${Validation}'=='failed registered'   user failed register


#TnC Link
user click term and condition link
    [Arguments]    ${tnc}
    click element    ${tnc}

user should see term and condition page
    wait until page contains    Kebijakan Privasi
    page should contain    Kebijakan Privasi

#Log In Link
user click Log In link
    [Arguments]    ${login}
    click element    ${login}

user should see Log In page
    wait until element is visible    ${registerbutton}
    element should be visible        ${registerButton}