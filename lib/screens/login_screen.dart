import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var ageController = TextEditingController();
  var nameController = TextEditingController();
  var countryController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,


      body: LayoutBuilder(
        builder: (context, cons) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //login screen header
                   Image.asset('images/loginn.jpg',width: 248,height: 240),
                   Image.asset('images/login_text.png'),


                  //register screen sign-up form
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
                        child: Column(
                          children: [
                            //name-email-password-login button
                            Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  //name
                                  TextFormField(


                                    controller: nameController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your name'
                                        : null,
                                    decoration: InputDecoration(

                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Username or email',
                                      border: OutlineInputBorder(

                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 3,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 3,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  //email

                                  //age

                                  //password
                                  Obx(() => TextFormField(
                                    controller: passwordController,
                                    obscureText: isObsecure.value,
                                    validator: (val) => val == ''
                                        ? 'Please enter valid password'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.vpn_key_sharp,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: Obx(() => GestureDetector(
                                        onTap: () {
                                          isObsecure.value =
                                          !isObsecure.value;
                                        },
                                        child: Icon(
                                          isObsecure.value
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.black,
                                        ),
                                      )),
                                      hintText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 3,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 3,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 3,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 3,
                                        ),
                                      ),
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  )),
                                  const SizedBox(height: 18),
                                  //button
                                  Material(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          //validate email
                                          // validateUserEmail();
                                        }
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28,
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 16),


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
      ),
    );
  }
}
