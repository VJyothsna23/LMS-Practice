@BatchModule, @BatchModule-Post
Feature: LMS API Batch Module - Create Batch Requests - Post

  @POST_Batch_01
  Scenario: Authorized user able to create new Batch with valid Url,end point,request body
    Given Authorized User sets Post Batch request with valid Url,valid endpoint and valid request body
    When User sends POST Batch request
    Then User receives 201 OK Status and valid response in Post Batch response body   
   
  @POST_Batch_03
  Scenario: User should not be able to create new Batch with valid Url,request body and invalid end point
    Given User sets Post Batch request with valid Url, invalid endpoint and valid request body
    When User sends POST Batch request
    Then User receives 404 Not found status in Post Batch response

  @POST_Batch_04
  Scenario: User should not be able to create new Batch with invalid Url and valid request body, end point
    Given User sets Post Batch request with invalid Url, valid endpoint and valid request body
    When User sends POST Batch request
    Then User receives 404 Not found status in Post Batch response

  @POST_Batch_06-41
  Scenario Outline: Authorized user able to create new Batch with valid Url,end point,request body with data driven
    Given Authorized User sets Post Batch request with valid Url,valid endpoint, request body with "<TestCaseNumber>" and "<Sheetname>" from excel
    When User sends POST Batch request
    Then User receives "<Status code>" in Post Batch response.

    Examples: 
      | TestCaseNumber | Sheetname    | Status code |
      | Batch_Post_01   | AllPostTests |         201 |
      | Batch_Post_06   | AllPostTests |         400 |
      | Batch_Post_07   | AllPostTests |         400 |
      | Batch_Post_08   | AllPostTests |         400 |
      | Batch_Post_09   | AllPostTests |         400 |
      | Batch_Post_10   | AllPostTests |         400 |
      | Batch_Post_11   | AllPostTests |         400 |
      | Batch_Post_13   | AllPostTests |         400 |
      | Batch_Post_14   | AllPostTests |         400 |
      | Batch_Post_15   | AllPostTests |         400 |
      | Batch_Post_16   | AllPostTests |         201 |
      | Batch_Post_17   | AllPostTests |         400 |
      | Batch_Post_18   | AllPostTests |         400 |
      | Batch_Post_19   | AllPostTests |         400 |
      | Batch_Post_20   | AllPostTests |         201 |
      | Batch_Post_21   | AllPostTests |         400 |
      | Batch_Post_22   | AllPostTests |         400 |
      | Batch_Post_23   | AllPostTests |         400 |
      | Batch_Post_24   | AllPostTests |         400 |
      | Batch_Post_25   | AllPostTests |         400 |
      | Batch_Post_26   | AllPostTests |         400 |
      | Batch_Post_28   | AllPostTests |         400 |
      | Batch_Post_29   | AllPostTests |         400 |
      | Batch_Post_30   | AllPostTests |         400 |
      | Batch_Post_31   | AllPostTests |         400 |
      | Batch_Post_32   | AllPostTests |         400 |
      | Batch_Post_33   | AllPostTests |         400 |
      | Batch_Post_34   | AllPostTests |         400 |
      | Batch_Post_35   | AllPostTests |         400 |
      | Batch_Post_36   | AllPostTests |         400 |
      | Batch_Post_37   | AllPostTests |         400 |
      | Batch_Post_38   | AllPostTests |         400 |
      | Batch_Post_39   | AllPostTests |         400 |
      | Batch_Post_40   | AllPostTests |         409 |
      | Batch_Post_41   | AllPostTests |         409 |
