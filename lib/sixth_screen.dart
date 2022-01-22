import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sales_managing_app/constants.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  DateTime fromDate = DateTime.now();

  DateTime toDate = DateTime.now();

  DateFormat formatter = DateFormat('dd-MM-yyyy');

  final List clientNames = [
    'Ibne Riead',
    'Rakib',
    'Kamal',
    'Sakib',
    'Arman',
  ];

  final List transectionTime = [
    '09:50 AM',
    '10:50 AM',
    '09:50 AM',
    '09:50 AM',
    '09:50 AM',
  ];
  final List debit = [
    140,
    155,
    130,
    140,
    155,
  ];

  final List credit = [
    150,
    175,
    140,
    150,
    175,
  ];

  final List<double> balance = [
    150,
    175,
    140,
    150,
    175,
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Transection',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'FourthScreen');
            },
            child: Icon(
              Icons.arrow_forward,
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

            // Title Bar -------------------------------------------------------

            Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                  width: double.infinity,
                  height: 55.0,
                  color: Color(0xffF1F7F7),
                  child: Row(
                    children: [
                      Container(
                        width: 130.0,
                        child: Text(
                          'Description',
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
                  height: MediaQuery.of(context).size.height / 2.3,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: clientNames.length,
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
                                      clientNames[index],
                                      style: productTitleStyle,
                                    ),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Text(
                                      transectionTime[index],
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
                                    '\$' + debit[index].toString(),
                                    style: productDataStyle,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  child: Text(
                                    '\$' + credit[index].toString(),
                                    style: productDataStyle,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  height: 60.0,
                                  child: Text(
                                    '\$' + balance[index].toStringAsFixed(2),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 130.0,
                        child: Text(
                          'Total Balance:',
                          textAlign: TextAlign.left,
                          style: productDataStyle,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            '\$850',
                            textAlign: TextAlign.center,
                            style: productDataStyle,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            '\$850',
                            textAlign: TextAlign.center,
                            style: productDataStyle,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            '\$4049',
                            textAlign: TextAlign.right,
                            style: productDataStyle,
                          ),
                        ),
                      ),
                    ],
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
