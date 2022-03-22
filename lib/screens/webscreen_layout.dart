import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/contact_list.dart';
import 'package:whatsappclone/widgets/web_profilebar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xffE4DCD4),
            width: MediaQuery.of(context).size.width * 0.70,
            // child: Image.asset(
            //   'assets/images/whasapp.jpeg',
            //   fit: BoxFit.contain,
            // ),
          )
          //web screens
        ],
      ),
    );
  }
}
