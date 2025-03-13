import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:koperasi/class/warna.dart';

class Anggota extends StatefulWidget {
  const Anggota({super.key});

  @override
  State<Anggota> createState() => _AnggotaState();
}

class _AnggotaState extends State<Anggota> {
  final String initialFilter = "Filter Anggota";
  String? filter;
  List<String> filters = ["Semua", "Anggota", "Pengurus"];
  List<Map<String, dynamic>> listAnggota = [
    {
      "nama": "Budi",
      "alamat": "Jl. Jend. Sudirman No. 1",
      "status": "Anggota",
      "nomorAnggota": 12312311111112,
    },
    {
      "nama": "Susi",
      "alamat": "Jl. Jend. Sudirman No. 2",
      "status": "Pengurus",
      "nomorAnggota": 12312311111112,
    },
    {
      "nama": "Joko",
      "alamat": "Jl. Jend. Sudirman No. 3",
      "status": "Anggota",
      "nomorAnggota": 12312311111112,
    },
    {
      "nama": "Rina",
      "alamat": "Jl. Jend. Sudirman No. 4",
      "status": "Anggota",
      "nomorAnggota": 12312311111112,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
    {
      "nama": "Dodi",
      "alamat": "Jl. Jend. Sudirman No. 5",
      "status": "Pengurus",
      "nomorAnggota": 1231231111111212932,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true, //biar gak berubah warna waktu scroll
        centerTitle: true,
        title: const Text(
          "Anggota Koperasi",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Cari anggota",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 2,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'Filter Anggota',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Warna().biru,
                        ),
                      ),
                      items: filters
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Warna().biru,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                          .toList(),
                      value: filter,
                      onChanged: (String? value) {
                        setState(() {
                          filter = value;
                        });
                      },
                      buttonStyleData: ButtonStyleData(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Warna().biru,
                          ),
                        ),
                      ),
                      iconStyleData: IconStyleData(
                          iconEnabledColor: Warna().biru,
                          iconDisabledColor: Warna().biru),
                      menuItemStyleData: MenuItemStyleData(
                        height: 40,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1.0,
                            color: Warna().biru,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listAnggota.length,
                itemBuilder: (context, index) {
                  return Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                listAnggota[index]["nama"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              Text(" • " + listAnggota[index]["status"]),
                            ],
                          ),
                          Text(listAnggota[index]["nomorAnggota"].toString()),
                          Divider(),
                        ],
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
