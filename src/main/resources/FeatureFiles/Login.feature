@Login
Feature: Flight Search Feature 
		As a Automation tester
  		I want to test flight search functionality
  		So that I can book flight

Background: User navigates to Company home page 
	Given Open Browser and navigate to Home page 
	
@Basic
Scenario: Flight Search scenario
	When valid Depart and arrival pair is entered 
	And Search button clicked
	Then user should able to navigate to Select Flight Page 
	And Verify Application is closed
	
@DateTables
Scenario Outline: search for multiple combinations scenario
	When valid <Depart> and <Arrival> location is entered
	And Search button clicked
	Then user should able to navigate to Select Flight Page
	And Verify Application is closed
	
	Examples: 
		| Depart   	 | Arrival    |
		| MCO        | ATL        |
		| DAL        | ATL        |
		
		
#@ExcelSheet 
	#Scenario: Flight Search using excel sheet
	#Meta-data: {"dataFile" : "/CucumberBDDSW/src/main/resources/FeatureConfiguration.xlsx"}
	#When Valid Depart and arrival is entered from excelsheet placed at excel sheet
	#Then user should able to navigate to Select Flight Page
	#And Verify Application is closed