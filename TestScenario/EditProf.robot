*** Settings ***
Library    SeleniumLibrary
Resource    ../Config/Production.robot
Resource    ../ObjectPage/EditProfPage.robot


*** Variables ***

*** Keywords ***
Check Register
    [Arguments]    ${full_name}     ${gender}   ${height}   ${weight}   ${phone}    ${address}  ${Validate}
    Given user success for login
    And user click account icon
    And user click profile menu
    And user click edit profile button
    When user input fullnames          ${full_name}
    And user select dob
    And user select gender          ${gender}
    And user input Height Body    ${height}
    And user input weight body    ${weight}
    And user input phone number   ${phone}
    And user input address          ${address}
    And user click simpan button
    Then user can see edit profile validate    ${Validate}

Check edit Data Diri button
    [Arguments]    ${ID}
    Given user success for login
    And user click account icon
    And user click profile menu
    And user click edit profile button
    When user click id button          ${ID}
    Then user should see Verification ID page



Check Upload Photo
    [Arguments]    ${photo}
    Given user success for login
    And user click account icon
    And user click profile menu
    And user click edit profile button
    When user select photo              ${photo}
    Then user see new photo success upload