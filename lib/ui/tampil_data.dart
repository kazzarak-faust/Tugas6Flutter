import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahun;

  TampilDataPage({required this.nama, required this.nim, required this.tahun});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text("Hasil Data"),
        backgroundColor: Colors.green[700],
        elevation: 2,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              infoRow("Nama", nama),
              infoRow("NIM", nim),
              infoRow("Tahun Lahir", tahun),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text("$title: ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          Expanded(
            child: Text(value,
                style:
                    TextStyle(fontSize: 18, color: Colors.green[800])),
          )
        ],
      ),
    );
  }
}
