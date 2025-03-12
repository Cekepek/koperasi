import 'package:flutter/material.dart';
import 'package:koperasi/class/warna.dart';
import 'package:koperasi/screen/login.dart';

class Daftar3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Daftar3State();
  }
}

class Daftar3State extends State<Daftar3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset("assets/daftar3.png"),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Data Berhasil Disimpan",
                style: TextStyle(
                    color: Warna().biru,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                textAlign: TextAlign.center,
                "Silahkan datang ke kantor pusat untuk memverfifkasi pengajuan keanggotaan.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 59, 175, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Tutup',
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
    );
  }
}
