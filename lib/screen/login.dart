import 'package:flutter/material.dart';
import 'package:koperasi/screen/daftar.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 147, 174, 193),
          ),
          ClipPath(
            clipper: BottomCurveClipper(),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withAlpha(127),
                          // spreadRadius: 5,
                          blurRadius: 5,
                          // offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      'assets/crossnet.png',
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Text("Selamat Datang Kembali!",
                    style: TextStyle(
                      fontSize: 36,
                      color: Color.fromRGBO(2, 62, 138, 1),
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                    "Senang melihat Anda lagi. Masukkan akun Anda untuk melanjutkan.",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    )),
                SizedBox(height: 32.0),
                Text("Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 16.0),
                Text("Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Lupa kata sandi?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    )),
                SizedBox(height: 32.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(17, 59, 175, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Masuk',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun ?",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Daftar()));
                      },
                      child: Text("Daftar",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(17, 59, 175, 1),
                              decoration: TextDecoration.underline,
                              decorationColor: Color.fromRGBO(17, 59, 175, 1),
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width * 0.5 - 34.5,
              top: MediaQuery.of(context).size.height * 0.85 - 36,
              child: Container(
                width: 69,
                height: 72,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    image: DecorationImage(
                        image: AssetImage('assets/fingerprint.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(17, 59, 175, 1)),
              ))
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100); // Start from bottom-left
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100); // Curve
    path.lineTo(size.width, 0); // Top-right corner
    path.close(); // Complete the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
