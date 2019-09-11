*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
#${URL}  https://www.google.com
${URL}  https://www.facebook.com

*** Test Cases ***
TC_007 Browser_navigation
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    go to  https://www.google.com/
    ${url1}=  get location
    log to console  ${url1}
    go back
    Input credentials with Argument  pratosh.kr@gmail.com  90313156959031315695
    Close Browser


*** Keywords ***
Input credentials without Argument
    input text  name:email  pratosh.kr@gmail.com
    input password  xpath://input[@name='pass']  90313156959031315695

Input credentials with Argument
    [Arguments]  ${email}  ${password}
    input text  name:email  ${email}
    input password  xpath://input[@name='pass']  ${password}