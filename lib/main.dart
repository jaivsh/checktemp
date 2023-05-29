import 'package:flutter/material.dart';
import 'package:sample/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int cardcount = 1;
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: Image.asset('assets/images/rocket.png'),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              elevation: 0,
            ),
            endDrawer: const Drawer(
              backgroundColor: Colors.black,
              child: Center(
                child: Text(
                  'End Drawer',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Idea Swipe',
                  style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    'Get a new idea on each slide and let your creative juices flow!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                    child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 244, 205),
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  width: 300,
                  height: 400,
                  child: Stack(
                    children: [
                      MyWidget(
                        cardcount: cardcount + 9,
                        title: 'Chamelion',
                        ctext: 'The purpose of our lives is to be happy',
                        cardname: 'bell.png',
                      ),
                      MyWidget(
                        cardcount: cardcount + 8,
                        title: 'Wierd',
                        ctext: 'Get busy living or get busy dying',
                        cardname: 'card2.png',
                      ),
                      MyWidget(
                        cardcount: cardcount + 7,
                        cardname: 'rocket.png',
                        title: 'ATNT',
                        ctext:
                            'Life is what happens when you are busy making other plans',
                      ),
                      MyWidget(
                        cardcount: cardcount + 6,
                        cardname: 'card2.png',
                        title: 'Emulsion',
                        ctext:
                            'Never let the fear of striking out keep you from playing the game',
                      ),
                      MyWidget(
                        cardname: 'card3.png',
                        cardcount: cardcount + 5,
                        title: 'IED',
                        ctext:
                            'If you want to live a happy life, tie it to a goal, not to people or things',
                      ),
                      MyWidget(
                        cardname: 'slider3.png',
                        cardcount: cardcount + 4,
                        title: 'RDX',
                        ctext:
                            'Not how long, but how well you have lived is the main thing',
                      ),
                      MyWidget(
                        cardname: 'slider2.png',
                        cardcount: cardcount + 3,
                        title: 'Blasting',
                        ctext:
                            'In order to write about life first you must live it.',
                      ),
                      MyWidget(
                        cardname: 'slider1.png',
                        cardcount: cardcount + 2,
                        title: 'Fly Ash',
                        ctext:
                            'The big lesson in life, baby, is never be scared of anyone or anything',
                      ),
                      MyWidget(
                        cardname: 'globe.png',
                        cardcount: cardcount + 1,
                        title: 'Mortar',
                        ctext:
                            'The whole secret of a successful life is to find out what is one’s destiny to do, and then do it',
                      ),
                      MyWidget(
                        cardname: 'mining.png',
                        cardcount: cardcount + 0,
                        ctext: 'The unexamined life is not worth living.',
                        title: 'Trip Porter',
                      ),
                    ],
                  ),
                ))
              ],
            )));
  }
}
