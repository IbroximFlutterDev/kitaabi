import 'package:flutter/material.dart';
import 'package:kitaabi/fragments/host_profile/host_profile.dart';

class ExploreFragmentScreen2 extends StatefulWidget {
  ExploreFragmentScreen2({
    Key? key,
  }) : super(key: key);

  @override
  State<ExploreFragmentScreen2> createState() => _ExploreFragmentScreen2State();
}

class _ExploreFragmentScreen2State extends State<ExploreFragmentScreen2> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              i == 0 ? Navigator.pop(context) : {i = 0};
            });
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.cyan,
          ),
        ),
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Color(0xff0232AB),
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              i == 0
                  ? courseInformationCard()
                  : courseInformationCardAfterReserving(),
              courseDescriptionCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget courseInformationCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(34, 10, 32, 10),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Thursday, Aug 10',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                      const Text(
                        '05:00 PM - 05:40 PM',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 55.45,
                              height: 39.76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Attending',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 2.55),
                            Container(
                              width: 55.45,
                              height: 39.76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Available',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 2.55),
                            Container(
                              width: 55.45,
                              height: 39.76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Days Left',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'images/book.png',
                  width: 84,
                  height: 77,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 21),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        i = 1;
                      });
                    },
                    child: Material(
                      color: const Color(0xff4288DC),
                      elevation: 2,
                      borderRadius: BorderRadius.circular(10),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            bottom: 5, top: 5, left: 5, right: 5),
                        child: Text(
                          'Reserve a spot',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget courseInformationCardAfterReserving() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(34, 10, 32, 10),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Thursday, Aug 10',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                      const Text(
                        '05:00 PM - 05:40 PM',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 55.45,
                              height: 39.76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'Attending',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 2.55),
                            Container(
                              width: 55.45,
                              height: 39.76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'Available',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 2.55),
                            Container(
                              width: 55.45,
                              height: 39.76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'Days Left',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'images/book.png',
                  width: 84,
                  height: 77,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(66, 136, 220, 0.62)),
                      child: Center(
                        child: Text(
                          'Join',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 19,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(220, 66, 66, 0.62)),
                      child: Center(
                        child: Text(
                          'Cancel spot',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget courseDescriptionCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(34, 13, 32, 11),
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/flagF.jpg',
                        width: 90,
                        height: 90,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          'Mixed Levels',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'French',
                      style: TextStyle(
                          color: Color(0xff4994BE),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Grammar Test',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'by ',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Saydobid Husanov',
                            style: TextStyle(
                              color: Color.fromRGBO(66, 136, 220, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                    Text(
                      'Если вы регулярно пользуетесь этим сайтом и хотите быть уверенным в его дальнейшем постоянном функционировании, подумайте о небольшом пожертвовании, которое помогло бы оплатить его хостинг и трафик. Нет никаких минимальных сумм - любое пожертвование принимается с благодарностью. '
                      'Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.'
                      'ни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                    Text(
                      'How to prepare',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                    Text(
                      'Если вы регулярно пользуетесь этим сайтом и хотите быть уверенным в его дальнейшем постоянном функционировании, подумайте о небольшом пожертвовании, которое помогло бы оплатить его хостинг и трафик. Нет никаких минимальных сумм - любое пожертвование принимается с благодарностью. '
                      'Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.'
                      'ни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HostProfile(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xff4288DC),
              child: Text(
                'Host\'s profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
