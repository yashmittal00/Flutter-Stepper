import 'package:app_test_1/presentation/icons.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(TestIcons.profile),
            height: 160,
            width: 160,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 4),
            child: Text(
              'Datchina Moorthi S	',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF454545),
                    height: 1.6,
                  ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 280),
            alignment: Alignment.center,
            child: Text(
              'Please share the 4 digit OTP to Oro Appraisal Partner to complete identity check.',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF919191),
                    height: 1.6,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ]);
  }
}
