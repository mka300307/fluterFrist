import 'package:flutter/material.dart';
import 'package:frist_fluter/Login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _showConfirmPassword = !_showConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUpPage"),
        backgroundColor: Color(0xFCFCFC),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image(image: AssetImage("images/gambar.png"))),
                  Container(
                    margin: EdgeInsets.only(top: 145, left: 35),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text("by creating a free account."),
                    ]),
                  ),
                ],
              ),

              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  maxLines: 1, // Maksimum 1 baris
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  maxLines: 1, // Maksimum 1 baris
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  maxLines: 1, // Maksimum 1 baris
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  maxLines: 1, // Maksimum 1 baris
                  obscureText: !_showConfirmPassword,
                  decoration: InputDecoration(
                    labelText: "Konfirmasi Password",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: _toggleConfirmPasswordVisibility,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(350, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.white; // Color when button is pressed
                      }
                      return Color(0xffff3951); // Default color
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1, blurRadius: 1, color: Colors.white)
                            ]),
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Image(image: AssetImage("images/facebook.png")))),
                    SizedBox(width: 20,),
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1, blurRadius: 1, color: Colors.white)
                            ]),
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Image(image: AssetImage("images/google.png")))),
                    SizedBox(width: 20,),
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1, blurRadius: 1, color: Colors.white)
                            ]),
                        child: Container(
                            width: 40,
                            height: 40,
                            child: Image(image: AssetImage("images/vk.png")))),
                  ]),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      textStyle: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
