import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormDataPage extends StatefulWidget {
  @override
  _FormDataPageState createState() => _FormDataPageState();
}

class _FormDataPageState extends State<FormDataPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text("Form Data Mahasiswa"),
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
            children: [
              buildInputField("Nama", namaController, Icons.person),
              SizedBox(height: 12),
              buildInputField("NIM", nimController, Icons.badge),
              SizedBox(height: 12),
              buildInputField("Tahun Lahir", tahunController, Icons.calendar_month,
                  keyboardType: TextInputType.number),
              SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TampilDataPage(
                        nama: namaController.text,
                        nim: nimController.text,
                        tahun: tahunController.text,
                      ),
                    ),
                  );
                },
                child: Text("Tampilkan Data", style: TextStyle(fontSize: 16, color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String label, TextEditingController controller, IconData icon,
      {TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green[700]),
        labelText: label,
        labelStyle: TextStyle(fontWeight: FontWeight.w500),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
