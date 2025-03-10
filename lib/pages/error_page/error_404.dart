import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:symbiosis_school_jabalpur/widgets/button1_widget.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 157, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset(
              'assets/image/error.json',
              fit: BoxFit.contain,
              reverse: true,
              height: 500,
              width: 600,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget1(
              text: "Return to Home Page",
              onpressed: () {
                GoRouter.of(context).go('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
