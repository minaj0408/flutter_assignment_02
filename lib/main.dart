import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold, // Bold text
                  fontSize: 24,
                ),
              ),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                height: 100,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Button Pressed!'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(

                ),
                child: Text('Press Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
