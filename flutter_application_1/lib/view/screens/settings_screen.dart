import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/setting/dark_mode_widget.dart';

import 'package:flutter_application_1/view/widgets/setting/logout_widget.dart';
import 'package:flutter_application_1/view/widgets/setting/profile_widget.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';

import '../widgets/setting/language_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ProfileWidget(),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          TextWidget(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            text: "GENERAL".tr,
            color: Get.isDarkMode ? pinkClr : mainColor,
            underline: TextDecoration.none,
          ),
          const SizedBox(
            height: 20,
          ),
          DarkModeWidget(),
          const SizedBox(
            height: 20,
          ),
          LanguageWidget(),
          const SizedBox(
            height: 20,
          ),
          LogOutWidget(),
        ],
      ),
    );
  }
}
