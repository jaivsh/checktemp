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
                        ctext: 'The purpose of our lives is to be happy',
                      ),
                      MyWidget(
                        cardcount: cardcount + 8,
                        ctext: 'Get busy living or get busy dying',
                      ),
                      MyWidget(
                        cardcount: cardcount + 7,
                        ctext:
                            'Life is what happens when you are busy making other plans',
                      ),
                      MyWidget(
                        cardcount: cardcount + 6,
                        ctext:
                            'Never let the fear of striking out keep you from playing the game',
                      ),
                      MyWidget(
                        cardcount: cardcount + 5,
                        ctext:
                            'If you want to live a happy life, tie it to a goal, not to people or things',
                      ),
                      MyWidget(
                        cardcount: cardcount + 4,
                        ctext:
                            'Not how long, but how well you have lived is the main thing',
                      ),
                      MyWidget(
                        cardcount: cardcount + 3,
                        ctext:
                            'In order to write about life first you must live it.',
                      ),
                      MyWidget(
                        cardcount: cardcount + 2,
                        ctext:
                            'The big lesson in life, baby, is never be scared of anyone or anything',
                      ),
                      MyWidget(
                        cardcount: cardcount + 1,
                        ctext:
                            'The whole secret of a successful life is to find out what is one’s destiny to do, and then do it',
                      ),
                      MyWidget(
                        cardcount: cardcount + 0,
                        ctext: 'The unexamined life is not worth living.',
                      ),
                    ],
                  ),
                ))
              ],
            )));
  }
}
