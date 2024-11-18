import 'package:flutter/material.dart';
import 'package:japan_language/componets/categoty_Item.dart';
import 'package:japan_language/screens/family_number_page.dart';
import 'package:japan_language/screens/number_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Touk',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (Context) {
                return const NumbersPage();
              }));
            },
            text: 'Number',
            color: const Color(0xffef9235),
          ),
          category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const familyNumber();
              }));
            },
            text: 'Family Membres',
            color: (const Color.fromARGB(255, 45, 157, 20)),
          ),
          category(
            onTap: () {
              print('numbers tapped');
            },
            text: 'Colors',
            color: const Color.fromARGB(255, 123, 7, 224),
          ),
          category(
            onTap: () {},
            text: 'Phrases',
            color: const Color.fromARGB(255, 6, 183, 222),
          )
        ],
      ),
    );
  }
}
