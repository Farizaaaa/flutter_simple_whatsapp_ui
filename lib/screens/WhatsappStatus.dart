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
final y = [
  "assets/images/Silu.jpg",
  "assets/images/sumi.jpg",
  "assets/images/Ami.jpg",
  "assets/images/adhu.jpg",
  "assets/images/achu.jpg",
  "assets/images/alfi.jpg",
  "assets/images/afni.jpg",
  "assets/images/chndu.jpg",
  "assets/images/deepika.jpg",
  "assets/images/adhu.jpg",
  "assets/images/achu.jpg"
];

class WhatsappStatus extends StatelessWidget {
  const WhatsappStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 3),
                  shape: BoxShape.circle),
              child: const CircleAvatar(
                radius: 30,

                backgroundImage: AssetImage("assets/images/Silu.jpg"),
                // child: Image.asset(
                //   y[index],
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            title: const Text("Status"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: const Text(
                "Recent Updates",
                style: TextStyle(fontSize: 13, color: Colors.grey),
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
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xff764abc),
                      backgroundImage: AssetImage(y[index]),
                      // child: Image.asset(
                      //   y[index],
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  title: Text(x[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
