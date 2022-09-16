import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({super.key});

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
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Whatsapp will need to verify your phone number.',
                textAlign: TextAlign.center,
              ),
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
                    onPressed: () {},
                    style: const ButtonStyle(),
                    child: const Text(
                      'Pakistan',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15, height: 2),
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
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
                  width: size.width * .18,
                  child: const Text(
                    '+   92',
                    style: TextStyle(fontSize: 18, height: 3),
                  ),
                ),
                SizedBox(
                  width: size.width * .05,
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: kWhatsAppColor))),
                  width: size.width * .37,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'phone number',
                        focusColor: kWhatsAppColor,
                        hoverColor: kWhatsAppColor),
                  ),
                ),
              ],
            ),

            Expanded(child: Container()),
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
