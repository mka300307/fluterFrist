import 'package:flutter/material.dart';
import 'package:frist_fluter/SignUpPage.dart';

class LoginPAge extends StatefulWidget {
  const LoginPAge({Key? key}) : super(key: key);

  @override
  State<LoginPAge> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {
  bool _showPassword = false;

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        backgroundColor: Color(0xFFFEDCC5),
      ),
      body: Container(
        height: 1000,
        color: Color(0xFFFEDCC5),
        child: Container(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            child: Stack(children: [
              Positioned(
                  left: -350,
                  child: Opacity(
                      opacity: 0.2,
                      child: Image(image: AssetImage("images/betapa.png")))),
              Row(
                children: [
                  Container(
                    width: 400,
                    height: 500,
                    margin: EdgeInsets.only(left: 200),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
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

                          TextButton(
                              onPressed: (){}
                              , child: Text("Forgot Password?",style: TextStyle(color: Colors.black),)),

                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Login",
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
                            children:[
                              InkWell(
                                onTap: () {
                                  // Aksi yang ingin Anda lakukan saat tombol ditekan
                                },
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "images/facebook.png", // Ganti dengan jalur gambar yang sesuai
                                        width: 35,
                                        height: 35,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              InkWell(
                                onTap: () {
                                  // Aksi yang ingin Anda lakukan saat tombol ditekan
                                },
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "images/google.png", // Ganti dengan jalur gambar yang sesuai
                                        width: 35,
                                        height: 35,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              InkWell(
                                onTap: () {
                                  // Aksi yang ingin Anda lakukan saat tombol ditekan
                                },
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "images/vk.png", // Ganti dengan jalur gambar yang sesuai
                                        width: 35,
                                        height: 35,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]
                          ),

                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t have an account yet? ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    // Navigasi ke halaman SignUpPage
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()),
                                  );
                                },
                                child: Text("Register for free",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                style: TextButton.styleFrom(
                                  padding:
                                      EdgeInsets.zero, // Hapus padding tombol
                                  tapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // Hapus ukuran tap
                                  textStyle: TextStyle(
                                      color: Colors.blue), // Warna teks tombol
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 550,
                    width: 550,
                    margin: EdgeInsets.only(left: 250),
                    child: Image(image: AssetImage("images/betapa.png")),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
