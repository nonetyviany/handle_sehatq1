*** Settings ***
Library    SeleniumLibrary
Resource    ../ObjectPage/LoginPage.robot
Resource    ../Config/Production.robot

*** Variables ***
${akunIcon}         xpath=//*[@class='sc-jzJRlG dOVASO']
${profButton}       xpath=//*[@class='sc-gZMcBi sc-kAzzGY kqazqG Anchor-NexLink-Function']
${editButton}       xpath=//a[@class='chakra-link css-1pwr2bt']
${nameInput}        xpath=//input[@name='name']
${dateInput}        xpath=//*[@class='sc-jWBwVP ieWIjH']
${datec}            xpath=//*[@aria-label='Tue Nov 16 1993']
${genInput}         xpath=//button[@class='sc-bxivhb fCOysa sc-ifAKCX dnTXFY']
${femaleInput}      xpath=//*[contains(text(),'Perempuan')]
${maleInput}        xpath=//*[contains(text(),'Laki-laki')]
${DataButton}       xpath=//a[@class='sc-gZMcBi sc-kAzzGY dEWIIX sc-ifAKCX fMhNNK']
${editPhotoButton}  xpath=//button[@class='sc-bxivhb fCOysa sc-ifAKCX guCuFO']
${fileInput}        xpath=//*[@for='logo-image']
${heighInput}       xpath=//input[@name='height']
${weightInput}      xpath=//input[@name='weight']
${phoneInput}       xpath=//input[@name='phone']
${addressInput}     xpath=//textarea[@name='address']
${saveButton}       xpath=//button[@Class='sc-bxivhb giIfj sc-ifAKCX kmPYUr']
${address256}       Jalan Sanity jhsjhjhsaja sjahsjahsa jshjahsja sjahjshaj sjahjshajshajs ajshhaj sjahsja jshjahsjahsjahjshajhsjahsjahjshajshajhsjahsjahjshjahsjhja sja jshajs jahsjah sjahsjahsj ajshj asjahjshajshajshja sjahsj a hjshajs ahsjahsj hjsahjs ahjs aj. hsj ahsja sjajs ajshja





*** Keywords ***
user success for login
    input text      ${inputEmail}       ${validEmail}
    input password  ${inputPassword}    ${validPassword}
    click button    ${loginButton}

user click account icon
    wait until element is visible    ${akunIcon}         60s
    click element    ${akunIcon}

user click profile menu
    wait until element is visible    ${profButton}      180s
    click element    ${profbutton}

user click edit profile button
    wait until element is visible    ${editbutton}
    click element    ${editButton}

user click ID button
    [Arguments]    ${ID}
    wait until element is visible    ${databutton}
    click element    ${ID}

user should see Verification ID page
    wait until page contains    Verifikasi Data Diri
    page should contain    Verifikasi Data Diri

user click Edit Photo Button
    wait until element is visible    ${editPhotoButton}     40s
    click element    ${editphotobutton}

user select photo
    [Arguments]    ${photo}
    wait until element is visible    ${fileInput}       40s
    choose file    ${fileInput}       ${photo}


user see new photo success upload
    wait until element is visible    ${editphotobutton}
    element should be visible    ${editphotobutton}

user click simpan button
    wait until element is visible    ${savebutton}
    element should be visible    ${savebutton}

user success edited
    wait until element is not visible    ${savebutton}
    element should not be visible    ${saveButton}

user failed edited
    wait until element is visible    ${savebutton}
    element should be visible    ${saveButton}

user can see edit profile validate
    [Arguments]    ${Validate}
    run keyword if    '${Validate}'=='failed edited'        user failed edited
    ...     ELSE IF    '${Validate}'=='success edited'      user success edited


#form
user input fullnames
    [Arguments]    ${full_name}
    wait until element is visible  ${nameInput}         60s
    clear element text    ${nameInput}
    input text  ${nameInput}    ${full_name}

user select dob
    wait until element is visible   ${dateInput}
    click element    ${dateInput}
    click element    ${datec}

user select gender
    [Arguments]    ${gender}
    wait until element is visible   ${geninput}
    click element        ${geninput}
    click element    ${gender}

user input Height Body
    [Arguments]    ${height}
    wait until element is visible  ${heighInput}
    clear element text    ${heighInput}
    input text  ${heighInput}    ${height}

user input Weight Body
    [Arguments]    ${weight}
    wait until element is visible  ${weightInput}
    click element    ${weightinput}
    clear element text    ${weightInput}
    input text  ${weightInput}    ${weight}

user input phone number
    [Arguments]     ${phone}
    wait until element is visible  ${phoneInput}
    clear element text    ${phoneInput}
    input text  ${phoneInput}    ${phone}

Get current date for phone number
    ${currentdate}               Get Current Date
    ${nophone}                   Convert Date                        ${currentdate}        result_format=%d%m%y%H%M
    Set Local Variable           ${phoneHome}                         628${nophone}
    Set Global Variable          ${PhoneUser}                        ${phoneHome}


user input address
    [Arguments]     ${address}
    wait until element is visible  ${addressInput}
    clear element text    ${addressInput}
    input text  ${addressInput}    ${address}
