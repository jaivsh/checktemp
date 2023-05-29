import 'dart:async';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class MyWidget extends StatefulWidget {
  final int cardcount;
  final String ctext;
  const MyWidget({super.key, required this.cardcount, required this.ctext});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    StreamController<double> _controller = StreamController<double>();
    return Swipable(
        verticalSwipe: false,
        horizontalSwipe: true,
        swipe: _controller.stream,
        onSwipeRight: (finalPosition) {},
        onSwipeLeft: (finalPosition) {
          setState(() {
            _controller.add(0);
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 244, 205),
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/bell.png',
                width: 70,
                height: 120,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Trip Porter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  widget.ctext,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    EvaIcons.heart,
                    color: Colors.redAccent,
                    size: 50,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Center(
                      child: Text(
                    widget.cardcount.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 50,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
