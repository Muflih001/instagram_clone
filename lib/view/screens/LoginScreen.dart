import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/view/colors.dart';

class LoginScreen extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'ℑ𝔫𝔰𝔱𝔞𝔤𝔯𝔞𝔪',
                  style: TextStyle(color: textColor, fontSize: 50),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: double.infinity,
                        child: TextFormField(
                          controller: _usernameController,
                          cursorColor: Colors.white54,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            labelText: 'Enter your username',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter a valid email';
                            } else if (value.contains('@')) {
                              return null;
                            } else {
                              return 'invalid email adrees';
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: double.infinity,
                        child: TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.white54,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            labelText: 'Password',
                          ),
                          validator: (value) {
                            if (value != null && value.length >= 8) {
                              return null;
                            } else {
                              return 'password must have 8 letter';
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot password?',
                                style: TextStyle(color: Colors.blue),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40.0, right: 40, top: 30),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)),
                        child: TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, 'FeedScreen');
                              }
                              // String username = _usernameController.text;
                              // String password = _passwordController.text;

                              // // Validate the credentials
                              // if (username.isEmpty || password.isEmpty) {
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //       content: Text(
                              //         'Please enter both username and password',
                              //         style: TextStyle(color: Colors.white),
                              //       ),
                              //     ),
                              //   );
                              // } else if (username != 'muflih@gmail.com' ||
                              //     password != 'muflih@123') {
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //       content: Text(
                              //         'Invalid username or password',
                              //         style: TextStyle(color: Colors.white),
                              //       ),
                              //     ),
                              //   );
                              // } else {
                              //   Navigator.pushNamed(context, 'FeedScreen');
                              // }
                              // // if (username == 'muflih@gmail.com' &&
                              //     password == 'muflih@123') {
                              //   // Credentials are correct, navigate to the next screen
                              //   Navigator.pushNamed(context, 'FeedScreen');
                              // } else {
                              //   // Show an error message
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //       content: Text('Invalid username or password'),
                              //     ),
                              //   );
                              // }
                            },
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 1,
                  // ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Log in with Facebook',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't hane an account?",
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'SignUpScreen');
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text(
          //         'Instagram from facebook',
          //         style: TextStyle(color: textColorTwo),
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
