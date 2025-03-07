import 'package:flutter/material.dart';
import 'package:koperasi/class/warna.dart';

class Daftar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DaftarState();
  }
}

class DaftarState extends State<Daftar> {
  String jenisKelamin = 'Wanita';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            SingleChildScrollView(
              controller: ScrollController(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: 10,
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(10),
                            value: 0.5,
                            backgroundColor: Colors.grey,
                            minHeight: 10,
                            valueColor: AlwaysStoppedAnimation(Warna().biru),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Langkah 1/2"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Center(
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
                    ),
                    Text(
                      "Daftar sebagai Anggota",
                      style: TextStyle(
                        fontSize: 24,
                        color: Warna().biru,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                        "Silahkan datang ke kantor pusat untuk memverifikasi pengajuan keanggotaan."),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Text(
                        "1. Data Pribadi",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text("Nama Lengkap",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        )),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'ex. John Doe',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Warna().biru),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text("Jenis Kelamin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        )),
                    DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xFFD9D9D9)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xFFD9D9D9)),
                            )),
                        isExpanded: true,
                        value: jenisKelamin, // Nilai yang dipilih saat ini
                        hint: Text(
                            'Pilih Opsi'), // Placeholder jika belum ada yang dipilih
                        onChanged: (newValue) {
                          setState(() {
                            jenisKelamin = newValue!;
                            print(jenisKelamin);
                          });
                        },
                        items: [
                          DropdownMenuItem<String>(
                            value: "Wanita",
                            child: Text("Wanita"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Pria",
                            child: Text("Pria"),
                          ),
                        ]),
                    SizedBox(
                      height: 32,
                    ),
                    Text("Email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        )),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'ex. JohnDoe@gmail.com',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIconColor: Colors.grey,
                        prefixIcon: Icon(Icons.email),
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Warna().biru),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Text("No Telp",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        Text("*",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Colors.grey,
                        hintText: 'ex. +62 81234567890',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Warna().biru),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Text("Alamat",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        Text("*",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'ex. John Doe',
                        prefixIcon: Icon(Icons.location_on_outlined),
                        prefixIconColor: Colors.grey,
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Warna().biru),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),
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
                            'Lanjut',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
