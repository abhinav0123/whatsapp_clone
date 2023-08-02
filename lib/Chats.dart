import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(children: [
              Text(
                messageData[i].name,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                messageData[i].time,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ],
            ),
            subtitle: Container(padding:EdgeInsets.only(top: 5.0),
            child: Text(messageData[i].message,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
            ),
            ),
            ),
            onTap: (){print('Button Clicked');},
          ),
        ],
      ),
    );
  }
}
