import 'package:app_test_1/presentation/common_widget/profile_card.dart';
import 'package:app_test_1/presentation/common_widget/verify_otp.dart';
import 'package:app_test_1/presentation/icons.dart';
import 'package:flutter/material.dart';

/// This class generate bottom sheet to verify otp by using [otp] as length
class VerifyBottomSheet extends StatelessWidget {
  const VerifyBottomSheet({Key? key}) : super(key: key);

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 3,
            width: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Color(0xffCECECE),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            const Image(
              image: AssetImage(TestIcons.process),
              height: 32,
              width: 32,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STEP 1 of 3',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 12,
                        color: const Color(0xff919191),
                        fontWeight: FontWeight.w600,
                        height: 1.6,
                      ),
                ),
                Text(
                  'Appraisal Partner Verification',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF454545),
                        height: 1.6,
                      ),
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: LinearProgressIndicator(
            color: Color(0XFFFFAA07),
            value: 0.4,
            backgroundColor: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            'Confirm OTP Verification',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  height: 1.6,
                ),
          ),
        ),
        Text(
          'Oro Appraisal Parnter'.toUpperCase(),
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 12,
                color: const Color(0XFF909090),
                fontWeight: FontWeight.w600,
                height: 1.6,
              ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: ProfileCard(),
        ),
        // create otp fields
        const VerifyOtp()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: _buildContent(context),
          ),
        ),
      ),
    );
  }
}
