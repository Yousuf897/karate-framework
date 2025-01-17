@BookStore
  Feature: Working with BookStore APIs

    // 445ea41a-1398-4839-bbce-21c51c544a3b
    Background:
      Given url 'https://bookstore.demoqa.com'
      * def userId = '445ea41a-1398-4839-bbce-21c51c544a3b'
      * def requestData = karate.read('classpath:data/usercredentials.json')
      * def tokenResponse = call read('classpath:features/bookstore/generateusertoken.feature')
      * def userToken = tokenResponse.userToken

    @CreateUserUnderBookStore
    Scenario: Create a user under bookstore database
      And path '/Account/v1/User'
      And header Content-Type = 'application/json'
      And request requestData
      When method post
      And status 201
      And print response
      And match response != null

    @UnauthorizedRequestForUser
    Scenario: Make unauthorized request to get user endpoint
      And path '/Account/v1/User', userId
      When method get
      And status 401
      And print response
      And match response.message == 'User not authorized!'


    @AuthorizedRequestForUser
    Scenario: Make unauthorized request to get user endpoint
      And path '/Account/v1/User', userId
      And header Authorization = 'Bearer ' + userToken
      When method get
      And status 200
      And print response
      And match response != null


