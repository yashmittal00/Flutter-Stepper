import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12.5),
      decoration: const BoxDecoration(
          color: Color(0xFFF9CA36),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0XFFE5E5E5),
              blurRadius: 6.0,
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Text(
        'Verify Appraisal Partner',
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.6,
            ),
      ),
    );
  }
}
