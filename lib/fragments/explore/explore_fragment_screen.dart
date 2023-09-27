import 'package:flutter/material.dart';

import 'package:kitaabi/fragments/explore/explore_fragment_screen2.dart';

class ExploreFragmentScreen1 extends StatefulWidget {
  const ExploreFragmentScreen1({Key? key}) : super(key: key);

  @override
  State<ExploreFragmentScreen1> createState() => _ExploreFragmentScreen1State();
}

class _ExploreFragmentScreen1State extends State<ExploreFragmentScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Color(0xff0232AB),
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExploreFragmentScreen2(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(34, 27, 32, 23),
              child: Stack(
                children: [
                  Container(
                    width: 364,
                    height: 154,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF5F7FF),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 4, 4),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                          child: Image.asset(
                            'images/flagF.jpg',
                            width: 85,
                            height: 85,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 48,
                    top: 30,
                    right: 69,
                    left: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'French',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4994BE),
                              fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          'Grammar  Test',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                              fontWeight: FontWeight.w700,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'by ',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w700,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Saydobid Khusanov',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(
                                      0xff4288DC,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      bottom: 10,
                      left: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mixed Levels',
                            style: TextStyle(
                              fontSize: 8,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '05:00 PM - 05:40 PM',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0C3260),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    bottom: 15,
                    right: 16,
                    child: Container(
                      width: 90,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xff4189BC),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          '3 of 15 spots',
                          style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.w700,),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 72,
                      height: 69,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(324),
                            topRight: Radius.circular(40),
                          ),
                          color: Color(0xff41558A)),
                      child: const Center(
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              '   Aug',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '   10',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 1,
      ),
    );
  }
}
