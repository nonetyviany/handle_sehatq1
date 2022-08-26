*** Settings ***
Library    SeleniumLibrary
resource    ../ObjectPage/LoginPage.robot




*** Variables ***
${validEmail}            nonetyvianysusilo12@gmail.com
${validPassword}         Sehatq123
${invalidEmail}         nonety@gmail.com
${invalidPassword}      12345678
${fullnameMax}          Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the s when an unknown printer took a galley of type and scrambled it to make a type specimen boo hsjjaasa sjajsjahs jashajhsjahs ahjshaj sjahsjahsja sjahsjahjs jahsjahsja shajhsja sjahjsha sahsjahjshaj sajshjahsja shajshjshaj sjahsja sjahsjas haj jahsjahsjhjshaj sjahs jahjshajs jhajahjsha jshajhsaj ahsjahjahjhajs jashajhsjah ajhsja ajhsajhsahajsja sjahsjajaj


*** Keywords ***
Login page is open
    open browser    https://account.sehatq.com/login    chrome
    maximize browser window

Register page is open
    open browser    https://account.sehatq.com/daftar/email    chrome
 #   maximize browser window


Profil page is open
    open browser    https://www.sehatq.com/profil   chrome


Close page
    close all browsers