import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizziador/question_data.dart';

class QuestionWidget extends StatelessWidget {
  final QuestionData data;
  final void Function(bool) callback;
  const QuestionWidget({super.key, required this.data, required this.callback});

  final options_colors = const [
    MaterialStatePropertyAll(Colors.red),
    MaterialStatePropertyAll(Colors.green),
    MaterialStatePropertyAll(Colors.blue),
    MaterialStatePropertyAll(Colors.yellow)
  ];

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return Column(
      children: [
        Expanded(
            child: Center(
                child: Text(
          data.text,
          style: Theme.of(context).textTheme.headlineMedium,
        ))),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              data.options.length,
              (index) => Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      bool isCorrect = index == data.correctOption;
                      player.stop();
                      if (isCorrect) {
                        player.play(
                            DeviceFileSource(r'assets\sound-9______.mp3'));
                      } else {
                        player.play(
                            DeviceFileSource(r'assets\sadtrombone.swf.mp3'));
                      }

                      callback(isCorrect);
                    },
                    child: Text(
                      data.options[index],
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    style: ButtonStyle(backgroundColor: options_colors[index])),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
