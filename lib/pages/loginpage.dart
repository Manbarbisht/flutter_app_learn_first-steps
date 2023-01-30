import 'package:flutter/material.dart';

import '../utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:  SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.all(1.5),
                child: Image.asset("assets/images/login_page.png",
                  fit: BoxFit.fill),
              ),
                const SizedBox(height: 1,),
                 Text("Welcome $name",
                style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(
                  height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(hintText: "Enter User name",
                            labelText: "Username"),
                      validator: (value){
                          if(value!.isEmpty){
                            return "User Name Cannot be  Empty";
                          }
                          return null;
                      },
                      onChanged: (value){
                          name = value;
                          setState(() {

                          });
                      },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password Cannot be  Empty";
                          }
                          else if(value.length<6){
                            return "Password lenth should be at least 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                      height: 50,),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton?50 : 150,
                          height: 50,

                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(changeButton?50 : 8),
                          ),
                          child: changeButton?const Icon(Icons.done,color: Colors.white,)
                          : const Text("Login",
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,fontSize: 18),
                           ),

                        ),
                      )
    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
