import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // ignore: avoid_unnecessary_containers, prefer_const_constructors
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Center(child: Container(
                padding: EdgeInsets.only(top:80 ),
                // ignore: prefer_const_constructors
                child: Image.asset("images/logo.png",
                width: 250,
                height: 250,
                ),
              )),
      
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(20),
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(bottom: 70),
                child: Form(child: Column(
                  children: [
      
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        prefixIcon: Icon(Icons.person),
                        hintText: "username",
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(width: 1)
                        )
                      ),
                    ) ,
      
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20,),
      
                    TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        prefixIcon: Icon(Icons.password_sharp),
                        hintText: "password",
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(width: 1)
                        )
                      ),
                    ) ,
      
                    Container(
                      // ignore: prefer_const_constructors
                      margin: EdgeInsets.all(20),
                      child:Row(
                      children: [
                        Text("if you have not account "),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("signup");
                          },
                          child: Text("Click Here", style: TextStyle(color: Colors.blue),) ,),
                      ],
                    ) ,),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        
                      onPressed: (){
                        // pushReplacementNamed => this for translte to another page without back arrow it will disappaer
                        Navigator.of(context).pushReplacementNamed("homepage") ;
                      }, 
                    child: Text('تسجيل الدخول',style: 
                    TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),),
      
                  ],
                )),
              )
      
      
        ],),
      ),
    );
  }
}