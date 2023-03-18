import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:authentest_170/login_page.dart';
import 'package:authentest_170/auth_service.dart';

class successful extends StatefulWidget {
  const successful({super.key});

  @override
  State<successful> createState() => _successState();
}

class _successState extends State<successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Userdata"),
          actions: [
            IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginpage(),
                    ),
                  );
                },
                icon: const Icon(Icons.logout)),
          ],
        ),
        body: SafeArea(
          child: Form(
              child: ListView(
            children: [

            ],
          )),
        ));
  }
}
