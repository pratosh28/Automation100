*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
#${URL}  https://www.google.com
${URL}  https://www.facebook.com

*** Test Cases ***
TC_010 Keyboard
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  1seconds
    #Input credentials without Argument
    Input credentials with Argument  pratosh.kr@gmail.com  90313156959031315695

    Close Browser


*** Keywords ***
Input credentials without Argument
    input text  name:email  pratosh.kr@gmail.com
    input password  xpath://input[@name='pass']  90313156959031315695

Input credentials with Argument
    [Arguments]  ${email}  ${password}
    press key  name:email  ${email}
    press key  xpath://input[@name='pass']  ${password}
    press key  xpath://*[@id="u_0_2"]  //13