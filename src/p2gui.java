import net.sf.clipsrules.jni.Environment;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.*;

public class p2gui extends  JFrame {
    private JRadioButton problem2RadioButton;
    private JRadioButton problem3RadioButton;
    private JPanel main;
    private JButton runButton;
    private JTextField textp2;

    p2gui()
    {
        super();
        this.setVisible(true);

        this.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

        this.setResizable(false);

        this.setContentPane(main);

        main.setPreferredSize( new Dimension( 400, 400 ) );
        this.pack();


        runButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent)
            {

                if (problem2RadioButton.isSelected()) {
                    Environment env = new Environment();
                    env.load("p2.clp");
                    env.reset();
                    env.assertString("(input " + textp2.getText() + ")");
                    env.run();
                    File file = new File("C:/Users/COMPU1/Desktop/Assignment 1 Web/output.txt");
                    BufferedReader br = null;
                    try {
                        br = new BufferedReader(new FileReader(file));
                    } catch (FileNotFoundException e) {
                        throw new RuntimeException(e);
                    }
                    TextArea textArea = new TextArea();
                    String line;
                    while (true) {
                        try {
                            if (!(null !=(line=br.readLine()))) break;
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                        textArea.append(line+"     ");
                    }
                    JFrame f;
                    f = new JFrame("textfield");
                    f.add(textArea);
                    f.setSize(800, 200);
                    f.show();
                } else if (problem3RadioButton.isSelected()) {
                    Environment env = new Environment();
                    env.load("p3.clp");
                    env.reset();
                    env.run();
                    File file = new File("C:/Users/COMPU1/Desktop/Assignment 1 Web/output.txt");
                    BufferedReader br = null;
                    try {
                        br = new BufferedReader(new FileReader(file));
                    } catch (FileNotFoundException e) {
                        throw new RuntimeException(e);
                    }
                    TextArea textArea = new TextArea();
                    String line;
                    while (true) {
                        try {
                            if (!(null !=(line=br.readLine()))) break;
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                        textArea.append(line+"     ");
                    }
                    JFrame f;
                    f = new JFrame("textfield");
                    f.add(textArea);
                    f.setSize(800, 200);
                    f.show();
                }
            }
        }
        );

    }



}
