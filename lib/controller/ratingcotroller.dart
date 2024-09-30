import 'package:get/get.dart';

class RatingController extends GetxController {
  var rating = 0.obs; // Holds the current rating value (0 by default)

  void updateRating(int newRating) {
    rating.value = newRating; // Update the rating when a star is tapped
  }
}
