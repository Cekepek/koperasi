import 'package:flutter/material.dart';
import 'package:koperasi/class/warna.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 32,
              ),
              Container(
                child: Image.asset("assets/crossnetlogo.png"),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Koperasi Crossnet Indonesia",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Text(
                "3173030000001",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.6,
                          offset: Offset(0, 2))
                    ],
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Citra Dewi",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "001236",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        // width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(45, 124, 54, 1)),
                            color: Color.fromRGBO(227, 250, 232, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.savings,
                                color: Color.fromRGBO(45, 124, 54, 1),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Simpanan",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(45, 124, 54, 1),
                                    fontSize: 14),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(45, 124, 54, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        // width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(197, 114, 20, 1)),
                            color: Color.fromRGBO(250, 237, 227, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.handshake,
                                color: Color.fromRGBO(197, 114, 20, 1),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Pinjaman",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(197, 114, 20, 1),
                                    fontSize: 14),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(197, 114, 20, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Pengumuman",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Warna().biru)),
              ),
              Divider(
                color: Warna().biru,
              ),
              SizedBox(
                height: 16,
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap:
                      true, //Kalau pakai singlechildscrollview biar ngasih fixed size buat singlechildscrollview-nya
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 0.6,
                                offset: Offset(0, 2))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pengumuman",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                            Text("12/12/2021"),
                            Text("Pengumuman ini adalah pengumuman"),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
