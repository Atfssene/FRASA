# FRASA
FRASA is a Bangkit Capstone Project made by Team Potato Tech. This project creates an application that provides various texts for users to read. This application applies the lessons learned in Machine Learning, Mobile Developement and Cloud Computing

For Android Project located in Master

Executive summary:
Indonesian spend an average of 7 hours 59 minutes on the internet per day with the most time on social media reading messages or stories. Meanwhile, Indonesia ranks 64th out of 72 countries (PISA survey, 2015) and has the lowest literacy increase during 2012-2015. The amount of time to read social media messages is not in accordance with the interest in reading books even though these two activities are similar reading activities. Frasa has a goal to solve the problem of how to increase literacy with technology. Frasa is designed to follow user's reading retention and divert the potential of reading interest to be more useful. We hope that Frasa users can have confidence in high literacy skills, not be more allergic to reading books, and can gain new knowledge and skills based on quality literature.
Planned execution:
-	Machine learning: Exploring dataset (EDA), preprocessing dataset (cleaning, splitting sentences, tokenizing, remove stopwords, case lowering, etc), extracting features from sentences, splitting dataset (train, validation, test), building regression with neural network models with TensorFlow, evaluating result, deploying and serving model at Cloud Run.
-	Android: Implementation of shared preferences that is used to store data temporarily and then sent to the JSON API to be stored in the database. Here we use 2 base urls because they have different storage and usage. Later, the API will send feedback which is sent via notification via Firebase and received by Android using FirebaseMessagingService.
-	Cloud: Starting a cloud environment using compute engine virtual machine instances and SQL, setting up a network for server to the mobile app, creating a security firewall for application, creating a simple service uptime monitoring and logging, debugging the deployment of machine learning in the Cloud Run.
Conclusion:
In this capstone, we have created an app called FRASA to summarize and customize text using linear regression and neural network TensorFlow model. As the backend, Google Cloud Platform services connect the android app to SQL database, Cloud Run services, and Compute Engine. We also use Firebase service to push notification of content reminders.
 
