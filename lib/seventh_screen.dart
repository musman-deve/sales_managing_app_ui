import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './constants.dart';

class SeventhScreen extends StatefulWidget {
  SeventhScreen({Key? key}) : super(key: key);

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');

  final List ClientName = [
    'Sell In Due',
    'Submission',
    'Submission',
    'Sell In Due',
    'Sell In Due',
  ];

  final List productBrands = [
    'June 29, 2021',
    'June 18, 2021',
    'June 18, 2021',
    'June 18, 2021',
    'June 18, 2021',
  ];

  final List Debit = [
    '',
    '550',
    '650',
    '',
    '',
  ];

  final List Credit = [
    '920',
    '',
    '',
    '1200',
    '150',
  ];

  final List<double> productBalance = [
    920,
    550,
    605,
    1200,
    150,
  ];
  var days = [
    '1 Day',
    '2 Days',
    '3 Days',
    '4 Days',
    '5 Days',
    '6 Days',
    '7 Days',
    '8 Days',
    '9 Days',
    '10 Days',
    '11 Days',
    '12 Days',
    '13 Days',
    '14 Days',
    '15 Days',
    '16 Days',
    '17 Days',
    '18 Days',
    '19 Days',
    '20 Days',
    '21 Days',
    '22 Days',
    '23 Days',
    '24 Days',
    '25 Days',
    '26 Days',
    '27 Days',
    '28 Days',
    '29 Days',
    '30 Days',
    '31 Days',
  ];
  var day1 = '1 Day';

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
        leadingWidth: 60.0,
        toolbarHeight: 70.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'ProfileScreen');
          },
          child: Container(
            margin: EdgeInsets.only(left: 18.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9nvqgtDdKsbQqYONwP-9LExbc5zU4CvKg9g&usqp=CAU'),
            ),
          ),
        ),
        title: Text(
          'Riead/Ledger',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.multiply,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
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
                  // Daily -------------------------------------
                  // Expanded(
                  // flex: 1,
                  Container(
                    height: 70.0,
                    width: 105.0,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8.0, right: 8.0),
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          width: double.maxFinite,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              elevation: 0,
                              icon: Icon(
                                CupertinoIcons.chevron_down,
                                size: 18,
                              ),
                              items: days.map((_daysname) {
                                return DropdownMenuItem(
                                  child: Text(
                                    _daysname,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  value: _daysname,
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  day1 = newValue.toString();
                                });
                              },
                              value: day1,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8.0),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          color: Colors.white,
                          child: Text(
                            'Daily',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // From Date ---------------------------------------------------

                  Expanded(
                    // flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        _selectDate(context, 1);
                      },
                      child: Container(
                        height: 70.0,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8.0, right: 4.0),
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              // width: 140.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    formatedFromDate.toString(),
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14.0),
                                  ),
                                  Icon(
                                    Icons.date_range,
                                    color: Colors.grey, size: 20,
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
                  ),

                  // To Date ---------------------------------------------------

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _selectDate(context, 2);
                      },
                      child: Container(
                        height: 70.0,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8.0, left: 4.0),
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              // width: 140.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    formatedToDate.toString(),
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14.0),
                                  ),
                                  Icon(
                                    Icons.date_range,
                                    color: Colors.grey,
                                    size: 20,
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
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            // Title Bar -------------------------------------------------------

            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              width: double.infinity,
              height: 55.0,
              color: Color(0xffF1F7F7),
              child: Row(
                children: [
                  Container(
                    width: 110.0,
                    child: Text(
                      'Details',
                      textAlign: TextAlign.left,
                      style: titleBarTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Debit',
                        textAlign: TextAlign.center,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'Credit',
                        textAlign: TextAlign.center,
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
              height: MediaQuery.of(context).size.height / 2.8,
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: ClientName.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 00.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 110.0,
                            height: 60.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // first area to work
                                Text(
                                  ClientName[index],
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
                              alignment: Alignment.center,
                              height: 60.0,
                              child: Text(
                                Debit[index],
                                style: productDataStyle,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 60.0,
                              child: Text(
                                Credit[index],
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

            Divider(
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: Row(
                children: [
                  Container(
                    width: 110.0,
                    child: Text(
                      'Total:',
                      textAlign: TextAlign.left,
                      style: titleBarTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        '\$670',
                        textAlign: TextAlign.center,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        '\$1850',
                        textAlign: TextAlign.center,
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
            SizedBox(
              height: 80.0,
            ),

            Container(
              height: 60.0,
              width: double.maxFinite,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              decoration: BoxDecoration(
                color: Color(0xff2db0f6),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Due Collection',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
