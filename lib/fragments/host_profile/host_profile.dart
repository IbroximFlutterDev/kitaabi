import 'package:flutter/material.dart';

class HostProfile extends StatefulWidget {
  const HostProfile({Key? key}) : super(key: key);

  @override
  State<HostProfile> createState() => _HostProfileState();
}

class _HostProfileState extends State<HostProfile> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 53),
          child: Column(

            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Saydobid Khusanov',
                        style: TextStyle(
                          color: Color(0xff4288DC),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Developer',
                        style: TextStyle(
                          color: Color(0xff707276),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset('images/avatar1.png'),
                    backgroundColor: Colors.white,
                    radius: 65,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10,),
                margin: EdgeInsets.only(right: 30),
                width: 325,
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xffFCF9F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Country',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff707276),
                          ),
                        ),
                        Text(
                          'Uzbekistan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 27),
                    Column(
                      children: [
                        Text(
                          'Joined',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff707276),
                          ),
                        ),
                        Text('June 2023',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          'Classes',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff707276),
                          ),
                        ),
                        Text('26',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34),
              Row(
                children: [
                  //upcoming button
                  GestureDetector(
                    child: Container(
                      width: 150,
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 0
                            ? const Color(0xff436ACE)
                            : const Color(0xffEEF0F8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Upcoming',
                          style: TextStyle(
                            color: index == 1
                                ? Color.fromRGBO(0, 0, 0, 0.5)
                                : Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                  ),
                  const SizedBox(width: 18),
                  //past button
                  GestureDetector(
                    child: Container(
                      width: 150,
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 0
                            ? const Color(0xffEEF0F8)
                            : const Color(0xff436ACE),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Past',
                          style: TextStyle(
                            color: index == 0
                                ? Color.fromRGBO(0, 0, 0, 0.5)
                                : Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: index == 0
                    ? ListView(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(3, 27, 32, 23),
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
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(15, 20, 4, 4),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'French',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff4994BE),
                                            fontWeight: FontWeight.w700,
                                          ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
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
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(3, 27, 32, 23),
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
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(15, 20, 4, 4),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: ClipOval(
                                          child: Image.asset(
                                            'images/chinaF.png',
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Chinese',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff4994BE),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const Text(
                                          'Speaking Class',
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
                                                  text: 'Mirkamol Mirkamilov',
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
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
                          ),
                        ],
                      )
                    : ListView(
                        children: [
                          GestureDetector(
                            onTap: () {},
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
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(15, 20, 4, 4),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'French',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff4994BE),
                                            fontWeight: FontWeight.w700,
                                          ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
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
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
