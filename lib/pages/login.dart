// import "dart:js";
// import Navigator;

import "package:catcomm/pages/homepage.dart";
import "package:catcomm/utils/routes.dart";
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool ChangeButton = false;

  final formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (formKey.currentState!.validate()) ;

    setState(() {
      ChangeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.HomeRoute);
    setState(() {
      ChangeButton = false;
    });
  }

  @override
  Widget build(BuildContext) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(children: [
            Image.asset(
              "asset/images/Login.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Input Form Field

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),

                    // Dart Coding
                    validator: (value) {
                      if (name.isEmpty) {
                        return " Username cannot be Empty";
                      }
                      return null;
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
                    validator: (value) {
                      if (name.isEmpty) {
                        return " Password cannot be Empty";
                      } else if (name.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),

            // Button

            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(ChangeButton ? 50 : 8),
              child: InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: ChangeButton ? 70 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: ChangeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                  decoration: BoxDecoration(
                    // shape: ChangeButton ? BoxShape.circle : BoxShape.rectangle,
                    color: Colors.deepPurple,
                  ),

                  // child: Text(Colors.blue),
                ),
              ),
            )

            // ElevatedButton(
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
            //   onPressed: () {
            //     // Navigator.pushNamed(context, MyRoutes.HomeRoute,
            //     //     arguments: {'HomePage': 'context'});
            //   },
            // )
          ]),
        ),
      ),
    );
  }
}
