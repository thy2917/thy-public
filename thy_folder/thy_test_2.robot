*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/PageObjects/KeyWords/Project_Keyword.robot
Resource    ../../Resources/Utils.robot
Suite Setup    Open TCMS and Login successfully    admin    password
Suite Teardown    Close Browser

*** Test Cases ***
Create Project - 01a Create Project successfully after input mandatory fields
    [Documentation]    Confirm Content: Create Project successfully after input mandatory fields
    ...                 Precondition: Navigate and Login to TCMS page successful
    ...                   Step: 1. Clicking on CREATE button in my project
    ...                         2. Input Project Prefix *
    ...                         3. Input Project Name *
    ...                         4. Tick on Domain * checkbox
    ...                         5. Input Summary *
    ...                         6. Click CREATE button
    ...                         7. Verify Project added successfully.
    ...                  Result: Project added successfully.
    Click on +CREATE button in My Project
    Enter All Mandatory Fields    prefix    test create project    summary
    Tick on Other Checkbox in Domain*
    Click on CREATE button in Create project
    Verify display Project added successfully.
    [Teardown]    Delete Project Successfully
