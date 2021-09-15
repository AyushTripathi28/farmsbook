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
        backgroundColor: Colors.transparent,
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
      ),
      backgroundColor: const Color(0xffE8E7E8),
      body: Container(
        child: SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // print(newData[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChatOption(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
