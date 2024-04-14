import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key, required this.backToLoginType});
  final void Function() backToLoginType;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Register an Account',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 59, 40, 10),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your First Name',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'First Name',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your Last Name',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'Last Name',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your Phone no.',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'Phone no.',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your Email Address',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'Email',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
              hintText: 'Enter your City',
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 290),
              labelText: 'City',
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 60,
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
                  onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
