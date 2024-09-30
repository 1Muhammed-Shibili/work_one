import 'package:a_work/controller/ratingcotroller.dart';
import 'package:a_work/screens/screen_one/widgets/bottom_sheet_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomSheetWidget {
  static void show(BuildContext context) {
    final RatingController ratingController = Get.put(RatingController());

    final List<String> filledStarImages = [
      'assets/stars/starfilled_one.svg',
      'assets/stars/starfilled_two.svg',
      'assets/stars/starfilled_three.svg',
      'assets/stars/starfilled_four.svg',
      'assets/stars/starfilled_five.svg',
    ];

    final List<String> unfilledStarImages = [
      'assets/stars/star_one.svg',
      'assets/stars/star_two.svg',
      'assets/stars/star_three.svg',
      'assets/stars/star_four.svg',
      'assets/stars/star_five.svg',
    ];

    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 376,
          height: 600,
          decoration: const BoxDecoration(
            color: Color(0xFF22242B),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
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

              Obx(() {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(5, (index) {
                      return GestureDetector(
                        onTap: () => ratingController.updateRating(index + 1),
                        child: SvgPicture.asset(
                          // Check the current rating value to determine which image to show
                          ratingController.rating.value > index
                              ? filledStarImages[
                                  index] // Show filled star for selected rating and below
                              : unfilledStarImages[
                                  index], // Show unfilled star for remaining stars
                          width: 64,
                          height: 64,
                        ),
                      );
                    }),
                  ),
                );
              }),

              const SizedBox(height: 25),

              // Show the TextField if rating is greater than 0
              Obx(() {
                return ratingController.rating.value > 0
                    ? const CustomTextField() // Show text field if a star is selected
                    : Container(); // Hide text field if no stars selected
              }),

              const SizedBox(height: 25),

              const Text(
                'Maybe later',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0X4DFFFFFF),
                  fontSize: 16,
                ),
              ),
              const Spacer(),

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
