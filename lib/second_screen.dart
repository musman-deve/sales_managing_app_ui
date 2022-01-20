import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sales_managing_app/constants.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');

  final List productNames = [
    'Shoes For Men',
    'Winter Jacket',
    'Smart Watch',
    'Winter Jacket',
    'Smart Watch',
    'Shoes For Men',
    'Winter Jacket',
    'Smart Watch',
    'Shoes For Men',
  ];

  final List productBrands = [
    'Nike',
    'Fashion',
    'Rolex',
    'Fashion',
    'Rolex',
    'Nike',
    'Fashion',
    'Rolex',
    'Nike',
  ];

  final List productCodes = [
    '145364',
    'D45GS3',
    'ABF12D',
    'AE2321',
    '324232',
    'D42331',
    'AE2321',
    '324232',
    'D42331',
  ];

  final List productQuantity = [
    '24 Pcs',
    '27 Pcs',
    '2 Dozen',
    '27 Pcs',
    '2 Dozen',
    '24 Pcs',
    '27 Pcs',
    '2 Dozen',
    '24 Pcs',
  ];

  final List<double> productBalance = [
    485,
    958,
    568,
    568,
    568,
    875,
    568,
    568,
    875,
  ];

  Future<void> _selectDate(BuildContext context, int selectedBox) async {
    final DateTime? picked = await showDatePicker(
        helpText: 'From date',
        cancelText: 'Not Now',
        confirmText: "Select",
        fieldLabelText: 'Enter Date',
        fieldHintText: 'Month/Date/Year',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter date in valid range',
        context: context,
        // builder: (BuildContext context, Widget? child) {
        //   return CustomTheme(
        //     child: child,
        //   );
        // },
        initialDate: fromDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (selectedBox == 1) {
      if (picked != null && picked != fromDate)
        setState(() {
          print(picked);
          fromDate = picked;
        });
    } else if (selectedBox == 2) {
      if (picked != null && picked != toDate)
        setState(() {
          print(picked);
          toDate = picked;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String formatedFromDate = formatter.format(fromDate);
    final String formatedToDate = formatter.format(toDate);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Stock List',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // From Date ---------------------------------------------------

                  GestureDetector(
                    onTap: () {
                      _selectDate(context, 1);
                    },
                    child: Container(
                      height: 70.0,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            width: 170.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  formatedFromDate.toString(),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16.0),
                                ),
                                Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                  // color: appStore.iconColor,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            color: Colors.white,
                            child: Text(
                              'From date',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // To Date ---------------------------------------------------

                  GestureDetector(
                    onTap: () {
                      _selectDate(context, 2);
                    },
                    child: Container(
                      height: 70.0,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            width: 170.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  formatedToDate.toString(),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16.0),
                                ),
                                Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                  // color: appStore.iconColor,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            color: Colors.white,
                            child: Text(
                              'To date',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              width: double.infinity,
              height: 55.0,
              color: Color(0xffF1F7F7),
              child: Row(
                children: [
                  Container(
                    width: 130.0,
                    child: Text(
                      'Product',
                      textAlign: TextAlign.left,
                      style: titleBarTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Code/IME',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'Qty',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Balance',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Data Table --------------------------------------------------------

            Container(
              height: MediaQuery.of(context).size.height / 2.3,
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: productNames.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 00.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 130.0,
                            height: 60.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productNames[index],
                                  style: productTitleStyle,
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  productBrands[index],
                                  style: productTagLineStyle,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              height: 60.0,
                              child: Text(
                                productCodes[index],
                                style: productDataStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              height: 60.0,
                              child: Text(
                                productQuantity[index],
                                style: productDataStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              height: 60.0,
                              child: Text(
                                '\$' + productBalance[index].toStringAsFixed(2),
                                style: productDataStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),

            // Total -----------------------------------------------------------

            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: Row(
                children: [
                  Container(
                    width: 130.0,
                    child: Text(
                      'Total:',
                      textAlign: TextAlign.left,
                      style: titleBarTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        '106',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '\$4049',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
