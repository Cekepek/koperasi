import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart' as im;
import 'package:koperasi/class/warna.dart';

class Daftar2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Daftar2State();
  }
}

class Daftar2State extends State<Daftar2> {
  im.ImagePicker image = im.ImagePicker();
  Uint8List pickedImage = Uint8List(0);
  bool photoTaken = false;
  String jenisKelamin = 'Wanita';
  Future<Uint8List> testComporessList(Uint8List list) async {
    var result = await FlutterImageCompress.compressWithList(
      list,
      quality: 56,
    );
    print(list.length);
    print(result.length);
    return result;
  }

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                            // width: MediaQuery.of(context).size.width * 0.55,
                            height: 10,
                            child: LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(10),
                              value: 1,
                              backgroundColor: Colors.grey,
                              minHeight: 10,
                              valueColor: AlwaysStoppedAnimation(Warna().biru),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(flex: 2, child: Text("Langkah 2/2")),
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
                        "2. Upload KTP",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Nomor Induk KTP",
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
                        Text("Upload Foto KTP",
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
                    InkWell(
                      onTap: () async {
                        final im.XFile? photo = await image.pickImage(
                            source: im.ImageSource.camera);

                        if (photo != null) {
                          print("Berhasil Pick Foto");
                          print(photo.path);
                          Uint8List pickedImageBytes =
                              await photo.readAsBytes();
                          if (pickedImageBytes != null) {
                            pickedImage =
                                await testComporessList(pickedImageBytes);
                            setState(() {
                              photoTaken = true;
                            });
                          }
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        color: Colors.grey[200],
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              photoTaken
                                  ? "Foto Telah Diambil"
                                  : "Tidak Ada Foto",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.camera_alt),
                          ],
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
