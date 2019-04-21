## story_greet <!--- The name of the story. It is not mandatory, but useful for debugging. --> 
* greet <!--- User input expressed as intent. In this case it represents users message 'Hello'. --> 
 - utter_name <!--- The response of the chatbot expressed as an action. In this case it represents chatbot's response 'Hello, how can I help?' --> 
 
## story_goodbye
* goodbye
 - utter_goodbye

## story_thanks
* thanks
 - utter_thanks
 
## story_name
* name{"name":"Sam"}
 - utter_greet

## story_updateserv
* updateserv{"server":"gameserver"}
 - utter_updateserv

## story_dtdata1
* inform{"dtdata":"dt data"}
 - utter_dtdata
* inform{"datetime": "today"}
 - utter_dtdatafull

## story_dtdata2
* inform{"dtdata":"dt data", "datetime": "today"}
 - utter_dtdatafull