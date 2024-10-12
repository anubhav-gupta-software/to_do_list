import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}


class _ToDoAppState extends State<ToDoApp> {

//TextEditingController - get aceess to what the user typed
TextEditingController myController = TextEditingController();

    String greetingMessage = "";

    void greetUser(){
      String userName = myController.text;
      setState(() {
        greetingMessage = "Hello Bro, $userName";
      });
      


    }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greet user message
              Text(greetingMessage),
              TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: ("type your name here")
              ),
            ),
            ElevatedButton(
              onPressed: greetUser,
              child: const Text("Tap to Greet"))
            ]
             
          ),
        ),
      )
    );
  }
}