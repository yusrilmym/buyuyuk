import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:buyuyuk/const/const.dart';
import 'package:buyuyuk/ui/Home/mt_home_bottom_nav.dart';
import 'package:buyuyuk/ui/auth/mt_signup.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Styles/style.dart';
import 'mt_forgot_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        titleTextStyle: ktitleTextStyle.copyWith(fontSize: 20),
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/logociawi.png'),
                height: 100,
                width: 100,
              ),
              const Image(
                image: AssetImage('assets/images/splash3.png'),
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                signInText,
                style: ksubTitleTextStyle,
              ),
              const SizedBox(
                height: 35,
              ),
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: InputDecoration(
                  labelText: "NIP",
                  labelStyle: TextStyle(color: kTitleColor),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: "Nomer Induk Pegawai",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: kTextFieldBorderColor)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  label: const Text("Password"),
                  labelStyle: TextStyle(color: kTitleColor),
                  hintText: "******",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: kTextFieldBorderColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Lupa Password?",
                  style: ksubTitleTextStyle,
                ),
              ).onTap(() => const ForgotPasswordScreen().launch(context)),
              const SizedBox(
                height: 25,
              ),
              AppButton(
                text: "Login",
                textColor: kLikeWhiteColor,
                enableScaleAnimation: false,
                elevation: 0,
                width: double.infinity,
                color: kMainColor,
                onTap: () => const HomeBottomNavBarScreen().launch(context),
                shapeBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6)),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Belum Punya Akun? ",
                    style: TextStyle(color: kSubTitleColor),
                    children: [
                      TextSpan(
                          text: "Hub Kepegawaian",
                          style: TextStyle(color: kMainColor)),
                    ]),
              ).onTap(() => const SignUpScreen().launch(context))
            ],
          ),
        ),
      ),
    );
  }
}
