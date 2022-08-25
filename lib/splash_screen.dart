import 'package:flutter/material.dart';
import 'package:plants_project/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 3000), () {}).then((value) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
    });

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const Text(
              'La Vie',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'meddon',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14.0),
              child: Image.asset('assets/pictures/splash screen.png'),

            ),
          ],
        ),
      ),
    );
  }
}
