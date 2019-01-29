# UNicode
The team project for the hackathon 'We trip out' from hackathoneando.

Initially we design an app for the purpose of social media and traveling integration.

In our product we end up with flutter developed application for both iOS and Android, that we can explain in to steps:

## Frontend:

  * Initial dispositions:
  Our design snapshots can be found in the folder we-trip-out/designs-app

  * Results:
  The view for the app was developed in flutter, using the design snapshots, in fact the time is an important factor and we get the results that you can see running the app.

## Backend:

  * Initial dispositions:
  Our objective was use firebase to full support the app with a serverless architecture using the no relational database firestore, the firebase auth plugin in the authentication step, later cloud functions to process the firestore data before the request in the way to proccess the background graph managing the users relationships.

  * Results:
  We connect the app to firebase and add some functionality in the model with Auth and firestore, later we would like to implement the cloud functions to serve information that is difficult to process in the client.

### Note: To sign in to the app use the credentials belo, or create a new account with a valid email and password(the app doesn't verify for the validity of the cretendials now, but it can be added later), also firebase verify for the validity and can throw an exception when the email is malformed or the pasword is too short(less than 6 characters).
  * email: AndrewHertz98@gmail.com
  * pasword: thePassw0rd
  
