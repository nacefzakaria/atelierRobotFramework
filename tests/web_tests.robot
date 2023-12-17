*** Settings ***
Documentation     Udemy Automation Tests
Library           SeleniumLibrary
Resource          ../resources/udemy_keywords.robot
Suite Setup       Open Browser    ${UD_URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${UD_URL}         https://www.udemy.com/
${BROWSER}        chrome

*** Test Cases ***
Login to Udemy
    Click Login Button  
    Sleep    60s
    [Documentation]    Login to Udemy with your credentials.
    Input Username     utacostore@gmail.com
    Input Password     id:form-group--3     Zaka12/02
    Submit Login

My Learning check 
    [Documentation]    Check my courses for a course.
    Click My Learning Button
    
Search for Courses
    [Documentation]    Search for your courses on Udemy.
    Input Search Term    YourCourseName
    Submit Search
    Verify Course Appears    YourCourseName
