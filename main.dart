import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Sign In';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff59b747),
          centerTitle: true,
          title: const Text(appTitle)
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _textField("Username"),
        _textField("Password"),
        RichText(
          textAlign: TextAlign.right,
          text: const TextSpan(
            children: [
              TextSpan(
                  text: "Fogot "),
              TextSpan(
                  text: "Username / Password",
                  style: TextStyle(color: Color.fromARGB(255, 31, 209, 25)))
            ],
          ),
        ),
        const SizedBox(height: 25),
        ElevatedButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff59b747),
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},
          child: const Text('Sign In'),
        ),
      ],
    );
  }

  Widget _textField(String context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffececec),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          hintText: context,
        ),
      ),
    );
  }
}