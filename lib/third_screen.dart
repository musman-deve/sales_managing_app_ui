import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
                // Navigator.pushNamed(context, 'ThirdScreen');
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
              height: 50.0,
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
          ],
        ),
      ),
    );
  }
}
