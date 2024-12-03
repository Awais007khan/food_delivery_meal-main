// // import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:food_delivery/view/login/welcome_view.dart';
// import 'package:food_delivery/view/main_tabview/main_tabview.dart';

// import '../../common/globs.dart';

// class StartupView extends StatefulWidget {
//   const StartupView({super.key});

//   @override
//   State<StartupView> createState() => _StartupViewState();
// }

// class _StartupViewState extends State<StartupView> {
//   @override
//   void initState() {
//     super.initState();
//     goWelcomePage();
//   }

//   void goWelcomePage() async {
//     await Future.delayed(const Duration(seconds: 3));
//     welcomePage();
//   }

//   void welcomePage() {
//     if (Globs.udValueBool(Globs.userLogin)) {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => const MainTabView()));
//     } else {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => const WelcomeView()));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset(
//             "assets/img/splash_bg.png",
//             width: media.width,
//             height: media.height,
//             fit: BoxFit.cover,
//           ),
//           Container(
//             width: media.width * 0.55,
//             height: media.width * 0.55,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white, // Background color (optional for contrast)
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 10,
//                   spreadRadius: 2,
//                   offset: Offset(0, 5), // Subtle shadow effect
//                 ),
//               ],
//             ),
//             child: ClipOval(
//               child: Image.asset(
//                 "assets/img/logo.png",
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:food_delivery/view/login/welcome_view.dart';
// import 'package:food_delivery/view/main_tabview/main_tabview.dart';

// import '../../common/globs.dart';

// class StartupView extends StatefulWidget {
//   const StartupView({super.key});

//   @override
//   State<StartupView> createState() => _StartupViewState();
// }

// class _StartupViewState extends State<StartupView> {
//   @override
//   void initState() {
//     super.initState();
//     goWelcomePage();
//   }

//   void goWelcomePage() async {
//     await Future.delayed(const Duration(seconds: 3));
//     welcomePage();
//   }

//   void welcomePage() {
//     if (Globs.udValueBool(Globs.userLogin)) {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => const MainTabView()));
//     } else {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => const WelcomeView()));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset(
//             "assets/img/splash_bg.png",
//             width: media.width,
//             height: media.height,
//             fit: BoxFit.cover,
//           ),
//           Container(
//             width: media.width * 0.55,
//             height: media.width * 0.55,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white, // Background color (optional for contrast)
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 10,
//                   spreadRadius: 2,
//                   offset: Offset(0, 5), // Subtle shadow effect
//                 ),
//               ],
//             ),
//             child: ClipOval(
//               child: Image.asset(
//                 "assets/img/logo.png",
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:food_delivery/view/login/welcome_view.dart';
import 'package:food_delivery/view/main_tabview/main_tabview.dart';

import '../../common/globs.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Scale animation
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    // Start the animation
    _animationController.forward();

    // Navigate after a delay
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    welcomePage();
  }

  void welcomePage() {
    if (Globs.udValueBool(Globs.userLogin)) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainTabView()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeView()),
      );
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background image
          Image.asset(
            "assets/img/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          // Animated logo with styling
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              padding: EdgeInsets.all(media.width * 0.05),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Light background
                borderRadius: BorderRadius.circular(16), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 5,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.5,
                height: media.width * 0.5,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
