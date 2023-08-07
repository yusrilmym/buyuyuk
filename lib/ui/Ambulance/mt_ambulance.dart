import 'package:flutter/material.dart';
import 'package:buyuyuk/const/const.dart';
import 'package:buyuyuk/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_book_ambulance.dart';

class AmbulanceScreen extends StatelessWidget {
  const AmbulanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLikeWhiteColor,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Masuk",
          style: ktitleTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: kbigContainerColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLikeWhiteColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 96,
                      decoration: BoxDecoration(
                          color: kGAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: kSubTitleColor.withOpacity(0.1)),
                          image: const DecorationImage(
                              scale: 2,
                              image: AssetImage("assets/images/apel.png"))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Masuk Apel",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ).onTap(
                          () => const BookAmbulanceScreen().launch(context)),
                    )
                  ],
                ),
              ).onTap(() => const BookAmbulanceScreen().launch(context)),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLikeWhiteColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 96,
                      decoration: BoxDecoration(
                          color: kIcuAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: kSubTitleColor.withOpacity(0.1)),
                          image: const DecorationImage(
                              scale: 2,
                              image: AssetImage("assets/images/masuk.png"))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Masuk Kerja",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ),
                    )
                  ],
                ),
              ).onTap(() => const BookAmbulanceScreen().launch(context)),
            ],
          ),
        ),
      ),
    );
  }
}
