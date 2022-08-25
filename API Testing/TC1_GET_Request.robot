*** settings ***
Library     RequestsLibrary

*** variables ***
${base_url}    https://demoqa.com
${book}     9781449325862
*** test cases ***
Get_BookInfo
    create  session     mysession   ${base_url}
    $response = get reqest mysession /books/${book}
