import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class ChatBotApplication extends JFrame {

    private JTextField userInputField;
    private JTextArea chatArea;
    private Connection connection;

    public ChatBotApplication() {
        // Set up the GUI
        setTitle("CHATBOT CAELIUS");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());
        setResizable(false);
        getContentPane().setBackground(new Color(240, 240, 240));

        JPanel headingPanel = new JPanel();
        headingPanel.setBackground(new Color(45, 52, 54));

        JLabel headingLabel = new JLabel("CHATBOT CAELIUS");
        headingLabel.setForeground(new Color(236, 240, 241));
        headingLabel.setFont(new Font("Arial", Font.BOLD, 20));
        headingPanel.add(headingLabel);

        JPanel chatPanel = new JPanel(new BorderLayout());
        chatPanel.setBackground(new Color(240, 240, 240));
        chatPanel.setBorder(new EmptyBorder(10, 10, 10, 10));

        chatArea = new JTextArea();
        chatArea.setEditable(false);
        chatArea.setLineWrap(true);
        chatArea.setWrapStyleWord(true);
        chatArea.setBackground(new Color(255, 255, 255));

        JScrollPane scrollPane = new JScrollPane(chatArea);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        scrollPane.setBorder(BorderFactory.createEmptyBorder());

        chatPanel.add(scrollPane, BorderLayout.CENTER);

        JPanel inputPanel = new JPanel(new BorderLayout());
        inputPanel.setBackground(new Color(240, 240, 240));
        inputPanel.setBorder(new EmptyBorder(10, 10, 10, 10));

        userInputField = new JTextField();
        userInputField.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                processUserInput();
            }
        });

        JButton sendButton = new JButton("Send");
        sendButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                processUserInput();
            }
        });

        JButton clearButton = new JButton("Clear");
        clearButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                chatArea.setText("");
            }
        });

        inputPanel.add(userInputField, BorderLayout.CENTER);
        inputPanel.add(sendButton, BorderLayout.EAST);
        inputPanel.add(clearButton, BorderLayout.WEST);

        add(headingPanel, BorderLayout.NORTH);
        add(chatPanel, BorderLayout.CENTER);
        add(inputPanel, BorderLayout.SOUTH);

        // Connect to the MySQL database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatbotdb", "root", "Gora@2002");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void processUserInput() {
        String userQuestion = userInputField.getText();
        chatArea.append("You: "+ userQuestion + "\n");

        // Fetch the answer from the database
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT answer FROM database_caelius WHERE question = '" + userQuestion + "'");
            if (resultSet.next()) {
                String answer = resultSet.getString("answer");
                chatArea.append("Chat Bot:  ");
                typeWriterEffect(answer + "\n"); // Add typing effect
            } else {
                String sorry = "Sorry, I don't have an answer for that question.";
                chatArea.append("Chat Bot: ");
                typeWriterEffect(sorry + "\n");
            }
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        userInputField.setText("");
    }

    private void typeWriterEffect(String text) {
        Timer timer = new Timer(50, new ActionListener() {
            int index = 0;
            public void actionPerformed(ActionEvent e) {
                chatArea.append(String.valueOf(text.charAt(index)));
                index++;
                if (index == text.length()) {
                    ((Timer)e.getSource()).stop();
                }
            }
        });
        timer.start();
    }

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            e.printStackTrace();
        }

        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                ChatBotApplication chatBot = new ChatBotApplication();
                chatBot.setSize(500, 400);
                chatBot.setVisible(true);
            }
        });
    }
}
