# csc_picker_plus 
![version](https://img.shields.io/badge/version-0.0.3-blue.svg)  ![version](https://img.shields.io/badge/NullSefety-True-brightgreen) ![version](https://img.shields.io/badge/WASM-True-red) 

A Flutter package for displaying a list of countries, states, and cities in Arabic, English, or the native language based on selection. It also allows users to search for countries, states, and cities worldwide.


<table>
  <tr>
    <td align="center">
      <br><br><br>
      <img src="https://github.com/hezbr/csc_picker_plus/blob/main/screenshots/horizontal%20view.gif?raw=true"  alt="Horizontal Layout" width="240" />
      <br><b>Horizontal Layout</b>
    </td>
    <td align="center">
      <br><br><br>
      <img src="https://github.com/hezbr/csc_picker_plus/blob/main/screenshots/arabic%20view.gif?raw=true"  alt="Show in Arabic Language" width="240" />
      <br><b>Show in Arabic Language</b>
    </td>
    <td align="center">
      <br><br><br>
      <img src="https://github.com/hezbr/csc_picker_plus/blob/main/screenshots/vertical%20view.gif?raw=true"  alt="Vertical Layout" width="240" />
      <br><b>Vertical Layout</b>
    </td>
  </tr>
  <tr>
    <td align="center">
      <br><br><br>
      <img src="https://github.com/hezbr/csc_picker_plus/blob/main/screenshots/Country%20State%20Only%20View.gif?raw=true"  alt="Country  and State Only" width="240" />
      <br><b>Country  and State Only</b>
    </td>
    <td align="center">
      <br><br><br>
      <img src="https://github.com/hezbr/csc_picker_plus/blob/main/screenshots/Country%20Only%20View.gif?raw=true"  alt="Country Only" width="240" />
      <br><b>Country Only</b>
    </td>
  </tr>
</table>

<br>

## **New Features**

- **First package to support multilingual database:** The library provides a database for countries, states, and cities with support for multiple languages, including Arabic.

<img src="https://github.com/hezbr/csc_picker_plus/blob/main/screenshots/arabic%20view.gif?raw=true"  alt="Show in Arabic Language" width="240" />

<b>Show in Arabic Language</b><br><br>

- **Display countries and states in two languages:** You can display countries and states in Arabic or English (or the native language if English is not available).
- **Display cities in the native language:** The library allows displaying cities in the country's native language.
- **Search in two languages:** You can search for countries and states either in Arabic or English, enhancing user experience.
- **Flexible location selection:** The library allows developers to configure the selection process based on their needs, enabling users to choose only the country, or the country and state, or the country, state, and city.
- **Customizable display options:** You can customize the design and appearance of the dropdowns to fit your app’s requirements.
<br>
<br>

## **How to Use**

To use this Package, add `csc_picker_plus` as a [dependency in your pubspec.yaml](https://flutter.io/platform-plugins/).

```dart
CSCPickerPlus(
  countryStateLanguage: CountryStateLanguage.arabic,
  // countryStateLanguage: CountryStateLanguage.englishOrNative,
  onCountryChanged: (value) {
    setState(() {
      countryValue = value;
    });
  },
  onStateChanged: (value) {
    setState(() {
      stateValue = value ?? '';
    });
  },
  onCityChanged: (value) {
    setState(() {
      cityValue = value ?? '';
    });
  },
),
```
you will get feedback in onChanged functions.
<br>
<br>


### **Parameters**
<table>
  <thead>
    <tr>
      <th><b>Parameters</b></th>
      <th><b>Type</b></th>
      <th><b>Description</b></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>countryStateLanguage</b></td>
      <td>CountryStateLanguage</td>
      <td>This property controls the language of the country and state list. You can choose between Arabic or English (English or the country's native language if English is not available).</td>
    </tr>
    <tr>
      <td><b>cityLanguage</b></td>
      <td>CityLanguage</td>
      <td>This property controls the language of the city list.</td>
    </tr>
    <tr>
      <td><b>flagState</b></td>
      <td>CountryFlag</td>
      <td>Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only).</td>
    </tr>
    <tr>
      <td><b>layout</b></td>
      <td>Layout</td>
      <td>Toggle dropdown layout (Horizontal / Vertical).</td>
    </tr>
    <tr>
      <td><b>showStates</b></td>
      <td>Boolean</td>
      <td>Enable/disable States dropdown (true / false).</td>
    </tr>
    <tr>
      <td><b>showCities</b></td>
      <td>Boolean</td>
      <td>Enable/disable Cities dropdown (true / false).</td>
    </tr>
    <tr>
      <td><b>dropdownDecoration</b></td>
      <td>BoxDecoration</td>
      <td>Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration).</td>
    </tr>
    <tr>
      <td><b>disabledDropdownDecoration</b></td>
      <td>BoxDecoration</td>
      <td>Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabled dropdownDecoration).</td>
    </tr>
    <tr>
      <td><b>selectedItemStyle</b></td>
      <td>TextStyle</td>
      <td>To change selected item style.</td>
    </tr>
    <tr>
      <td><b>dropdownHeadingStyle</b></td>
      <td>TextStyle</td>
      <td>To change DropdownDialog Heading style.</td>
    </tr>
    <tr>
      <td><b>dropdownItemStyle</b></td>
      <td>TextStyle</td>
      <td>To change DropdownDialog Item style.</td>
    </tr>
    <tr>
      <td><b>dropdownDialogRadius</b></td>
      <td>double</td>
      <td>To change DropdownDialogBox radius.</td>
    </tr>
    <tr>
      <td><b>searchBarRadius</b></td>
      <td>double</td>
      <td>To change search bar radius.</td>
    </tr>
    <tr>
      <td><b>defaultCountry</b></td>
      <td>CscCountry</td>
      <td>To select default country.</td>
    </tr>
    <tr>
      <td><b>disableCountry</b></td>
      <td>Boolean</td>
      <td>Disable country dropdown (Note: use it with default country).</td>
    </tr>
    <tr>
      <td><b>countryFilter</b></td>
      <td>List of CscCountry</td>
      <td>Show only countries in dropdown that you want.</td>
    </tr>
    <tr>
      <td><b>countrySearchPlaceholder</b></td>
      <td>String</td>
      <td>Placeholder for country search field.</td>
    </tr>
    <tr>
      <td><b>stateSearchPlaceholder</b></td>
      <td>String</td>
      <td>Placeholder for state search field.</td>
    </tr>
    <tr>
      <td><b>citySearchPlaceholder</b></td>
      <td>String</td>
      <td>Placeholder for city search field.</td>
    </tr>
    <tr>
      <td><b>countryDropdownLabel</b></td>
      <td>String</td>
      <td>Label/Title for country dropdown.</td>
    </tr>
    <tr>
      <td><b>stateDropdownLabel</b></td>
      <td>String</td>
      <td>Label/Title for state dropdown.</td>
    </tr>
    <tr>
      <td><b>cityDropdownLabel</b></td>
      <td>String</td>
      <td>Label/Title for city dropdown.</td>
    </tr>
  </tbody>
</table>
<br>

### **Example**

```dart
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
```
<br>
<br>

## **Contact**

For any inquiries or questions, please feel free to contact me:

**Email:** [eng.hezbr@gmail.com](mailto:eng.hezbr@gmail.com)

**GitHub:** [Hezbr Al-humaidi](https://github.com/hezbr)

**LinkedIn:** [Hezbr Al-humaidi](https://www.linkedin.com/in/hezbr)

<br>

### **Special Thanks to**
- Altaf Razzaque, csc_picker [csc_picker](https://github.com/altafc22/csc_picker)
