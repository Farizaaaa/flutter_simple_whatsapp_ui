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
final r = [
  "Hai",
  "hloopp",
  "Whtsupp dea",
  "I wanna talk!",
  "heyy....",
  "dear",
  "what???",
  "are you okay?,now!",
  "heyy,dear",
  "haiiii"
];
final y = [
  "assets/images/Silu.jpg",
  "assets/images/avatar.jpg",
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
final z = [
  "12:30 AM",
  "11:20 PM",
  "Yesterday",
  "Yesterday",
  "9/10/23",
  "2/10/23",
  "2/10/23",
  "2/10/23",
  "2/10/23",
  "2/10/23"
];

class WhatsappChat extends StatelessWidget {
  const WhatsappChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 10,
          itemExtent: 70,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,

                backgroundImage: AssetImage(y[index]),
                // child: Image.asset(
                //   y[index],
                //   fit: BoxFit.cover,
                // ),
              ),
              title: Text(x[index]),
              //also Text($index) prints the current indexes of the list tiles
              //Text(info[index]["name"].toString())
              subtitle: Text(r[index]),
              trailing: Text(
                z[index],
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            );
          },
        ),
      ),
    );
  }
}
