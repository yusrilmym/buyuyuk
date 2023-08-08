import 'package:badges/badges.dart' as badges;
import 'package:buyuyuk/ui/Cart/insentive.dart';
import 'package:buyuyuk/ui/Cart/potongan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:buyuyuk/const/const.dart';
import 'package:buyuyuk/ui/Home/Notifications/mt_notifications.dart';
import 'package:buyuyuk/ui/Nursing%20Care/mt_nursing_care.dart';
import 'package:buyuyuk/ui/Pharmacy/mt_pharmacy.dart';
import 'package:buyuyuk/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';
import '../Ambulance/mt_ambulance.dart';
import '../Cart/jaspel.dart';
import '../Diagnostics/mt_diagnostics.dart';
import '../History/mt_history.dart';
import '../Profile/mt_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List texts = ["Masuk", "Pulang", "Cuti", "Sakit"];

  List colors = [kHeartBgColor, kDentalBgColor, kKedneyBgColor, kLungsBgColor];

  List icons = [
    "assets/images/masuk.png",
    "assets/images/bandegs.png",
    "assets/images/cuti.png",
    "assets/images/tharmometer.png"
  ];
  List<Route> myRoute = [
    MaterialPageRoute(builder: (context) => AmbulanceScreen()),
    MaterialPageRoute(builder: (context) => JaspelScreen()),
    MaterialPageRoute(builder: (context) => MyHistoryScreen()),
    MaterialPageRoute(builder: (context) => ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0.0,
        title: ListTile(
          tileColor: Colors.white,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Image(
              image: AssetImage("assets/images/menmini.png"),
            ),
          ),
          title: Text(
            "Lokasi Terkini",
            style: ksubTitleTextStyle.copyWith(fontSize: 12.0),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                IconlyLight.location,
                color: kMainColor,
                size: 18,
              ),
              Text(
                "RSUD Ciawi",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: kMainColor),
              ),
              Icon(
                IconlyLight.arrowDown2,
                color: kMainColor,
                size: 20,
              ),
            ],
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kTextFieldBorderColor, width: 1)),
            child: badges.Badge(
                badgeColor: kBadgeColor,
                borderRadius: BorderRadius.circular(40),
                badgeContent: Text(
                  "2",
                  style: TextStyle(color: kLikeWhiteColor),
                ),
                child: Icon(
                  IconlyLight.notification,
                  color: kTitleColor,
                )),
          ).onTap(() => const NotificationsScreen().launch(context)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: double.infinity,
                      height: context.height() / 5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/dr_home.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Selamat Pagi",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kLikeWhiteColor,
                                  fontSize: 18.0),
                            ),
                            Text(
                              "dr Maulana Yusril M, Sp.Kom, M.Kom",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kLikeWhiteColor),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: kLikeWhiteColor),
                              child: Center(
                                  child: Text(
                                "Ringkasan Kehadiran",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kTitleColor),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Menu",
                                style: ktitleTextStyle.copyWith(fontSize: 18),
                              ),
                              // Text(
                              //   "Lihat Semua",
                              //   style: ksubTitleTextStyle,
                              // ).onTap(() => const PharmacyCategoriesScreen()
                              //     .launch(context)),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          HorizontalList(
                            itemCount: texts.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                child: Container(
                                  height: 102,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: colors[index]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        icons[index],
                                        width: 45,
                                      ),
                                      //  color: kLikeWhiteColor,
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        texts[index],
                                        style:
                                            TextStyle(color: kLikeWhiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(myRoute[index]);
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kDarkWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Menu SIJAPRI",
                    style: ktitleTextStyle.copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/diagnostics.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Jumlah Nilai Jasa Pelayanan\nRp.35.000.000",
                                style: ktitleTextStyle.copyWith(fontSize: 17),
                              ),
                            ),
                          ),
                        ).onTap(() => const JaspelScreen().launch(context)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/pharmacy.png"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Rincian Detail Pasien\n20 Pasien",
                                style: ktitleTextStyle.copyWith(fontSize: 17),
                              ),
                            ),
                          ),
                        ).onTap(() => const InsenScreen().launch(context)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/ambulance.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Rekapan Cara Bayar Pasien\n",
                                style: ktitleTextStyle.copyWith(fontSize: 17),
                              ),
                            ),
                          ),
                        ).onTap(() => const PotonganScreen().launch(context)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/nursing.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Detail Seluruh\nJP dan Pasien per bulan",
                                style: ktitleTextStyle.copyWith(fontSize: 17),
                              ),
                            ),
                          ),
                        ).onTap(
                            () => const NursingCareScreen().launch(context)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
