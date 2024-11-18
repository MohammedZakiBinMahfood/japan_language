import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japan_language/Models/Number.dart';

// ...

// ignore: must_be_immutable
class Numbers_Container_Item extends StatelessWidget {
  Numbers_Container_Item({super.key, required this.numb});
  final player = AudioPlayer();

  Number numb;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xffef9235),
      child: Row(children: [
        Container(
          color: const Color(0xfffff4dc),
          child: Image.asset(
            numb.image,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                numb.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                numb.enName,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        const Spacer(
          flex: 10,
        ),
        IconButton(
            splashColor: Colors.white,
            onPressed: () {
              player.play(AssetSource('sounds/numbers/number_four_sound.mp3'));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.black,
              size: 30,
            )),
        const Spacer(flex: 1),
      ]),
    );
  }
}
