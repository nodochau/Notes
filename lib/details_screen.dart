import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static const kTextStyle = TextStyle(color: Colors.amber);
  final String detailOfFolder;
  final String titleDetail;
  final String contentDetail;
  final int detailCounter;
  const Details({
    Key? key,
    required this.detailOfFolder,
    required this.titleDetail,
    required this.contentDetail,
    required this.detailCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                Text(detailCounter.toString(), style: kTextStyle),
                const Text('. ', style: kTextStyle),
              ],
            ),
            Text(
              titleDetail,
              style: kTextStyle,
            )
          ],
        ),
        Text(contentDetail, style: kTextStyle),
      ],
    );
  }
}
