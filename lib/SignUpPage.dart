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
        backgroundColor: Color(0xFFFEDCC5),
      ),
      body: Container(
        width: 1600,
        height: 1000,
        decoration: BoxDecoration(
          color: Color(0xFFFEDCC5),
        ),
        child: Stack(children: [
          Positioned(
              left: -350,
              top: 100,
              child: Opacity(
                  opacity: 0.2,
                  child: Image(image: AssetImage("images/betapa.png")))),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Row(children: [
              Container(

                width: 450,
                height: 550,
                margin: EdgeInsets.only(left: 200),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Container(
                  margin: EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 10,),

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
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 85),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              // Navigasi ke halaman SignUpPage
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPAge()),
                            );
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          style: ButtonStyle(
                            // Atur tinggi tombol
                            minimumSize:
                            MaterialStateProperty.all(Size(200, 50)),
                            // Atur padding tombol
                            padding: MaterialStateProperty.all(
                                EdgeInsets.all(10)),
                            backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states
                                    .contains(MaterialState.pressed)) {
                                  return Colors
                                      .white; // Warna saat tombol ditekan
                                }
                                return Color(0xFFF25019); // Warna default
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You already have an account?",
                            style: TextStyle(color: Colors.black),
                          ),

                          InkWell(onTap: (){
                            Navigator.push(
                              // Navigasi ke halaman SignUpPage
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPAge()),
                            );
                          },
                          child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),)

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  width: 550,
                  height: 550,
                  margin: EdgeInsets.only(left: 250),
                  child: Image(image: AssetImage("images/betapa.png"))),
            ]),
          ),
        ]),
      ),
    );
  }
}
