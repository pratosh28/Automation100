*** Settings ***
Library  Collections


*** Variables ***



*** Test Cases ***
TC_004 Declaring Variables
    : FOR  ${i}  IN RANGE  1  5
    \  log to console  ${i}

    @{list}  create list  My  name  is   Pratosh  Kumar.
    : FOR  ${i}  IN  @{list}
    \  log to console  ${i}


    ${var}  set variable  YES
    run keyword if  '${var}'=="YES"  log to console  Yes Ok


    ${key_var}=  set variable  log to console
    run keyword  ${key_var}  Pratosh Kumar


*** Keywords ***