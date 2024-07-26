import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/logic/controllers/product_controller.dart';

class SearchFormText extends StatelessWidget {
  SearchFormText({Key? key}) : super(key: key);

  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (_) => TextField(
        controller: controller.searchTextController,
        cursorColor: Get.isDarkMode ? Colors.white : Colors.black,
        keyboardType: TextInputType.text,
        onChanged: (searchName) {
          controller.addSearchToList(searchName);
        },
        decoration: InputDecoration(
          fillColor: Get.isDarkMode ? Colors.black : Colors.white,
          focusColor: Colors.red,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: controller.searchTextController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    controller.clearSearch();
                  },
                  icon: Icon(
                    Icons.close,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                )
              : null,
          hintText: "Search with name & price",
          hintStyle: TextStyle(
            color: Get.isDarkMode ? Colors.white : Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}