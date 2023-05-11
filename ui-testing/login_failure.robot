*** Settings ***
Library   SeleniumLibrary
Test Template    Flow login failure
Suite Setup  ไปยังหน้า login
Suite Teardown   Close Browser

*** Variables ***
${URL}     http://58.97.116.241:3000

*** Test Cases ***
#-----------------------------------------------------------------------------
#     Test case name       |     User       | Password   |    Expected result |
#-----------------------------------------------------------------------------
User ผิด                          somkiat1        1234567       Login failure
Password ผิด                      somkiat         45678         Login failure
User ว่าง หรือ ไม่ได้กรอก            ${EMPTY}        1234567       Login failure
Password ว่าง หรือ ไม่ได้กรอก        somkiat          ${EMPTY}     Login failure

*** Keywords ***
Flow login failure
    [Arguments]  ${user}   ${password}   ${expected result}
    ทำการ login ด้วย user="${user}" และ password="${password}"
    ไม่สามารถ login เข้าระบบได้   ${expected result}

ไม่สามารถ login เข้าระบบได้
    [Arguments]   ${expected result}
    Wait Until Element Contains    xpath:/html/body/div/h4    ${expected result}  

ทำการ login ด้วย user="${user}" และ password="${password}"
    Input Text    name=name    ${user}
    Input Text    name=password    ${password}
    Click Element    xpath://form/button
    
ไปยังหน้า login
    Open Browser   ${URL}/login   
    ...    browser=chrome
    ...    remote_url=http://selenium-hub:4444/wd/hub
    Maximize Browser Window