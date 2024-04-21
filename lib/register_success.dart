import 'package:flutter/material.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({super.key, required this.homeTap});
  final void Function() homeTap;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Registration successful",
            style: TextStyle(
              color: Color.fromARGB(255, 59, 40, 10),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "-Welcome User-",
            style: TextStyle(
              color: Color.fromARGB(255, 59, 40, 10),
              fontSize: 25,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          SizedBox(
            width: 130,
            height: 35,
            child: ElevatedButton.icon(
              onPressed: homeTap,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: const Color.fromARGB(255, 59, 40, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              label: const Text(
                'Continue.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
