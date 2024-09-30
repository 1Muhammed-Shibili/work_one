import 'package:a_work/screens/screen_one/widgets/getxstar.dart';
import 'package:a_work/screens/screen_one/widgets/list.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF131418),
      ),
      backgroundColor: const Color(0XFF131418),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 167,
                  width: 337,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(21)),
                ),
              ],
            ),
          ),
          ListConatiner(
              onTap: () {},
              imagePath: 'assets/icons/feedback.svg',
              text: 'Sent us your feedback'),
          ListConatiner(
              onTap: () {},
              imagePath: 'assets/icons/share.svg',
              text: 'Share with your friends'),
          ListConatiner(
              onTap: () => BottomSheetWidget.show(context),
              imagePath: 'assets/icons/star.svg',
              text: 'Rate Our app'),
          ListConatiner(
              onTap: () {},
              imagePath: 'assets/icons/terms.svg',
              text: 'Terms of use'),
          ListConatiner(
              onTap: () {},
              imagePath: 'assets/icons/privacy.svg',
              text: 'Privacy Policy'),
        ],
      ),
    );
  }
}
