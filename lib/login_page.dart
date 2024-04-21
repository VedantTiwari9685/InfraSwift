import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(
      {super.key, required this.backToLoginType, required this.homeTap});
  final void Function() backToLoginType;
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
            'Enter your login credentials',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 59, 40, 10),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your username',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'Username',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your password',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'Password',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                height: 35,
                child: ElevatedButton(
                  onPressed: backToLoginType,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color.fromARGB(255, 59, 40, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: 130,
                height: 35,
                child: ElevatedButton(
                  onPressed: homeTap,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color.fromARGB(255, 59, 40, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
