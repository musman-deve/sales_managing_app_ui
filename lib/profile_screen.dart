import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Contact Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.edit,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.delete,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/portrait-of-handsome-smiling-young-man-with-crossed-arms-picture-id1200677760?k=20&m=1200677760&s=612x612&w=0&h=JCqytPoHb6bQqU9bq6gsWT2EX1G5chlW5aNK81Kh4Lg='),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Clarence',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+ 1526 4859 4786',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    height: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Colors.grey.shade200),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.phone,
                            size: 30,
                          ),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        Text('Call'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      color: Color(0xff2DB0F6),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.message_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        Text(
                          'Message',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    height: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Colors.grey.shade100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.email_outlined,
                            size: 30,
                          ),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        Text('Email'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Daily Transaction',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sales',
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              " \$ 1707.00",
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                              color: Color(0xff2DB0F6),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Due',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade500),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              " \$ 1270.00",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                                size: 15, color: Colors.grey.shade500)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Promo',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade500),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              " \$ 0.00",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                                size: 15, color: Colors.grey.shade500),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Send',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff2DB0F6),
              padding: EdgeInsets.symmetric(horizontal: 157, vertical: 17),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
