

import 'package:flutter/material.dart';
import 'package:authentest_170/login_page.dart';
import 'package:authentest_170/auth_service.dart';



class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _LoginpageState();
}
extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class _LoginpageState extends State<Registerpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
    TextEditingController _UserTypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: ListView(
          children: [
            Text("Email"),
            TextFormField(
              
              controller: _emailController,
              validator: (value) {
                        RegExp regex = RegExp(r'^.{5,}$');
        if (value!.isEmpty) {
          return ("กรุณากรอก Email");
        }
        if (!regex.hasMatch(value)) {
          return ("กรุณากรอก Email");
        }
        return null;
      },
            ),
            Text("Password"),
            TextFormField(
              controller: _passwordController,

               validator: (value) {
                        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("กรุณากรอก Password");
        }
        if (!regex.hasMatch(value)) {
          return ("Password ต้องมีมากกว่า 6 ตัวอักษรหริอตัวเลข");
        }
        return null;
      },
            ),
            Text("\nประเภทของผู้ใช้งาน"),
            
     

      RadioListTile(
          title: Text("นิสิต"),
          value: "", 
          groupValue: _UserTypeController ,
          onChanged: (value){
            setState(() {
                _UserTypeController ;
            });
          },
      ),

            RadioListTile(
          title: Text("อาจารย์"),
          value: "", 
          groupValue: _UserTypeController ,
          onChanged: (value){
            setState(() {
                _UserTypeController ;
            });
          },
      ),
        
              RadioListTile(
          title: Text("เจ้าหน้าที่"),
          value: "", 
          groupValue: _UserTypeController ,
          onChanged: (value){
            setState(() {
                _UserTypeController ;
            });
          },
      ),

            ElevatedButton(onPressed: () { 
           
                  if (_formkey.currentState!.validate()) {
                    print("ok");
                    AuthService.registerUser(_emailController.text, _passwordController.text).then((value){
                      if(value==1){
                        Navigator.pop(context);
                      
                      }

                    });
    
                  }

            
                }, child: Text("Register")),
          ],
          
        ),
      )),
      
    );
  }
  
}
