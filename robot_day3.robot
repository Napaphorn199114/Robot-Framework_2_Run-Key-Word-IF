*** Settings ***
Library    BuiltIn
Library    Selenium2Library
Resource    file_resource/Keywords.robot
Resource    file_resource/Variables.robot



*** Test Cases ***
เทสส่งค่าไปยังคีย์เวิร์ด
    Hello Name    Napaphorn

