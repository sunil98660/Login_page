import 'package:flutter/material.dart';

void main() {
  print('main');
  runApp(SunilApp());
}

class SunilApp extends StatelessWidget {
  const SunilApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild 3');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 30, fontFamily: 'OpenSans', color: Colors.red),
                ),
              ),
              const SizedBox(height: 20,),
              const Center(
                child: Text(
                  'Log in using,\n Email or Phone Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontFamily: 'OpenSans', color: Colors.black),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: const Icon(Icons.alternate_email,color: Colors.black26),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 20 , right: 20, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: const Icon(Icons.lock,color: Colors.black26),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100,),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'OpenSans',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'Dont have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                      'Sign up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                        color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
