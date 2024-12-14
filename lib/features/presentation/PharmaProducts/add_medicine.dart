import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:foxcare_app/features/presentation/widgets/custom_elements.dart';

import '../../../core/theme/colors.dart';

class AddMedicine extends StatefulWidget {
  const AddMedicine({super.key});

  @override
  State<AddMedicine> createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
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
        padding: EdgeInsets.all(screenWidth * 0.010),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "BrandName:",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(hintText: "Short Name:"),
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(hintText: "HSN  Code:"),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Drug Release:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(hintText: "Strength:"),
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "10M:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(hintText: "Manufacturer:"),
                ),
                SizedBox(width: screenWidth * 0.04),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: CustomTextField(hintText: "Drug Type:"),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Drug Medicine Type:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: CustomTextField(hintText: "Drug Location:"),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Refundable:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Item Discount:",
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: CustomTextField(
                    hintText: "On MRP:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                Text(
                  "Applicable",
                  style: TextStyle(
                      fontFamily: 'SanFrancisco', fontSize: screenWidth * 0.01),
                ),
                CustomCheckBox(
                  value: true, // Initial state
                  onChanged: (bool isChecked) {},
                  borderColor: Colors.grey,
                  checkedFillColor: Colors.grey, // Checked state fill color
                  uncheckedFillColor: Colors.grey, // Unchecked state fill color
                  borderRadius: 4, // Rectangular shape
                  borderWidth: 2,
                  checkBoxSize: 24,
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.4,
                  child: CustomTextField(hintText: "Drug Location:"),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Mast Package Qty:",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: CustomTextField(
                    hintText: "Package Type:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Trans Pack Qty:",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: CustomTextField(
                    hintText: "Package Type:",
                    icon: Icon(Icons.arrow_drop_down_circle),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.3,
                  child: CustomTextField(
                    hintText: "Schedule Type:",
                  ),
                ),
                Text(
                  "OTC",
                  style: TextStyle(
                      fontFamily: 'SanFrancisco', fontSize: screenWidth * 0.01),
                ),
                CustomCheckBox(
                  value: true, // Initial state
                  onChanged: (bool isChecked) {},
                  borderColor: Colors.grey,
                  checkedFillColor: Colors.grey, // Checked state fill color
                  uncheckedFillColor: Colors.grey, // Unchecked state fill color
                  borderRadius: 4, // Rectangular shape
                  borderWidth: 2,
                  checkBoxSize: 24,
                ),
                Text(
                  "Forrmulary",
                  style: TextStyle(
                      fontFamily: 'SanFrancisco', fontSize: screenWidth * 0.01),
                ),
                CustomCheckBox(
                  value: true, // Initial state
                  onChanged: (bool isChecked) {},
                  borderColor: Colors.grey,
                  checkedFillColor: Colors.grey, // Checked state fill color
                  uncheckedFillColor: Colors.grey, // Unchecked state fill color
                  borderRadius: 4, // Rectangular shape
                  borderWidth: 2,
                  checkBoxSize: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
