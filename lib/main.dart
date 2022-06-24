import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiffinshala"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  "https://image.shutterstock.com/image-photo/chrispy-chilli-garlic-patato-600w-1067663732.jpg"),
            ),
            const SizedBox(
              height: 150,
              child: Text(
                "\n                                                                                                                                                                              Rs 700      4.5 star(99 reviews)"
                "\nDescription:"
                "\n\nChilli potato is an Indo-Chinese starter made with crisp fried potatoes, tossed in slightly spicy,"
                " sweet & our chilli sauce. It is an Indian and Chinese fusion dish that is more commonly served in the Indian"
                " restaurants and street stalls. Chilli potato is derived from the immensely popular Chilli Chicken & here chicken is substituted with potatoes."
                "Much like any other Indian Chinese Food, this one is prepared with Indian vegetables and spices but prepared following the Chinese high heat wok cooking with the usage of aromatic sauces. Indians love these fusion foods for the saucy taste, delicate crunchy texture and the addictive smoky flavors.",
                maxLines: 10,
                //overflow: TextOverflow.ellipsis,
              ),
            ),
            //child: Alignment.center,
            const Text(
              "Reviews                                                                                                   4.5/5 star(99 reviews)",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18.0),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                      "\nPerson               $index day ago\nStopped off at Corrour Station for a bite to eat."
                      "\nFriendly service and decided to have the Chilli potato. Lovely."
                      "\nThank you guys."),
                ),
              ),
            ),
            const Text(
              "\n\n\n"
              "Relevent Foods",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 231, 114, 120),
                  child: const Center(
                    child: Image(
                      image: NetworkImage(
                          'https://image.shutterstock.com/image-photo/chrispy-chilli-garlic-patato-600w-1067663732.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
