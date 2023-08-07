import 'package:flutter/material.dart';
import 'package:buyuyuk/const/const.dart';

class PotonganScreen extends StatefulWidget {
  const PotonganScreen({Key? key}) : super(key: key);

  @override
  State<PotonganScreen> createState() => _PotonganScreenState();
}

class _PotonganScreenState extends State<PotonganScreen> {
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
                "Total Potongan",
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
                        "Pajak",
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
                        "Koperasi",
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
                        "Beras",
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
                        "Infaq",
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
                        "Jumlah Potongan",
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
