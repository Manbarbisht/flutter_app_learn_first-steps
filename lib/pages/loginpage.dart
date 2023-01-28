import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:  SingleChildScrollView(
        child: Column(
          children: [Image.asset("assets/images/login_page.png",
            fit: BoxFit.cover,),
            const SizedBox(height: 20,),
            const Text("Welcome",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Enter User name",
                        labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                  height: 50,),
                  ElevatedButton(
                    child: const Text("Login"),
                    style: TextButton.styleFrom(
                        minimumSize: const Size(150,40)),
                     onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                     },
                  ),
  ],
              ),
            )
          ],
        ),
      ));
  }
}
