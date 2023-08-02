import 'package:flutter/material.dart';
import 'package:whatsapp/Wcards.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcards(
          imageurl:
              'https://media.licdn.com/dms/image/C4D03AQFdGsLL1j4LZQ/profile-displayphoto-shrink_800_800/0/1654685439369?e=2147483647&v=beta&t=FUcG0DgRkqz9Y8NUEoIaJZ35n82eWI23JhWoRKRLOeo',
          name: 'My Status',
          time: 'Tap to add status',
        ),
        Divider(),
        Heading("Recent updates"),
        Wcards(
            name: messageData[1].name,
            imageurl: messageData[1].imageUrl,
            time: messageData[1].time),
        Wcards(
            name: messageData[2].name,
            imageurl: messageData[2].imageUrl,
            time: messageData[2].time),
        Wcards(
            name: messageData[3].name,
            imageurl: messageData[3].imageUrl,
            time: messageData[3].time),
        Wcards(
            name: messageData[4].name,
            imageurl: messageData[4].imageUrl,
            time: messageData[4].time),
        Wcards(
            name: messageData[5].name,
            imageurl: messageData[5].imageUrl,
            time: messageData[5].time),
        Wcards(
            name: messageData[6].name,
            imageurl: messageData[6].imageUrl,
            time: messageData[6].time),
        Wcards(
            name: messageData[7].name,
            imageurl: messageData[7].imageUrl,
            time: messageData[7].time),
        // Wcards(name: messageData[8].name, imageurl: messageData[8].imageUrl, time: messageData[8].time),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  // const Heading({super.key});
  final String heading;

  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 5.0, top: 5.0),
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )));
  }
}
