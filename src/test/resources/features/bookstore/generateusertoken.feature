@GenerateTokenForUser
Feature: Generate user Token

  Background:
    * def requestData = karate.read('classpath:data/usercredentials.json')

  Scenario: Generate a valid token for existing user
  Given url 'https://bookstore.demoqa.com'
  Given path '/Account/v1/GenerateToken'
  And header Content-Type = 'application/json'
  And request requestData
  When method post
  And status 200
  And print response
  And match response.token != null
  * def userToken = response.token
#  * return { token: userToken }