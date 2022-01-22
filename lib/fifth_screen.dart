import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './constants.dart';

class FifthScreen extends StatefulWidget {
  FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');

  final List clientName = [
    'Riead',
    'Brandon',
    'Jeremy',
    'Clarence',
    'Leonard',
  ];

  final List imageAddress = [
    'images/boy1.jpg',
    'images/boy2.jpg',
    'images/boy3.jpg',
    'images/boy4.jpg',
    'images/boy5.jpg',
  ];

  final List debit = [
    '25',
    '125',
    '460',
    '850',
    '60',
    // '24',
    // '27',
    // '2',
    // '24',
  ];

  final List credit = [
    '24',
    '135',
    '360',
    '50',
    '100',
    // '24',
    // '27',
    // '2',
    // '24',
  ];

  final List<double> productBalance = [
    50,
    155,
    1203,
    120,
    520,
    // 875,
    // 568,
    // 568,
    // 875,
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
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          'Sales List',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, 'ThirdScreen');
            },
            child: Row(
              children: [
                Icon(
                  Icons.person_add_alt,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.black,
                ),
              ],
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
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Daily -------------------------------------
                  // Expanded(
                  // flex: 1,
                  Container(
                    height: 70.0,
                    width: 112.0,
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
                                size: 18.0,
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
                              margin: EdgeInsets.only(top: 8.0, right: 8.0),
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
                              margin: EdgeInsets.only(top: 8.0, right: 8.0),
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
                      'Client',
                      textAlign: TextAlign.left,
                      style: titleBarTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Debit',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'Credit',
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
                itemCount: clientName.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 00.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'SeventhScreen');
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 130.0,
                              height: 60.0,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // first area to work
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(imageAddress[index]),
                                    radius: 15,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    clientName[index],
                                    style: productTitleStyle,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                height: 60.0,
                                child: Text(
                                  debit[index],
                                  style: productDataStyle,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                height: 60.0,
                                child: Text(
                                  credit[index],
                                  style: productDataStyle,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                height: 60.0,
                                child: Text(
                                  '\$' +
                                      productBalance[index].toStringAsFixed(2),
                                  style: productDataStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                    width: 130.0,
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
                        '\$446',
                        textAlign: TextAlign.right,
                        style: titleBarTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        '\$670',
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
            // DefaultTabController(
            //   length: 2,

            //   child: SizedBox(
            //     height: 80,
            //     child: AppBar(
            //       backgroundColor: Colors.white,
            //       bottom: TabBar(
            //         labelColor: Color.fromRGBO(45, 176, 246, 1),
            //         labelStyle: TextStyle(fontSize: 16.0),
            //         unselectedLabelColor: Colors.grey,
            //         indicator: BoxDecoration(
            //           color: Color.fromRGBO(45, 176, 246, 0.1),
            //         ),
            //         tabs: [
            //           Tab(
            //             icon: Icon(CupertinoIcons.cart_fill),
            //             text: 'Sale',
            //           ),
            //           Tab(
            //             text: 'Sales List',
            //             icon: Icon(CupertinoIcons.doc_text_fill),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: DefaultTabController(
        length: 2,
        child: SizedBox(
          height: 74,
          child: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Color.fromRGBO(45, 176, 246, 1),
              labelStyle: TextStyle(fontSize: 16.0),
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: Color.fromRGBO(45, 176, 246, 0.1),
              ),
              tabs: [
                Tab(
                  icon: Icon(CupertinoIcons.cart_fill),
                  text: 'Sale',
                ),
                Tab(
                  text: 'Sales List',
                  icon: Icon(
                    CupertinoIcons.doc_text_fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
