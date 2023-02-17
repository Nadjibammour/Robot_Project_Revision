*** Settings ***
Library     String


*** Variables ***
@{ma_liste1}=       1    2    3    4
@{ma_liste2}=       samedi    dimmanche    lundi    mardi


*** Test Cases ***
boucle for1
    FOR    ${element}    IN    @{ma_liste1}
        Log To Console    ${element}
    END

boucle for2
    FOR    ${element}    IN    @{ma_liste2}
        Log To Console    ${element}
    END

boucle for3
    FOR    ${counter}    IN RANGE    2    21    5
        Log To Console    ${counter}
    END

boucle for4
    FOR    ${element}    IN    @{ma_liste1}
        Log To Console    ${element}
        IF    ${element}==2            BREAK
    END

boucle for5
    FOR    ${element}    IN    @{ma_liste2}
        Log    ${element}
        IF    '${element}'=='samedi'            BREAK
    END
