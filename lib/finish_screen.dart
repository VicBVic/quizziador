import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Congratulations!\n Your final score is: ${arg ?? 0}.",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset('assets/podium.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
