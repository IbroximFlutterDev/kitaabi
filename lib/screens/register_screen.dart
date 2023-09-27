import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var ageController = TextEditingController();
  var nameController = TextEditingController();
  var countryController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  // void registerAndSaveUserRecord() async {
  //   User userModel = User(
  //     '1',
  //     nameController.text.trim(),
  //     emailController.text.trim(),
  //     passwordController.text.trim(),
  //   );
  //   try {
  //     var res =  await http.post(
  //       Uri.parse(API.signUp),
  //       body: userModel.toJson(),
  //     );
  //     if(res.statusCode == 200){
  //       var responseBodyOfSignUp = jsonDecode(res.body);
  //       if(responseBodyOfSignUp['success']){
  //         Fluttertoast.showToast(msg: 'Register successfully');
  //         setState(() {
  //           nameController.clear();
  //           emailController.clear();
  //           passwordController.clear();
  //         });
  //       }else{
  //         Fluttertoast.showToast(msg: 'Try again, error occured');
  //       }
  //     }
  //   } catch (error) {
  //     print(error.toString());
  //     Fluttertoast.showToast(msg: error.toString());
  //   }
  // }

  // validateUserEmail() async {
  //   try {
  //     var response = await http.post(Uri.parse(API.validateEmail), body: {
  //       'user_email': emailController.text.trim(),
  //     });
  //     if (response.statusCode == 200) {
  //       //succesful connection
  //       var responseBodyValEmail = jsonDecode(response.body);
  //       if (responseBodyValEmail['emailFound'] == true) {
  //         Fluttertoast.showToast(
  //             msg: 'Email is already in use of another user. Try again');
  //       } else {
  //         //register and save new user record to  database
  //         registerAndSaveUserRecord();
  //       }
  //     }
  //   } catch (error) {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,

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
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 285,
                    child: Image.asset('images/register_text.png'),
                  ),

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
                                      hintText: 'name',
                                      border: OutlineInputBorder(

                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
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
                                  TextFormField(
                                    controller: emailController,
                                    validator: (val) => val == ''
                                        ? 'Please enter valid email'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                      hintText: 'email',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
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
                                  //age
                                  TextFormField(
                                    controller: ageController,
                                    validator: (val) => val == ''
                                        ? 'Please enter valid age'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.calendar_month,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Age',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
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
                                  //country
                                  TextFormField(
                                    controller: countryController,
                                    validator: (val) => val == ''
                                        ? 'Please enter your country'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.location_on_rounded,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Country',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
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
                                      hintText: 'Strong password',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
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
                                          'Next',
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