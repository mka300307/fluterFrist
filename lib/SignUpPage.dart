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
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
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
                        _showPassword ? Icons.visibility : Icons.visibility_off,
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
                        _showConfirmPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: _toggleConfirmPasswordVisibility,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk signup di sini
                  },
                  child: Text("SignUp"),
                  style: ButtonStyle(
                    // Atur tinggi tombol
                    minimumSize: MaterialStateProperty.all(Size(200, 50)),
                    // Atur padding tombol
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Anda tidak punya akun? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push( // Navigasi ke halaman SignUpPage
                        context,
                        MaterialPageRoute(builder: (context) => LoginPAge()),
                      );
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Hapus padding tombol
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Hapus ukuran tap
                      textStyle: TextStyle(color: Colors.blue), // Warna teks tombol
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