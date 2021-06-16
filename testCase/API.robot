*** Settings ***
Library     REST   


*** Variables ***
${json}         { "title": "recommendation", "body": "motorcycle", "UserId": 12 }


*** Test Cases ***
GET To make sure this end-point have a correct data-type below                 
    GET     https://jsonplaceholder.typicode.com/posts
    Array   response body
    Integer     $[0].userId               
    Integer     $[0].id          
    String      $[0].title
    String      $[0].body
    Output schema   response body

# GET To make sure this end-point have a correct data-type error                 
#     GET     https://jsonplaceholder.typicode.com/posts
#     Array   response body
#     String     $[0].userId               
#     String     $[0].id          
#     Integer    $[0].title
#     Integer    $[0].body
#     Output schema   response body

POST To make sure this end-point get a correct response compare with the input data
    POST    https://jsonplaceholder.typicode.com/posts  ${json}
    Integer     response status           201
    Output schema  response body

# POST Error To make sure this end-point get a correct response compare with the input data
#     POST    https://jsonplaceholder.typicode.com/posts  ${json}
#     Integer     response status           200
#     Output schema  response body

