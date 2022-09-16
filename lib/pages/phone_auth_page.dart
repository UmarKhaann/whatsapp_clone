import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:country_picker/country_picker.dart';

class PhoneAuthPage extends StatefulWidget {
  const PhoneAuthPage({super.key});

  @override
  State<PhoneAuthPage> createState() => _PhoneAuthPageState();
}

class _PhoneAuthPageState extends State<PhoneAuthPage> {
  String countryCode = '';
  String selectedCountry = 'Select Country';

  countryPicker() {
    showCountryPicker(
      context: context,
      onSelect: (Country country) {
        setState(() {
          countryCode = country.phoneCode;
          selectedCountry = country.displayNameNoCountryCode;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter your phone number',
          style: TextStyle(color: kWhatsAppColor, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: const [
          Icon(
            Icons.more_vert,
            color: Color.fromARGB(255, 102, 99, 99),
            size: 28,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text:
                                'WhatsApp will need to verify your phone number.'),
                        TextSpan(
                            text: " What's my number?",
                            style: TextStyle(color: Colors.blue))
                      ])),
            ),
            // select country
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kWhatsAppColor))),
              width: size.width * .6,
              child: Row(
                children: [
                  Expanded(child: Container()),
                  TextButton(
                    onPressed: countryPicker,
                    style: const ButtonStyle(),
                    child: Text(
                      selectedCountry,
                      style: const TextStyle(
                          color: Colors.black, fontSize: 15, height: 2),
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: countryPicker,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: kWhatsAppColor,
                      ))
                ],
              ),
            ),
            //enter your number
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: kWhatsAppColor))),
                  width: size.width * .15,
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: '+  ',
                          style: TextStyle(color: Colors.grey[700], height: 3),
                        ),
                        TextSpan(text: countryCode, style: const TextStyle())
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * .05,
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: kWhatsAppColor))),
                  width: size.width * .40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'phone number',
                        focusColor: kWhatsAppColor,
                        contentPadding: const EdgeInsets.only(top: 15),
                        hoverColor: kWhatsAppColor),
                  ),
                ),
              ],
            ),

            Expanded(child: Container()),

            //next button
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kWhatsAppColor)),
              child: const Text(
                'NEXT',
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
