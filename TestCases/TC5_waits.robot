*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
#${URL}  https://www.google.com
${URL}  https://www.facebook.com

*** Test Cases ***
TC_002 Text Box Manipulation
    ${speed}=  get selenium speed
    log to console  ${speed}
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    #sleep  5 seconds
    set selenium speed  1seconds
    #Input credentials without Argument
    ${tm}=  get selenium timeout
    log to console  ${tm}
    Input credentials with Argument  pratosh.kr@gmail.com  90313156959031315695
    ${speed}=  get selenium speed
    log to console  ${speed}
    #Close Browser


*** Keywords ***
Input credentials without Argument
    wait until page contains  Facebook
    input text  name:email  pratosh.kr@gmail.com
    input password  xpath://input[@name='pass']  90313156959031315695

Input credentials with Argument
    [Arguments]  ${email}  ${password}
    input text  name:email  ${email}
    input password  xpath://input[@name='pass']  ${password}