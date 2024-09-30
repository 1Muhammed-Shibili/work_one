import 'package:country_pickers/countries.dart';
import 'package:country_pickers/country.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedCountry = ''.obs;
  var countries = countryList.obs;
  var filteredCountries = <Country>[].obs;
  var searchQuery = ''.obs;

  @override
  void onInit() {
    super.onInit();
    filteredCountries.addAll(countries);

    ever(searchQuery, (query) {
      if (query.isNotEmpty) {
        filteredCountries.value = countries
            .where((country) =>
                country.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredCountries.value = countries;
      }
    });
  }

  void selectCountry(String isoCode) {
    selectedCountry.value = isoCode;
  }
}
