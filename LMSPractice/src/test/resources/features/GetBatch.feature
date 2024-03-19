@BatchModule, @BatchModule-Get
Feature: LMS API Batch Module - Get All Batches, batchID, programID, and batchName

  @Get_All_Batches_01
  Scenario: Authorized user able to view all Batches
    Given Authorized User sets the GET Batches request with valid baseUrl,valid endpoint
    When User sends GET Batches request
    Then User receives 200 OK Status and valid response in GET all Batches response body

  @Get_All_Batches_02
  Scenario: Authorized user should not be able to view all Batches with valid endpoint and invalid url
    Given Authorized User sets the GET Batches request with invalid baseUrl,valid endpoint
    When User sends GET Batches request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_All_Batches_03
  Scenario: Authorized user should not be able to view all Batches with invalid endpoint and valid url
    Given Authorized User sets the GET Batches request with valid baseUrl,invalid endpoint
    When User sends GET Batches request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_All_Batches_04
  Scenario: Unauthorized user not able to view all Batches
    Given Unauthorized User sets the GET Batches request with valid baseUrl,valid endpoint
    When User sends GET Batches request
    Then User receives 401 Unauthorized Status in the Get Batch response

  @Get_by_batchID_05
  Scenario: Authorized user able to view respective Batch with valid endpoint,valid url,valid batchID
    Given Authorized User sets the GET by batchID request with valid baseUrl,valid endpoint ,valid id
    When User sends GET by BatchID request
    Then User receives 200 OK Status and valid response in GET by batchID response body

  @Get_by_batchID_06
  Scenario: Authorized user should not be able to view respective Batch with valid endpoint,invalid url,valid batchID
    Given Authorized User sets the GET by batchID request with invalid baseUrl,valid endpoint ,valid id
    When User sends GET by BatchID request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_by_batchID_07
  Scenario: Authorized user should not be able to view respective Batch with invalid endpoint,valid url,valid batchID
    Given Authorized User sets the GET by batchID request with valid baseUrl,invalid endpoint ,valid id
    When User sends GET by BatchID request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_by_batchID_08-15
  Scenario Outline: Authorized user should not be able to view respective Batch with valid endpoint,valid url,invalid batchID
    Given Authorized User sets the GET by batchID request with valid baseUrl,valid endpoint, invalid id
    When User sends GET by BatchID request with "<invalid batchID>"
    Then User receives "<status code>" Status in the Get Batch response

    Examples: 
      | invalid batchID | status code |
      |        56567678 |         404 |
      |                 |         404 |
      | 2n78hgt         |         400 |
      | 3&5^7*6         |         400 |
      | &^%$#^          |         500 |

  @Get_by_batchID_16
  Scenario: Unauthorized user should not be able to view respective Batch with valid endpoint,valid url,valid batchID
    Given Unauthorized User sets the GET by batchID request with valid baseUrl,valid endpoint ,valid id
    When User sends GET by BatchID request
    Then User receives 401 Unauthorized Status in the Get Batch response
    
  @Get_by_programID_05
  Scenario: Authorized user able to view respective Batch with valid endpoint,valid url,valid programID
    Given Authorized User sets the GET by programID request with valid baseUrl,valid endpoint ,valid id
    When User sends GET by programID request
    Then User receives 200 OK Status and valid response in GET by programID response body

  @Get_by_programID_06
  Scenario: Authorized user should not be able to view respective Batch with valid endpoint,invalid url,valid programID
    Given Authorized User sets the GET by programID request with invalid baseUrl,valid endpoint ,valid id
    When User sends GET by programID request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_by_programID_07
  Scenario: Authorized user should not be able to view respective Batch with invalid endpoint,valid url,valid programID
    Given Authorized User sets the GET by programID request with valid baseUrl,invalid endpoint ,valid id
    When User sends GET by programID request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_by_programID_08-15
  Scenario Outline: Authorized user should not be able to view respective Batch with valid endpoint,valid url,invalid programID
    Given Authorized User sets the GET by programID request with valid baseUrl,valid endpoint, invalid id
    When User sends GET by programID request with "<invalid programID>"
    Then User receives "<status code>" Status in the Get Batch response

    Examples: 
      | invalid programID | status code |
      |        56567678 |         404 |
      |                 |         404 |
      | 2n78hgt         |         400 |
      | 3&5^7*6         |         400 |
      | &^%$#^          |         500 |

  @Get_by_batchID_16
  Scenario: Unauthorized user should not be able to view respective Batch with valid endpoint,valid url,valid programID
    Given Unauthorized User sets the GET by programID request with valid baseUrl,valid endpoint ,valid id
    When User sends GET by programID request
    Then User receives 401 Unauthorized Status in the Get Batch response

  @Get_by_batchName_17
  Scenario: Authorized user able to view respective Batch with valid endpoint,valid url,valid batchName
    Given Authorized User sets the GET by batchName request with valid baseUrl,valid endpoint ,valid batchName
    When User sends GET by BatchName request
    Then User receives 200 OK Status and valid response in GET by batchName response body

  @Get_by_batchName_18
  Scenario: Authorized user should not be able to view respective Batch with valid endpoint,invalid url,valid batchName
    Given Authorized User sets the GET by batchName request with invalid baseUrl,valid endpoint ,valid batchName
    When User sends GET by BatchName request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_by_batchName_19
  Scenario: Authorized user should not be able to view respective Batch with invalid endpoint,valid url,valid batchName
    Given Authorized User sets the GET by batchName request with valid baseUrl,invalid endpoint ,valid batchName
    When User sends GET by BatchName request
    Then User receives 404 Not found Status in the Get Batch response

  @Get_by_batchName_20-30
  Scenario Outline: Authorized user should not be able to view respective Batch with valid endpoint,valid url,invalid batchName
    Given Authorized User sets the GET by batchName request with valid baseUrl,valid endpoint ,invalid batchName
    When User sends GET by BatchName request with "<invalid batchName>"
    Then User receives "<status code>" Status in the Get Batch response

    Examples: 
      | invalid batchName | status code |
      | dfghjkmn          |         404 |
      | 2n78hgt           |         404 |
      |          34567897 |         404 |
      | a&f^h%$           |         500 |
      |                   |         404 |
      | Jyot hsna Ve      |         404 |
      | jyoThsnAve        |         404 |

  @Get_by_batchName_31
  Scenario: Unauthorized user should not be able to view respective Batch with valid endpoint,valid url,valid batchName
    Given Unauthorized User sets the GET by batchName request with valid baseUrl,valid endpoint ,valid batchName
    When User sends GET by BatchName request
    Then User receives 401 Unauthorized Status in the Get Batch response
