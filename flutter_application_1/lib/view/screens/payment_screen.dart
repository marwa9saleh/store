import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/logic/controllers/cart_controller.dart';
import 'package:flutter_application_1/logic/controllers/payment_controller.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widgets/payment/delivery_Container_widget.dart';
import 'package:flutter_application_1/view/widgets/payment/payment_method_widget.dart';
import 'package:flutter_application_1/view/widgets/text_widget.dart';

class PayMentScreen extends StatelessWidget {
  PayMentScreen({Key? key}) : super(key: key);

  final cartController = Get.find<CartController>();
  final payMentController = Get.find<PayMentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text("PayMent"),
        elevation: 0,
        backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                text: "Shipping to",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                underline: TextDecoration.none,
              ),
              const SizedBox(
                height: 20,
              ),
              const DeliveryContinerWidget(),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                text: "Payment method",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                underline: TextDecoration.none,
              ),
              const SizedBox(
                height: 20,
              ),
              const PayMentMethodWidget(),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: TextWidget(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  text: "Total: ${cartController.total}\$",
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underline: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Get.isDarkMode ? pinkClr : mainColor,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Pay Now",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}












































































































// class PayMentScreen extends StatelessWidget {
//   PayMentScreen({Key? key}) : super(key: key);

//   final cartController = Get.find<CartController>();
//   final payMentController = Get.find<PayMentController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.theme.backgroundColor,
//       appBar: AppBar(
//         title: const Text("PayMent"),
//         elevation: 0,
//         backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextWidget(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 text: "Shipping to",
//                 color: Get.isDarkMode ? Colors.white : Colors.black,
//                 underline: TextDecoration.none,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const DeliveryContinerWidget(),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextWidget(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 text: "Payment method",
//                 color: Get.isDarkMode ? Colors.white : Colors.black,
//                 underline: TextDecoration.none,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const PayMentMethodWidget(),
//               const SizedBox(
//                 height: 30,
//               ),
//               Center(
//                 child: TextWidget(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   text: "Total: ${cartController.total}\$",
//                   color: Get.isDarkMode ? Colors.white : Colors.black,
//                   underline: TextDecoration.none,
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Center(
//                 child: SizedBox(
//                   height: 50,
//                   width: 150,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       elevation: 0,
//                       primary: Get.isDarkMode ? pinkClr : mainColor,
//                     ),
//                     onPressed: () {},
//                     child: const Text(
//                       "Pay Now",
//                       style: TextStyle(
//                         fontSize: 22,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
              // GetBuilder<PayMentController>(
              //   builder: (_) {
              //     if (payMentController.paymentItems.isNotEmpty) {
              //       return Center(
              //         child: GooglePayButton(
              //           width: 200,
              //           height: 50,
              //           paymentConfigurationAsset: 'gpay.json',
              //           paymentItems: payMentController.paymentItems,
              //           style: GooglePayButtonStyle.black,
              //           type: GooglePayButtonType.pay,
              //           margin: const EdgeInsets.only(top: 15.0),
              //           onPaymentResult: (data) {
              //             print(data);
              //           },
              //           loadingIndicator: const Center(
              //             child: CircularProgressIndicator(),
              //           ),
              //         ),
              //       );
              //     } else {
              //       return Center(
              //         child: SizedBox(
              //           height: 50,
              //           width: 150,
              //           child: ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //               shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(10),
              //               ),
              //               elevation: 0,
              //               primary: Get.isDarkMode ? pinkClr : mainColor,
              //             ),
              //             onPressed: () {},
              //             child: const Text(
              //               "Pay Now",
              //               style: TextStyle(
              //                 fontSize: 22,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //         ),
              //       );
              //     }
              //   },
              // ),
            //   const SizedBox(
            //     height: 20,
            //   ),
            // ],
//           ),
//         ),
//       ),
//     );
//   }
// }
