import 'package:flutter/material.dart';

class CardTravel extends StatelessWidget {
  const CardTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: SafeArea(
        child: Stack(children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                height: 300,
                color: Colors.amber,
                child: Stack(
                  children: [
                    Container(
                      height: 245,
                      color: Colors.red,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: Container(
                        width: 110,
                        height: 110,
                        //color: Colors.greenAccent,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            //color: Colors.greenAccent,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage('assets/paisaje.jpg'),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 8.0,
                                  offset: Offset(0.0, 5.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
