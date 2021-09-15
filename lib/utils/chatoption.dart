// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatOption extends StatelessWidget {
  const ChatOption(
      {Key? key,
      this.title,
      this.subtitle,
      this.time,
      this.isMessage,
      this.noM})
      : super(key: key);
  final String? title;
  final String? subtitle;
  final String? time;
  final bool? isMessage;
  final String? noM;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
      child: ListTile(
        contentPadding: EdgeInsets.only(
          right: 20,
        ),
        tileColor: Color(0XFFE5E4E4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(300)),
        ),
        leading: Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    'https://mc.webpcache.epapr.in/discover.php?in=https://mcmscache.epapr.in/post_images/website_350/post_21946998/full.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        title: Text(title!),
        subtitle: Text(subtitle!),
        trailing: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(time!),
              isMessage!
                  ? CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xff749E47),
                      foregroundColor: Colors.white,
                      child: Text(noM!),
                    )
                  : CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.transparent,
                      child: Text(""),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
