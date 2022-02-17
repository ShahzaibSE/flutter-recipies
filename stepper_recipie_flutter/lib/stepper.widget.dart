import 'package:flutter/material.dart';

class Sequencer extends StatefulWidget {
  const Sequencer({Key? key}) : super(key: key);

  @override
  _SequencerState createState() => _SequencerState();
}

class _SequencerState extends State<Sequencer> {
  int currentStep = 0;
  final int _steps = 3;
  //

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stepper(
          onStepTapped: (int index) {
            setState(() {
              currentStep = index;
            });
          },
          onStepCancel: () {
            if (currentStep > 0) {
              setState(() {
                currentStep -= 1;
              });
            }
          },
          onStepContinue: () {
            if (currentStep != _steps - 1) {
              setState(() {
                currentStep++;
              });
            }
          },
          currentStep: currentStep,
          steps: [
            Step(
              isActive: currentStep >= 1,
              title: Text('Step-1'),
              content: Text('Expand for more details.'),
            ),
            Step(
              isActive: currentStep >= 2,
              title: Text('Step-2'),
              content: Text('Expand for more details.'),
            ),
            Step(
              isActive: currentStep >= 3,
              title: Text('Step-3'),
              content: Text('Expand for more details.'),
            ),
          ],
        ),
      ),
    );
  }
}
