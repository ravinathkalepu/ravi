*** Settings ***
Library     RequestsLibrary
#Library     SeleniumLibrary
Library     XML
Library     OS


*** Variables ***
${base_url}     https://demoqa.com
${book}     9781449325862
*** Test Cases ***
Get_BookInfo
    ${response}=    GET     http://google.com
    #${response}=    GET  http://google.com
    Status Should Be    200
    log to console      ${response.content}

    ${status_code}=    set variable    ${response.status_code}
    log to console    ${status_code}
    #print   ${response}

XMLLibrary
    ${xml_obj}=     parse xml    C:/employee.xml

    ${emp_name}=        get element text    ${xml_obj}  .//row[1]/name
    should be equal as strings    ${emp_name}   manoj

    ${emp_name}=        get element    ${xml_obj}  .//row[1]/name
    should be equal     ${emp_name.text}    manoj

    element text should be    ${xml_obj}    manoj   .//row[1]/name

    ${count}=   get element count    ${xml_obj}     .//row
    log to console    ${count}
