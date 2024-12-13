import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foxcare_app/features/presentation/pages/customerService/customer_chat_panel.dart';
import 'package:window_manager/window_manager.dart';
import 'package:foxcare_app/features/presentation/pages/patient_registration.dart';

import 'core/theme/colors.dart';
import 'features/presentation/pages/customerService/admin_chat_panel.dart';
import 'features/presentation/pages/doctors_dashboard.dart';
import 'features/presentation/pages/login_page.dart';
import 'features/presentation/pages/reception_dashboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  // Set up window options
  WindowOptions windowOptions = WindowOptions(
    center: true, // Center the window on the screen
    title: "FoxCare",
    titleBarStyle: TitleBarStyle.normal, // Retain the title bar
  );

  // Wait until the window manager is ready and then adjust the window bounds
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await setInitialWindowBounds();
    await windowManager.maximize();
    await windowManager.setResizable(false); // Disable resizing
    await windowManager.setMaximizable(false); // Disable maximize button
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MyApp());
}

// Function to set initial window bounds
Future<void> setInitialWindowBounds() async {
  final Rect screenBounds = await windowManager.getBounds();
  const double taskbarHeight = 40; // Approximate taskbar height
  final Rect usableBounds = Rect.fromLTWH(
    screenBounds.left,
    screenBounds.top,
    screenBounds.width,
    screenBounds.height - taskbarHeight,
  );

  await windowManager.setBounds(usableBounds);
}

// Observer to detect hot reloads and restart state changes
class LifecycleEventHandler extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // Only ensure the window is visible and focused, without reapplying taskbar adjustment
      windowManager.show();
      windowManager.focus();
    }
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoxCare App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/doctorHome': (context) => DoctorsDashboard(),
        '/receptionHome': (context) => ReceptionDashboard(),
      },
      initialRoute: '/', // Define the initial route
      home: SplashScreen(), // Starting screen is the splash screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Navigate to the login page after 2 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AdminChatPanel()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Responsive design using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Splash logo image with responsive size
            Container(
              width: screenWidth * 0.6,
              height: screenHeight * 0.3,
              child: Image.asset(AppImages.logo), // Your splash logo
            ),
            SizedBox(height: screenHeight * 0.05),
            // Responsive text
            Text(
              'Health Care',
              style: TextStyle(
                fontFamily: 'SanFrancisco',
                fontSize: screenWidth * 0.06, // Adjust font size
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Column(
              children: [
                Text(
                  'A Product By',
                  style: TextStyle(
                    fontFamily: 'SanFrancisco',
                    color: AppColors.secondary,
                    fontSize: screenWidth * 0.03,
                  ),
                ),
                Text(
                  'Foxton',
                  style: TextStyle(
                    fontFamily: 'SanFrancisco',
                    color: AppColors.secondary,
                    fontSize: screenWidth * 0.03,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
