import 'package:flutter/material.dart';

class ChatOption extends StatelessWidget {
  const ChatOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Align(
        child: ListTile(
          tileColor: Colors.grey,
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
          title: Text("Vindhya Farmer Group"),
          subtitle: Text("Did you get my order"),
          trailing: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("12:30"),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff749E47),
                  foregroundColor: Colors.white,
                  child: Text("5"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
