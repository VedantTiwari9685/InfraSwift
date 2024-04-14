import 'package:flutter/material.dart';

class LetsStartScreen extends StatelessWidget {
  const LetsStartScreen(
      {super.key, required this.onTap, required this.loginTap});
  final void Function() onTap;
  final void Function() loginTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Opacity(
            opacity: 1.0,
            child: Image.asset(
              'assets/images/House.jpg',
              width: 270,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Welcome to',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 59, 40, 10),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'InfraSwift',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 59, 40, 10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Where Design meets Construction!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 59, 40, 10),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(180, 40),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              backgroundColor: const Color.fromARGB(255, 59, 40, 10),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
