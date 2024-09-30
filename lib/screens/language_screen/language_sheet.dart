import 'package:a_work/screens/language_screen/controller.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageBotSheet {
  static void showLanguageSelectionSheet(BuildContext context) {
    final LanguageController controller = Get.put(LanguageController());

    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 376,
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: const BoxDecoration(
            color: Color(0xFF22242B),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(() {
                      String titleText =
                          controller.selectedCountry.value.isNotEmpty
                              ? 'Translate to?'
                              : 'Language';

                      return Text(
                        titleText,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      );
                    }),
                    const SizedBox(height: 20),
                    Container(
                      width: 336,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0X0DFFFFFF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          controller.searchQuery.value = value;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.search,
                              color: Color(0x33FFFFFF),
                              size: 30,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 6),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Obx(() {
                        return ListView.builder(
                          itemCount: controller.filteredCountries.length,
                          itemBuilder: (context, index) {
                            final country = controller.filteredCountries[index];
                            return GestureDetector(
                              onTap: () {
                                controller.selectCountry(country.isoCode);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(0XFF22242B),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      CountryPickerUtils.getDefaultFlagImage(
                                          country),
                                      const SizedBox(width: 10),
                                      Text(country.name,
                                          maxLines: 1,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      const Spacer(),
                                      if (controller.selectedCountry.value ==
                                          country.isoCode)
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color: Color(0X1A24FFAB),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.check_rounded,
                                            color: Color(0XFF24FFAB),
                                            size: 20,
                                          ),
                                        )
                                      else
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0X0DFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      minimumSize: const Size(128, 50),
                    ),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
