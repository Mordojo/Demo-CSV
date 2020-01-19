*** Settings ***
Library    SeleniumLibrary   
Library    Collections  
Library    OperatingSystem
Library    CSVLibrary.py

*** Testcases ***
Methode 1 - Read file from csv
    Log    Methode(1):
    ${all users}    Read CSV File    sample.csv
    :FOR  ${user}   in   ${all users}
    \    Log   ${user}[0] - ${user}[1]

Methode 2 - Read file from csv
    Log    Methode(2):
    ${ReadCSV}    Read CSV File    sample.csv
    :FOR  ${cell}   in   ${ReadCSV}
    \    Log   ${cell[0][0]}

New Test case
