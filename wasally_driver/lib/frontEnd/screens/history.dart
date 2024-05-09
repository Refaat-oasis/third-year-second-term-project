import 'package:flutter/material.dart';
import 'package:wasaalydriver/login_signup/login_screen.dart';
import 'package:wasaalydriver/login_signup/signupdilevery.dart';
import 'package:wasaalydriver/screens/track_location.dart';
import 'package:wasaalydriver/screens/tracking_screen.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  HistoryState createState() => HistoryState();
}

class HistoryState extends State<history> {
  List<int> orderIds = List.generate(10, (index) => index + 1);

  void acceptOrder(int orderId) {
    setState(() {
      orderIds.remove(orderId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Received Requests"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              const CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.orange,
                              ),
                              Container(
                                height: 14,
                                color: Colors.orange,
                                width: 4,
                              ),
                              Icon(
                                Icons.location_on,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(Icons.phone, color: Colors.orange),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Text('Benziena Mobile ',
                                        style: TextStyle(fontSize: 20)),
                                    Spacer(),
                                    Text('order id : ${orderIds[index]}',
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text('Bus Station ',
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text('0123456789',
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                                Divider(
                                  color: Colors.orangeAccent,
                                  thickness: 3,
                                  endIndent: 25,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Text('20\$',
                                        style: TextStyle(fontSize: 20)),
                                    Spacer(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                    thickness: 2.5,
                  ),
                  itemCount: orderIds.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
