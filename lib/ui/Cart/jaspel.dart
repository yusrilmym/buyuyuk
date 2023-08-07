import 'package:flutter/material.dart';
import 'package:buyuyuk/const/const.dart';

class JaspelScreen extends StatefulWidget {
  const JaspelScreen({Key? key}) : super(key: key);

  @override
  State<JaspelScreen> createState() => _JaspelScreenState();
}

class _JaspelScreenState extends State<JaspelScreen> {
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
                "NILAI JASA PELAYANAN",
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
                        "Jasa Langsung Dokter (JL)",
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
                        "Jasa Tidak Langsung Dokter (JTL)",
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
                        "Tunjangan Kesejahteraan",
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
                        "Tambahan Minimal Requairement (Minreq)",
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
                        "Total Nilai Jasa Pelayanan",
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
