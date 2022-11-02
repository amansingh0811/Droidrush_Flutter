// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

//_(file_name) is private in dart because of _ in front of the name

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool chngbtn = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        chngbtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        chngbtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.jpg",
                  fit: BoxFit.cover,
                  // height: 1000,  //Scroll Ho Rha Check krne ke liye
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter UserName", labelText: "UserName"),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          }
                          null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else if (value.length < 6) {
                            return "Password  Should Be Minimum Of 6 Characters";
                          }
                          null;
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Another Method to make Button

                Material(
                  color: Colors.lime,
                  borderRadius: BorderRadius.circular(chngbtn ? 50 : 8),
                  child: InkWell(
                    // splashColor: Colors.red,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: chngbtn ? 50 : 150,
                      alignment: Alignment.center,
                      child: chngbtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),

                      // Commenting this out because we want to apply repel effect but it is not possible like that

                      //  decoration: BoxDecoration(
                      //       color: Colors.lime,
                      //       // shape: chngbtn?BoxShape.circle:BoxShape.rectangle,
                      //       borderRadius: BorderRadius.circular(chngbtn ? 50 : 8)),
                    ),
                  ),
                )

                // ElevatedButton(
                //   child: Text(
                //     "Login",
                //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                // ),
              ],
            ),
          ),
        ));
  }
}






//"D:\Flutter Project\flutter_application_2\assets\images\login_image.png"