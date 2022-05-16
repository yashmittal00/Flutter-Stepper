import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

/// This class uses [smsAutoFill] to generate otp pin fields
class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  TextEditingController textEditingController =
      TextEditingController(text: "9204");
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OTP Code for verification'.toUpperCase(),
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 12,
                color: const Color(0XFF919191),
                fontWeight: FontWeight.w600,
                height: 1.6,
              ),
        ),
        //TODO(YM): Implement custom pin for custrom styling
        TextFieldPin(
            textController: textEditingController,
            autoFocus: false,
            codeLength: 4,
            alignment: MainAxisAlignment.center,
            defaultBoxSize: 60.0,
            margin: 10,
            selectedBoxSize: 60.0,
            textStyle: const TextStyle(
              fontSize: 60,
              color: Color(0xffFFAA07),
              fontWeight: FontWeight.w700,
            ),
            defaultDecoration: _pinPutDecoration.copyWith(
                border: Border.all(
              color: Colors.transparent,
            )),
            selectedDecoration: _pinPutDecoration,
            onChange: (code) {
              //TODO: Update otp
            }),
      ],
    );
  }
}
