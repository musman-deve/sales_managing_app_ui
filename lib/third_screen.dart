import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_managing_app/constants.dart';
import 'package:sales_managing_app/fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final List clientNames = [
    'Ibne Raid',
    'Brandon',
    'Jeremy',
    'Clarence',
  ];

  final List dates = [
    'July 10, 2021',
    'July 8, 2021',
    'July 6, 2021',
    'July 4, 2021',
  ];

  final List payments = [
    'Cash',
    'Cash',
    'Instrument',
    'Paypal',
  ];

  final List<double> balance = [
    3975,
    175,
    375,
    375,
  ];
  final List<double> dueBalance = [
    175,
    175,
    175,
    175,
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Sales List',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'SixthScreen');
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              width: 400.0,
              height: 43.0,
              decoration: BoxDecoration(
                  color: Color(0xffF1F7F7),
                  borderRadius: BorderRadius.circular(8.0)),
              child: TabBar(
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 16.0),
                unselectedLabelColor: Color(0xff2DB0F6),
                indicator: BoxDecoration(
                  color: Color(0xff2DB0F6),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                tabs: [
                  Tab(
                    text: 'Sales',
                  ),
                  Tab(
                    text: 'Paid',
                  ),
                  Tab(
                    text: 'Due',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  SalesTable(
                      clientNames: clientNames,
                      dates: dates,
                      payments: payments,
                      balance: balance),

                  // Paid Screen -----------------------------------------------

                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 16.0),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 0.0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          '\$' +
                                              balance[index].toStringAsFixed(2),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 16.0),
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

                  // Due Screen ------------------------------------------------

                  DueTable(
                      clientNames: clientNames,
                      dates: dates,
                      dueBalance: dueBalance,
                      balance: balance),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesTable extends StatelessWidget {
  const SalesTable({
    Key? key,
    required this.clientNames,
    required this.dates,
    required this.payments,
    required this.balance,
  }) : super(key: key);

  final List clientNames;
  final List dates;
  final List payments;
  final List<double> balance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 16.0,
          ),
          height: 55.0,
          color: Color(0xffF1F7F7),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  // width: 130.0,
                  child: Text(
                    'Date',
                    textAlign: TextAlign.left,
                    style: titleBarTextStyle,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(
                    'Payment',
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

        // Table Data ------------------------------------------------------

        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
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
                              height: 2.0,
                            ),
                            Text(
                              dates[index],
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
                            payments[index],
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
                  child: Text(
                    '\$27325',
                    textAlign: TextAlign.right,
                    style: titleBarTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
