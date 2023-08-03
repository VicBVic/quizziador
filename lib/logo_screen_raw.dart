import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Quizziador"),
            ElevatedButton(
                onPressed: () {
                  //todo
                },
                child: Text("Start")),
          ],
        ),
      ),
    );
  }
}
