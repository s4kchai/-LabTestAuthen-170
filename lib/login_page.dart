import 'package:authentest_170/auth_service.dart';
import 'package:authentest_170/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:authentest_170/register_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: ListView(
          children: [
            Text("Email"),
            TextFormField(
              decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 3, color: Color.fromARGB(255, 173, 30, 30))
    ),
  ),
              controller: _emailController,
              
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกอีเมล์";
                }

                return null;
              },
            ),
            Text("Password"),
            TextFormField(
                    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 3, color: Color.fromARGB(255, 173, 30, 30))
    ),
  ),
              controller: _passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอก Password";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("ok");

                    AuthService.Login(
                      
                            _emailController.text, _passwordController.text)
                        .then((value) {
                      if (value == 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => successful()),
                        );
                      }
                    });
                  }
                },
                child: Text("Login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Registerpage())));
                },
                child: Text("Register")),
          ],
        ),
      )),
    );
  }
}
