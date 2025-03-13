import 'package:flutter/material.dart';

class Koperasi extends StatefulWidget {
  const Koperasi({super.key});

  @override
  State<Koperasi> createState() => _KoperasiState();
}

class _KoperasiState extends State<Koperasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Text(
          "Performa Koperasi",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(233, 244, 209, 1),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.green,
                          ),
                          Text(
                            "Total Saldo Koperasi",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("Rp.150.000.000")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(252, 239, 199, 1),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.people_outline,
                            color: Colors.brown,
                          ),
                          Text(
                            "Anggota Koperasi",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("100 Anggota")
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
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sisa Hasil Usaha",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  color: Colors.yellow),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Periode 2024",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Total SHU Koperasi",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Rp.200.000.000",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Pencapaian Target SHU",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "85%",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.yellow[600],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "SHU per Anggota",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Rp.20000000000000000000000000',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("Status Distribusi",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text(
                          "Telat Terambil",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Riwayat SHU",
                      style: TextStyle(fontWeight: FontWeight.w700),
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
