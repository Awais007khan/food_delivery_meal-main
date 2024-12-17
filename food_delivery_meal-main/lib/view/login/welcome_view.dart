// import 'package:flutter/material.dart';
// import 'package:food_delivery/view/login/login_view.dart';
// import 'package:food_delivery/view/login/sing_up_view.dart';

// import '../../common/color_extension.dart';
// import '../../common_widget/round_button.dart';

// class WelcomeView extends StatefulWidget {
//   const WelcomeView({super.key});

//   @override
//   State<WelcomeView> createState() => _WelcomeViewState();
// }

// class _WelcomeViewState extends State<WelcomeView> {
//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Image.asset(
//                   "assets/img/welcome_top_shape.png",
//                   width: media.width,
//                 ),
//                 Image.asset(
//                   "assets/img/app_logo3.png",
//                   width: media.width * 0.55,
//                   height: media.width * 0.55,
//                   fit: BoxFit.contain,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: media.width * 0.1,
//             ),
//             Text(
//               "Discover the best foods from Our App\nand get fast delivery to your\ndoorstep",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: TColor.secondaryText,
//                   fontSize: 13,
//                   fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: media.width * 0.1,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "Login",
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const LoginView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "Create an Account",
//                 type: RoundButtonType.textPrimary,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const SignUpView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// second try code

// import 'package:flutter/material.dart';
// import 'package:food_delivery/view/login/login_view.dart';
// import 'package:food_delivery/view/login/sing_up_view.dart';

// import '../../common/color_extension.dart';
// import '../../common_widget/round_button.dart';

// class WelcomeView extends StatefulWidget {
//   const WelcomeView({super.key});

//   @override
//   State<WelcomeView> createState() => _WelcomeViewState();
// }

// class _WelcomeViewState extends State<WelcomeView> {
//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Image.asset(
//                   "assets/img/welcome_top_shape.png",
//                   width: media.width,
//                 ),
//                 ClipOval(
//                   child: Image.asset(
//                     "assets/img/app_logo.png",
//                     width: media.width * 0.45,
//                     height: media.width * 0.47,
//                     fit:
//                         BoxFit.contain, // Ensures image fills the circular area
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: media.width * 0.1,
//             ),
//             Text(
//               "Discover the best foods from Our App\nand get fast delivery to your\ndoorstep",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: TColor.secondaryText,
//                 fontSize: 13,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(
//               height: media.width * 0.1,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "Login",
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const LoginView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: RoundButton(
//                 title: "Create an Account",
//                 type: RoundButtonType.textPrimary,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const SignUpView(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// third try
import 'package:flutter/material.dart';
import 'package:food_delivery/view/login/login_view.dart';
import 'package:food_delivery/view/login/sing_up_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/img/welcome_top_shape.png",
                  width: media.width,
                ),
                // Circular logo with a white background
                Container(
                  width: media.width * 0.55,
                  height: media.width * 0.55,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background for circle
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        "assets/img/app_logo3.png",
                        fit: BoxFit.contain, // Adjust image fitting
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Text(
              "Discover the best foods from Our App\nand get fast delivery to your\ndoorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Create an Account",
                type: RoundButtonType.textPrimary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
