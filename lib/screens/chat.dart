import 'package:farmsbook/utils/chatoption.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 40,
              color: Color(0xff749E47),
            )),
        title: const Text(
          "Chat",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 40,
                  color: Color(0xff749E47),
                )),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(10, 10),
          child: Divider(
            thickness: 1,
            color: Colors.grey.withOpacity(0.4),
            indent: 20,
            endIndent: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: const ChatOption(
                  title: "Vindhya Farmer Group",
                  subtitle: "Did you get my order",
                  time: "12:30",
                  isMessage: true,
                  noM: "5"),
            );
          },
        ),
      ),
    );
  }
}
