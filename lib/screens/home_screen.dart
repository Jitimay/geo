import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          40,
          1.2 * kToolbarHeight,
          40,
          20,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Purple Circle (Right)
              Align(
                alignment: const Alignment(3, -0.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              // Purple Circle (Left)
              Align(
                alignment: const Alignment(-3, -0.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              // Orange Rectangle
              Align(
                alignment: const Alignment(0, -1.4),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFAB40),
                  ),
                ),
              ),
              // Backdrop Blur
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
              // Content Column
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "🍭Josh",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Good Morning",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Reduce height of this spacer to move the image up
                      const SizedBox(height: 16),
                      Center(
                        child: Image.asset(
                          'assets/1.png',
                          height: MediaQuery.of(context).size.height * 0.25, // Dynamically set image height
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 8), // Adjust the spacing here if necessary
                      const Center(
                        child: Text(
                          "21°C",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Center(
                        child: Text(
                          'THUNDERSTORM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Center(
                        child: Text(
                          'Friday 16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/11.png',scale: 8,),
                              const SizedBox(height: 8,),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Sunrize",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "5:10 PM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/12.png',scale: 8,),
                              const SizedBox(height: 8,),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sunset",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "5:10 PM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/13.png',scale: 8,),
                              const SizedBox(height: 8,),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Temp Max",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "5:10 PM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/14.png',scale: 8,),
                              const SizedBox(height: 8,),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Temp Min",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "5:10 PM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
