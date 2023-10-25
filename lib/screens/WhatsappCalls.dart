import 'package:flutter/material.dart';

final x = [
  "Fariza",
  "Fathima",
  "Amina",
  "Adhu",
  "Afnan",
  "Adnan",
  "Suru",
  "Silu",
  "Aman",
  "Athul"
];

class WhatsappCalls extends StatelessWidget {
  const WhatsappCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 13, 173, 125),
                radius: 30,
                child: RotatedBox(
                  quarterTurns: 60,
                  child: IconButton(
                    icon: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),
                ),
              ),
            ),
            title: const Text(
              "Create call link",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: const Text(
                "Recent",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 470,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              itemExtent: 70,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xff764abc),
                      backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      // child: Image.asset(
                      //   y[index],
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  title: Text(x[index]),
                  trailing: Icon(
                    Icons.video_call_sharp,
                    color: Color.fromARGB(255, 13, 173, 125),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
