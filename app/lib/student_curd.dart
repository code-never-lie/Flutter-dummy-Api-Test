import 'package:app/SecondPage.dart';
import 'package:app/add_student.dart';
import 'package:flutter/material.dart';

class Pushbutton extends StatefulWidget {
  const Pushbutton({Key? key}) : super(key: key);

  @override
  State<Pushbutton> createState() => _PushbuttonState();
}

class _PushbuttonState extends State<Pushbutton> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Student data ",
      home: Button(),
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            SizedBox(
                height: 100, //height of button
                width: 200, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(
                            255, 104, 80, 161), //background color of button
                        side: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(
                                255, 134, 129, 127)), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(
                            20) //content padding inside button
                        ),
                    onPressed: () {
                      //code to execute when this button is pressed.
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const addstudents()));
                    },
                    child: const Text("Add Student"))),
            const SizedBox(height: 30),
            SizedBox(
                height: 100, //height of button
                width: 200, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(
                            255, 230, 115, 182), //background color of button
                        side: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(
                                255, 122, 120, 120)), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(
                            20) //content padding inside button
                        ),
                    onPressed: () {
                      //code to execute when this button is pressed.
                    },
                    child: const Text("Delete Student"))),
            const SizedBox(height: 30),
            SizedBox(
                height: 100, //height of button
                width: 200, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(
                            255, 23, 181, 202), //background color of button
                        side: const BorderSide(
                            width: 3,
                            color: Colors.brown), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(
                            20) //content padding inside button
                        ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()),
                      );
                    },
                    child: const Text("Display Student")))
          ],
        ),
      ),
    );
  }
}
