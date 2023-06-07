CREATE DATABASE chatbotdb;

USE chatbotdb;

CREATE TABLE database_caelius(
  -- id INT PRIMARY KEY AUTO_INCREMENT,
  -- question VARCHAR(500),
  -- answer VARCHAR(500)
 );

 desc database_caelius;

 INSERT INTO database_caelius (question, answer) VALUES ('What type of questions you can answer?','You can aske me general questions and questions related to java and mulesoft.');
INSERT INTO database_caelius (question, answer) VALUES ('What is todays weather?','As Bot is available in Chandigarh,so here weather is quite sunny');
INSERT INTO database_caelius (question, answer) VALUES ('Who is the director of Caelius Consulting?','Caelius Consulting IT Services Private Limited has two directors - Mankesh Dadhwal and Munish Singh Dadwal.');
INSERT INTO database_caelius (question, answer) VALUES
('What is the capital of India?', 'The capital of India is New Delhi.'),
('Who is the current Prime Minister of India?', 'The current Prime Minister of India is Narendra Modi.'),
('What is the official language of India?', 'The official language of India is Hindi.'),
('Which river is considered sacred in Hinduism and flows through India?', 'The Ganges (Ganga) river is considered sacred in Hinduism and flows through India.'),
('Who is known as the "Father of the Nation" in India?', 'Mahatma Gandhi is known as the "Father of the Nation" in India.'),
('Which monument in India is one of the Seven Wonders of the World?', 'The Taj Mahal is one of the Seven Wonders of the World and is located in India.'),
('Which sport is considered the national game of India?', 'Field Hockey is considered the national game of India.'),
('What is the national animal of India?', 'The national animal of India is the Bengal Tiger.'),
('Which festival is widely celebrated in India and marks the victory of light over darkness?', 'Diwali, also known as the Festival of Lights, is widely celebrated in India.'),
('Who composed the Indian national anthem?', 'The Indian national anthem, "Jana Gana Mana," was composed by Rabindranath Tagore.'),
('What is the capital of France?', 'Paris'),
('Who is the author of "Pride and Prejudice"?', 'Jane Austen'),
('What is the chemical symbol for gold?', 'Au'),
('Who painted the Mona Lisa?', 'Leonardo da Vinci'),
('What is the largest planet in our solar system?', 'Jupiter'),
('In which year did World War II end?', '1945'),
('What is the square root of 64?', '8'),
('Who invented the telephone?', 'Alexander Graham Bell'),
('What is the national bird of the United States?', 'Bald Eagle'),
('What is the formula for calculating the area of a circle?', 'π * r^2'),('What is MuleSoft?', 'MuleSoft is an integration platform that enables the connection and communication between different systems and applications.'),
('What are the key components of MuleSoft?', 'The key components of MuleSoft are Mule Runtime, Anypoint Studio, Anypoint Exchange, Anypoint Platform, and Anypoint Connectors.'),
('What is Anypoint Platform?', 'Anypoint Platform is a unified platform provided by MuleSoft for designing, building, and managing APIs and integrations.'),
('What is an API?', 'An API (Application Programming Interface) is a set of rules and protocols that allows different software applications to communicate and interact with each other.'),
('What is Anypoint Studio?', 'Anypoint Studio is an Eclipse-based graphical development environment provided by MuleSoft for designing, building, and testing Mule applications.'),
('What is an integration flow in MuleSoft?', 'An integration flow in MuleSoft represents the sequence of operations and transformations that take place to process data between different systems or applications.'),
('What are connectors in MuleSoft?', 'Connectors in MuleSoft are pre-built reusable components that provide connectivity and enable interaction with various systems, services, and protocols.'),
('What is Anypoint Exchange?', 'Anypoint Exchange is a library and marketplace provided by MuleSoft that offers a wide range of pre-built connectors, templates, examples, and APIs for reuse and collaboration.'),
('What is DataWeave in MuleSoft?', 'DataWeave is a powerful transformation language provided by MuleSoft for data mapping and transformation within Mule flows.'),
('What is Java?', 'Java is a popular programming language that is widely used for developing a variety of applications and software.'),
('What is the difference between JDK and JRE?', 'JDK (Java Development Kit) is a software development environment that includes the necessary tools and libraries for developing Java applications. JRE (Java Runtime Environment) is a runtime environment that is required to run Java applications.'),
('What is the main difference between Java and JavaScript?', 'Java is a statically-typed programming language primarily used for server-side development, while JavaScript is a dynamically-typed scripting language primarily used for client-side web development.'),
('What is an object in Java?', 'An object in Java is an instance of a class that encapsulates data and behavior.'),
('What is the difference between the heap and the stack?', 'The heap is a region of memory used for dynamic memory allocation, while the stack is a region of memory used for storing local variables and method calls.'),
('What are the access modifiers in Java?', 'The access modifiers in Java are public, protected, default (no modifier), and private. They control the visibility and accessibility of classes, methods, and variables.'),
('What is method overriding in Java?', 'Method overriding in Java allows a subclass to provide a different implementation of a method that is already defined in its superclass.'),
('What is the difference between method overloading and method overriding?', 'Method overloading allows multiple methods with the same name but different parameters in the same class, while method overriding involves providing a different implementation of a method in a subclass.'),
('What are the different types of loops in Java?', 'The different types of loops in Java are the for loop, while loop, and do-while loop.'),
('What is a constructor in Java?', 'A constructor in Java is a special method that is used to initialize objects. It has the same name as the class and is called when an object of the class is created.'),
('What is the difference between checked and unchecked exceptions?', 'Checked exceptions are checked at compile-time and must be declared in the method signature or handled using try-catch blocks, while unchecked exceptions do not require explicit handling or declaration.'),
('What is the difference between String, StringBuilder, and StringBuffer?', 'String is an immutable class, while StringBuilder and StringBuffer are mutable classes used for manipulating string values. StringBuffer is thread-safe, whereas StringBuilder is not.'),
('What is the Java Virtual Machine (JVM)?', 'The Java Virtual Machine (JVM) is a virtual machine that allows Java bytecode to be executed on different operating systems without recompiling the code.'),
('What is the difference between an abstract class and an interface?', 'An abstract class can have both concrete and abstract methods, while an interface can only have abstract methods. A class can implement multiple interfaces, but it can inherit from only one abstract class.'),
('What is the Java Collections Framework?', 'The Java Collections Framework is a set of classes and interfaces provided by Java to store, manage, and manipulate collections of objects.'),
('What is the difference between ArrayList and LinkedList?', 'ArrayList is implemented as a resizable array, while LinkedList is implemented as a doubly linked list. ArrayList provides fast random access, while LinkedList provides fast insertion and deletion.'),
('What is the difference between an ArrayList and a Vector?', 'ArrayList is not synchronized and is not thread-safe, while Vector is synchronized and is thread-safe.');
Insert into database_caelius(question,answer) values ('Hello','Hello, how i can assist you today?');
insert into database_caelius(question,answer) values ('What is your name?','My name is ChatBot Caelius');

