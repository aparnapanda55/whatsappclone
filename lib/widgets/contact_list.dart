import 'package:flutter/material.dart';
import 'package:whatsappclone/info/contact.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    title: Text(
                      info[index]['name'].toString(),
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(info[index]['message'].toString()),
                    trailing: Text(info[index]['time'].toString()),
                  ),
                ),
                MediaQuery.of(context).size.width > 900
                    ? Divider(
                        indent: 85,
                        thickness: 1,
                      )
                    : SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
