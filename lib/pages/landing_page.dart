import 'package:b2b_ordering_system/animation/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                width: screenSize.width,
                child: const FadeAnimation(
                  1,
                  Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Mulish',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              FadeAnimation(
                1.2,
                Text(
                  'B2B ECommerce Platform',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontFamily: 'Mulish',
                  ),
                ),
              ),
              FadeAnimation(
                1.3,
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/landing_img.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.05),
              FadeAnimation(
                1.6,
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish'),
                  ),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
