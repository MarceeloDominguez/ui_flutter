import 'package:flutter/material.dart';
import 'package:ui_app/widgets/app_buttons.dart';

class PruebaDetails extends StatelessWidget {
  const PruebaDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        color: Colors.green,
                      ),
                      Container(
                        height: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 200,
                        color: Colors.red,
                      ),
                      Container(
                        height: 200,
                        color: Colors.purple,
                      ),
                      Container(
                        height: 200,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  AppButton(
                    size: 60,
                    color: Colors.black.withOpacity(0.6),
                    backgroundColor: Colors.black12,
                    borderColor: Colors.black12,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigoAccent,
                      ),
                      child: const Center(
                          child: Text(
                        'Book Trip Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             Container(
      //               height: 200,
      //               color: Colors.green,
      //             ),
      //             Container(
      //               height: 200,
      //               color: Colors.blue,
      //             ),
      //             Container(
      //               height: 200,
      //               color: Colors.yellow,
      //             ),
      //             Container(
      //               height: 200,
      //               color: Colors.red,
      //             ),
      //             Container(
      //               height: 200,
      //               color: Colors.purple,
      //             ),
      //             Container(
      //               height: 200,
      //               color: Colors.orange,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         children: [
      //           AppButton(
      //             size: 60,
      //             color: Colors.black.withOpacity(0.6),
      //             backgroundColor: Colors.black12,
      //             borderColor: Colors.black12,
      //             isIcon: true,
      //             icon: Icons.favorite_border,
      //           ),
      //           const SizedBox(
      //             width: 20,
      //           ),
      //           Flexible(
      //             child: Container(
      //               height: 60,
      //               width: MediaQuery.of(context).size.width,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Colors.indigoAccent,
      //               ),
      //               child: const Center(
      //                   child: Text(
      //                 'Book Trip Now',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.bold,
      //                   letterSpacing: 0.3,
      //                 ),
      //               )),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
