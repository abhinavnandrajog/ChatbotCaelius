# ChatbotCaelius
This is ChatBot Application for Caelius Consulting java module made using Java SwingFramework, OOPS Concepts, MySQL Database.
# ChatBot Application

This is a simple chatbot application developed in Java using Swing for the graphical user interface and MySQL for the database. The chatbot can answer questions based on the pre-defined questions and answers stored in the MySQL database.

## Features

- User can input questions and receive answers from the chatbot.
- The application fetches the answers from the MySQL database based on the user's input.
- Typing effect animation is added to simulate a conversation between the user and the chatbot.
- User can clear the chat area.

## Getting Started

To run the chatbot application locally, follow these steps:

1. Set up a MySQL database:
   - Create a database named `chatbotdb`.
   - Create a table named `database_caelius` with the following columns:
     - `question` (VARCHAR) - The question.
     - `answer` (VARCHAR) - The corresponding answer to the question.

2. Update the database connection details:
   - Open the `ChatBotApplication` class.
   - Modify the connection URL, username, and password in the `ChatBotApplication` constructor based on your MySQL configuration.

3. Compile and run the application:
   - Compile the `ChatBotApplication.java` file using a Java compiler.
   - Run the compiled file to start the chatbot application.

## Dependencies

- Java Development Kit (JDK) version 20.0.1 .
- MySQL Connector/J library.

## Screenshots
![image](https://github.com/abhinavnandrajog/ChatbotCaelius/assets/64684446/327f5b20-7897-468f-801f-359bf8673d1d)


