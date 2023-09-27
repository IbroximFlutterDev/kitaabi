import 'package:flutter/material.dart';

class ProfileFragmentScreen extends StatefulWidget {
  const ProfileFragmentScreen({Key? key}) : super(key: key);

  @override
  State<ProfileFragmentScreen> createState() => _ProfileFragmentScreenState();
}

class _ProfileFragmentScreenState extends State<ProfileFragmentScreen> {
  int index = 2;

  /*  0->current, 1-> change password, 2 -> edit profile */
  var formKey = GlobalKey();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var countryController = TextEditingController();
  var occupationController = TextEditingController();
  var ageController = TextEditingController();
  var aboutUrselfcontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Color(0xff0232AB),
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          index == 2
              ? Container(
            width: 68,
            height: 41,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color: Colors.blue,

            ),
            child: Center(
              child: Text('Save',style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),),
            ),
          )
              : SizedBox(),
          SizedBox(width: 10),
        ],
      ),
      body: index == 0
          ? SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      margin: EdgeInsets.all(8),
                      elevation: 10,
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        child: Image.asset('images/avatar1.png'),
                                        backgroundColor: Colors.white,
                                        radius: 65,
                                      ),
                                      Text(
                                        'Saydobid Khusanov',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff707276),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'saydobid2004@gmail.com',
                                        style: TextStyle(
                                          color: Color(0xffB8B9BC),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: (){
                                    setState(() {
                                      index = 2;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.work,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            'Not specified',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Color(0xffB8B9BC),
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            'Uzbekistan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Color(0xffB8B9BC),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            '19',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Color(0xffB8B9BC),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.info,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            'I love learning languages',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Color(0xffB8B9BC),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          'Change Password',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        )),
                      ),
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                    ),
                  ), //change password button
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 47,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        'Log out',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      )),
                    ),
                  ), //log out button
                ],
              ),
            )
          : (index == 1
              ? WillPopScope(
                  onWillPop: () async {
                    await Future.delayed(Duration(milliseconds: 1000));
                    setState(() {
                      index = 0;
                    });
                    return false;
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(33, 30, 30, 8),
                        child: Column(
                          children: [
                            Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Current Password',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(0, 0, 0, 0.5)),
                                  ),
                                  SizedBox(height: 15),
                                  TextFormField(
                                    controller: passwordController,
                                    validator: (val) => val == ''
                                        ? 'Please enter valid password'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 44),
                                  Text(
                                    'New Password',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(0, 0, 0, 0.5)),
                                  ),
                                  SizedBox(height: 15),
                                  TextFormField(
                                    controller: passwordController,
                                    validator: (val) => val == ''
                                        ? 'Please enter valid password'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  //button
                                  SizedBox(height: 44),
                                  Center(
                                    child: Material(
                                      color: Color(0xff4288DC),
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(30),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 28,
                                          ),
                                          child: Text(
                                            'Save changes',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : WillPopScope(
                onWillPop: ()async{
                  await Future.delayed(Duration(milliseconds: 1000));
                  setState(() {
                    index = 0;
                  });
                  return false;
                },
                child: ListView(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            child: Image.asset('images/avatar1.png'),
                            backgroundColor: Colors.white,
                            radius: 65,
                          ),
                          Text(
                            'Avatar',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            width: 368,
                            height: 243,
                            color: Colors.grey,
                          ),
                          Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  child: TextFormField(
                                    controller: nameController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your name'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ), // name
                                const SizedBox(height: 15),
                                Text(
                                  'Username',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  child: TextFormField(
                                    controller: userNameController,
                                    validator: (val) => val == ''
                                        ? 'Please enter username'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ), //username
                                SizedBox(height: 15),

                                Text(
                                  'Email',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  child: TextFormField(
                                    controller: emailController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your email'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ), //email
                                SizedBox(height: 15),

                                Text(
                                  'Country',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  child: TextFormField(
                                    controller: countryController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your country'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ), //country
                                SizedBox(height: 15),

                                Text(
                                  'Occupation',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  child: TextFormField(
                                    controller: occupationController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your occupation'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ), //occupation
                                SizedBox(height: 15),

                                Text(
                                  'Age',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  child: TextFormField(
                                    controller: ageController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your age'
                                        : null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffA4A4A4),
                                          width: 1,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ), //age
                                SizedBox(height: 15),

                                Text(
                                  'Bio',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: 368,
                                  height: 159,
                                  child: TextField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ), //bio
                                SizedBox(height: 15),

                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              )),
    );
  }
}
