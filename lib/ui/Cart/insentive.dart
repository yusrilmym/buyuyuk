import 'package:flutter/material.dart';
import 'package:buyuyuk/const/const.dart';

class InsenScreen extends StatefulWidget {
  const InsenScreen({Key? key}) : super(key: key);

  @override
  State<InsenScreen> createState() => _InsenScreenState();
}

class _InsenScreenState extends State<InsenScreen> {
  var value = 0;
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
            leadingWidth: 16,
            centerTitle: false,
            elevation: 0,
            leading: BackButton(
              color: kTitleColor,
            ),
            backgroundColor: Colors.white,
            title: ListTile(
              title: const Text(
                "NILAI INSENTIVE",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // subtitle: Text(
              //   "Total 2 items",
              //   style: TextStyle(color: kSubTitleColor),
              // ),
            )),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Insentive Fungsional (Tunjangan Jabatan)",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Insentive",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Insentive TCM (Tes Cepat Molekuler)",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ci (Clinical Instructure) Bulan April 2023",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tambahan Tunjangan Radiasi",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Koreksi Tambahan FFS Rajal Mei 2023",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Koreksi Tambahan Visit Ranap Mei 2023",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "Rp, 3.000.000",
                        style: TextStyle(color: kTitleColor),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Nilai Insentive",
                        style: TextStyle(
                            color: kTitleColor, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Rp. 84.000.000",
                        style: TextStyle(
                            color: kTitleColor, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
