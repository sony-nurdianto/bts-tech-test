import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterPages extends StatelessWidget {
  const RegisterPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/login_bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      spreadRadius: 1,
                      blurRadius: 1,
                      // offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              width: 75.w,
              // height: ,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Register',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 35,
                            child: TextField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green, width: 0.0),
                                ),
                                labelStyle: TextStyle(fontSize: 12.0),
                              ),

                              style: const TextStyle(fontSize: 12.0),
                              // decoration: const InputDecoration(labelText: 'Username'),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 35,
                            child: TextField(
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                labelText: 'UserName',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green, width: 0.0),
                                ),
                                labelStyle: TextStyle(fontSize: 12.0),
                              ),

                              style: const TextStyle(fontSize: 12.0),
                              // decoration: const InputDecoration(labelText: 'Username'),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 35,
                            child: TextField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green, width: 0.0),
                                ),
                                labelStyle: TextStyle(fontSize: 12.0),
                              ),
                              style: const TextStyle(fontSize: 12.0),
                              // decoration: const InputDecoration(labelText: 'Password'),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // String username = _usernameController.text;
                                // String password = _passwordController.text;
                                // context.read<AuthBloc>().add(AuthLogin(username: username, password: password));
                              },
                              child: const Text('Register'),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text('Alredy Have Account'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
