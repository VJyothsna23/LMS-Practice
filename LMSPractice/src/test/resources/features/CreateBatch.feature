@UserLoginModule, @UserLoginModule-Post
Feature: LMS API Batch Module - Create Batch Requests - Post

  @POST_UserLogin_01
  Scenario: User able to Login and get token with valid Url,end point,request body
    Given User sets Post request with valid Url,valid endpoint and valid request body
    When User sends POST request
    Then User receives 201 OK Status and token in the response body   
   
  
