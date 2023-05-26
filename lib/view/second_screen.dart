import 'package:flutter/material.dart';
import 'package:healthtech/main.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List dayList = [
    "Sun, Sep 22",
    "Mon, Sep 23",
    "Tue, Sep 24",
    "Wed, Sep 25",
    "Thu, Sep 26",
    "Fri, Sep 27",
    "Sat, Sep 28"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Hi Harry!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.medical_services_sharp,
                        color: Colors.blue,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ClipOval(
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2021/06/25/13/22/girl-6363743_1280.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "5 Medicines Left",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 45,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dayList.length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 10,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 172, 172),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        dayList[index].toString(),
                        style: const TextStyle(fontSize: 20),
                      )),
                    );
                  }),
            ),
            const SizedBox(
              height: 300,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 16,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 1.76,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 34,
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      "Your Device is not",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Center(
                                        child: Text("Connected",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500)))
                                  ],
                                ),
                                Lottie.asset('assets/internet.json'),
                                const Text(
                                  "Connect your device with",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40)),
                                  ),
                                  height: 53,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Icon(
                                        Icons.wifi,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 1,
                                      ),
                                      const Icon(
                                        Icons.network_cell,
                                        size: 30,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Open Pop Up')),
            ),
          ],
        ),
      ),
    );
  }
}
