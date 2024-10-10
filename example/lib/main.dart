import 'package:csc_picker_plus/csc_picker_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSC Picker Plus Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'CSC Picker Plus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Variables to store country state city data in onChanged method.
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 600,
          child: Column(
            children: [
              /// Adding CSC Picker Plus Widget in app
              CSCPickerPlus(
                /// Enable disable state dropdown [OPTIONAL PARAMETER]
                showStates: true,

                /// Enable disable city drop down [OPTIONAL PARAMETER]
                showCities: true,

                /// Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                flagState: CountryFlag.ENABLE,

                /// Control the language of the country and state list [OPTIONAL PARAMETER]
                countryStateLanguage: CountryStateLanguage.englishOrNative,

                /// Control the language of the country and state list [OPTIONAL PARAMETER]
                cityLanguage: CityLanguage.native,

                /// Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                dropdownDecoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                ),

                /// Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                disabledDropdownDecoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                ),

                /// placeholders for dropdown search field [OPTIONAL PARAMETERS]
                // countrySearchPlaceholder: "Country",
                // stateSearchPlaceholder: "State",
                // citySearchPlaceholder: "City",

                /// labels for dropdown [OPTIONAL PARAMETERS]
                countryDropdownLabel: "Country",
                stateDropdownLabel: "State",
                cityDropdownLabel: "City",

                /// Default Country [OPTIONAL PARAMETER]
                // defaultCountry: CscCountry.Yemen,

                /// Country Filter [OPTIONAL PARAMETER]
                // countryFilter: const [
                //   CscCountry.Yemen,
                //   CscCountry.Saudi_Arabia,
                //   CscCountry.United_States,
                // ],

                /// Disable country dropdown (Note: use it with default country)
                // disableCountry: true,

                /// selected item style [OPTIONAL PARAMETER]
                selectedItemStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                /// DropdownDialog Heading style [OPTIONAL PARAMETER]
                dropdownHeadingStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),

                /// DropdownDialog Item style [OPTIONAL PARAMETER]
                dropdownItemStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                /// Dialog box radius [OPTIONAL PARAMETER]
                dropdownDialogRadius: 10.0,

                /// Search bar radius [OPTIONAL PARAMETER]
                searchBarRadius: 10.0,

                /// triggers once country selected in dropdown
                onCountryChanged: (value) {
                  setState(() {
                    /// store value in country variable
                    countryValue = value;
                  });
                },

                /// triggers once state selected in dropdown
                onStateChanged: (value) {
                  if (value != null) {
                    setState(() {
                      ///store value in state variable
                      stateValue = value;
                    });
                  }
                },

                /// triggers once city selected in dropdown
                onCityChanged: (value) {
                  if (value != null) {
                    setState(() {
                      ///store value in city variable
                      cityValue = value;
                    });
                  }
                },
              ),

              /// print newly selected country state and city in Text Widget
              TextButton(
                onPressed: () {
                  setState(() {
                    address = "$cityValue, $stateValue, $countryValue";
                  });
                },
                child: const Text("Print Data"),
              ),
              Text(address),
            ],
          ),
        ),
      ),
    );
  }
}
