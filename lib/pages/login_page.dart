import 'package:b2b_ordering_system/animation/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios, size: 18, color: Colors.black),
            onPressed: () => Get.back(),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(children: [
                const SizedBox(height: 50),
                const FadeAnimation(
                  1,
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Mulish'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1.2,
                  Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                      fontFamily: 'Mulish',
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    FadeAnimation(1.2, makeInput(label: "Username")),
                    FadeAnimation(1.3, makeInput(label: "Email")),
                    FadeAnimation(
                        1.4, makeInput(label: "Password", obscureText: true)),
                  ],
                ),
              ),
              FadeAnimation(
                1.5,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // border: const Border(
                      //   top: BorderSide(color: Colors.white),
                      //   bottom: BorderSide(color: Colors.black),
                      //   left: BorderSide(color: Colors.black),
                      //   right: BorderSide(color: Colors.black),
                      // ),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.teal,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.height / 4.5,
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/logistics.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black87,
          )),
      const SizedBox(height: 5),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
      const SizedBox(height: 30),
    ],
  );
}
