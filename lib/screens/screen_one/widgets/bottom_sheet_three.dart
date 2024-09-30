import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetWidgetThree {
  static void show(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 376,
          height: 544,
          decoration: const BoxDecoration(
            color: Color(0xFF22242B),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Your Support is Awesome',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              const SizedBox(height: 8),
              const Text(
                'We would be very grateful if you can rate us.',
                style: TextStyle(
                  color: Color(0X4DFFFFFF),
                  fontSize: 16,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgImage(imagePath: 'assets/stars/starfilled_one.svg'),
                  SvgImage(imagePath: 'assets/stars/starfilled_two.svg'),
                  SvgImage(imagePath: 'assets/stars/starfilled_three.svg'),
                  SvgImage(imagePath: 'assets/stars/starfilled_four.svg'),
                  SvgImage(imagePath: 'assets/stars/starfilled_five.svg'),
                ],
              ),
              const CustomTextField(),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Maybe later',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0X4DFFFFFF),
                    fontSize: 16,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8143E7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                  minimumSize: const Size(336, 70),
                ),
                child: const Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class SvgImage extends StatelessWidget {
  final String imagePath;

  const SvgImage({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 32),
      child: SvgPicture.asset(
        imagePath,
        width: 64,
        height: 64,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 157,
      decoration: BoxDecoration(
        color: const Color(0x66313440),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const TextField(
        maxLines: 10,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          hintText: 'Enter your review here',
          hintStyle: TextStyle(
            color: Color(0x52FFFFFF),
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: Color(0xFFFFFFFF),
              width: 0.1,
            ),
          ),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
