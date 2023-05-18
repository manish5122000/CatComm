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
  @override
  Widget build(BuildContext) {
    return Material(
      child: SingleChildScrollView(
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.HomeRoute);
            },
            child: Container(
              width: 150,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),

              // child: Text(Colors.blue),
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
    );
  }
}
