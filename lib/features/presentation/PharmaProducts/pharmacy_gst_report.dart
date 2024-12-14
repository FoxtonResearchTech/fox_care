import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';
import '../widgets/custom_elements.dart';

class PharmacyGstReport extends StatefulWidget {
  const PharmacyGstReport({super.key});

  @override
  State<PharmacyGstReport> createState() => _PharmacyGstReportState();
}

class _PharmacyGstReportState extends State<PharmacyGstReport> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Medicine",
          style: TextStyle(color: Colors.white, fontFamily: 'SanFrancisco'),
        ),
        backgroundColor: AppColors.secondary,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(screenWidth * 0.050),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.2,
                  child: CustomTextField(
                    hintText: "From Date:",
                  ),
                ),
                SizedBox(width: screenWidth * 0.1),
                SizedBox(
                  width: screenWidth * 0.2,
                  child: CustomTextField(
                    hintText: "To Date:",
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.2,
                  child: CustomTextField(
                    hintText: "Select Name:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
                SizedBox(width: screenWidth * 0.1),
                SizedBox(
                  width: screenWidth * 0.2,
                  child: CustomTextField(
                    hintText: "Select Batch Number:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.2,
                  child: CustomTextField(
                    hintText: "Select Supplier:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Container(
              padding: EdgeInsets.only(right: screenWidth * 0.4),
              child: SizedBox(
                  width: screenWidth * 0.1,
                  child: CustomButton(label: "Generate", onPressed: () {})),
            )
          ],
        ),
      ),
    );
  }
}
