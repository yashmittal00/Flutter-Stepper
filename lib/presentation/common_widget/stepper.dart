import 'package:app_test_1/presentation/icons.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/material.dart';

/// This class used [Steps] to generate step list widget
/// Stepper Widget class is used to generate stepers
class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

int currentStep = 0;

class _StepperWidgetState extends State<StepperWidget> {
  CupertinoStepper _buildStepperWidget(StepperType type) {
    return CupertinoStepper(
      controlsBuilder: (BuildContext context, ControlsDetails controls) {
        return const SizedBox.shrink();
      },
      type: type,
      currentStep: currentStep,
      steps: [
        // generate single steps
        _buildStep(
          title: Text(
            'Step 1',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF919191),
                  height: 1.6,
                ),
          ),
          subtitle: 'Appraisal Partner Verfication',
          isActive: true,
          state: StepState.editing,
          icon: TestIcons.tag,
        ),
        _buildStep(
          subtitle: 'Gold Valuation',
          title: Text(
            'Step 2',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF919191),
                  height: 1.6,
                ),
          ),
          state: StepState.disabled,
          icon: TestIcons.disable,
        ),
        _buildStep(
          subtitle: 'Choose Plan & Get Funds',
          title: Text(
            'Step 3',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF919191),
                  height: 1.6,
                ),
          ),
          state: StepState.disabled,
          icon: TestIcons.disable,
        )
      ],
    );
  }

  Step _buildStep({
    required Widget title,
    StepState state = StepState.indexed,
    bool isActive = false,
    String? subtitle,
    String? icon,
  }) {
    return Step(
      title: title,
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle!,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF454545),
                  height: 1.6,
                ),
          ),
          Image(
            image: AssetImage(icon!),
            width: 80,
          )
        ],
      ),
      state: state,
      content: const SizedBox.shrink(),
      isActive: isActive,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: _buildStepperWidget(StepperType.vertical),
    );
  }
}
