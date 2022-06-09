*** Settings ***
Library    BuiltIn
Library    Selenium2Library
Library    OperatingSystem

*** Test Cases ***
Run-Keyword-If    
    ${TYPE}=    Set Variable    CAT
    Run Keyword If    '${TYPE}' == 'DOG'    Log    Testing Variant 1
    Run Keyword If    '${TYPE}' == 'CAT'    Log    Testing Variant 2
    Run Keyword If    '${TYPE}' == 'Duck'    Log    Testing Variant 3


Run-Keyword-Ignore-Error
    @{item}    Create List    Dog    Cat    Duck
    Run Keyword And Ignore Error    Should Be Empty    ${item}   #Should Be Empty จะทำการเช็คว่าในตัวแปร  length =0 หรือป่าว ถ้าไม่มีจะเป็น true แต่ใช้ Run Keyword And Ignore Error ทำให้ run pass


