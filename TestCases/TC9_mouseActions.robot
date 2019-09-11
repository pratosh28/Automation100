*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
#${URL}  https://www.google.com
${URL}  https://www.facebook.com

*** Test Cases ***
TC_009 Mouse Actions
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  2 seconds
    #right Click
    open context menu  name:email
    #double click
    double click element  name:email
    #Input credentials with Argument  pratosh.kr@gmail.com  90313156959031315695
    mouse over  name:email
    sleep  5 seconds
    Close Browser


*** Keywords ***
Input credentials without Argument
    input text  name:email  pratosh.kr@gmail.com
    input password  xpath://input[@name='pass']  90313156959031315695

Input credentials with Argument
    [Arguments]  ${email}  ${password}
    input text  name:email  ${email}
    input password  xpath://input[@name='pass']  ${password}