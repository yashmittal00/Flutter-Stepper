import 'package:app_test_1/presentation/icons.dart';
import 'package:flutter/material.dart';

class AppraisalCard extends StatefulWidget {
  const AppraisalCard({Key? key}) : super(key: key);

  @override
  State<AppraisalCard> createState() => _AppraisalCardState();
}

class _AppraisalCardState extends State<AppraisalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Image(
          image: AssetImage(TestIcons.home),
          height: 40,
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'APPRAISAL PARTNER',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 10,
                    color: Colors.black.withOpacity(0.7),
                    height: 1.6,
                  ),
            ),
            Text(
              'Datchina Moorthi S',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.6,
                  ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 30,
          color: const Color(0XFFFFC351),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VISIT ID',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 10,
                    color: Colors.black.withOpacity(0.7),
                    height: 1.6,
                  ),
            ),
            Text(
              'OMV00023',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.6,
                  ),
            ),
          ],
        ),
      ]),
    );
  }
}
