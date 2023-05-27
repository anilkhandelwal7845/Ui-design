import 'package:flutter/material.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "My Data",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 2,
      ),
      body: Column(
        children: [
          Expanded(
              child: NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (BuildContext context, bool isScroll) {
                    return [
                      SliverAppBar(
                        backgroundColor: Colors.white,
                        pinned: true,
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(30),
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: TabBar(
                              indicatorPadding:  const EdgeInsets.all(0),
                              indicatorSize: TabBarIndicatorSize.label,
                              labelPadding: const EdgeInsets.all(10),
                              controller: _tabController,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              tabs: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 3, 79, 71),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 170,
                                  height: 40,
                                  child: const Text(
                                    "Priscripition",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 170,
                                  height: 40,
                                  child: const Text(
                                    "Lab Reports",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            blurRadius: 7,
                                            offset: const Offset(0, 0))
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 170,
                                  height: 40,
                                  child: const Text(
                                    "Vaccination",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  alignment: Alignment.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      Material(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  color: Colors.black,
                                  width: 300,
                                  height: 1,
                                )),
                                const Text("2023"),
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  color: Colors.black,
                                  width: 300,
                                  height: 1,
                                )),
                              ],
                            ),
                            Flexible(
                              child: ListView.builder(
                                  itemCount: 10,
                                  controller: _scrollController,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          elevation: 2,
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 10,
                                                    bottom: 0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipOval(
                                                          child: Image.network(
                                                            'https://st2.depositphotos.com/3889193/7657/i/950/depositphotos_76570869-stock-photo-confident-female-doctor-posing-in.jpg',
                                                            width: 55,
                                                            height: 55,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                               EdgeInsets
                                                                      .only(
                                                                  top: 5,
                                                                  bottom: 2),
                                                          child:  Text(
                                                            "Dr Neelam Dutta",
                                                            style: TextStyle(
                                                                letterSpacing:
                                                                    0.5,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                        Text(
                                                          "Family Doctor",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.8)),
                                                        )
                                                      ],
                                                    ),
                                                    Expanded(
                                                        child: Container()),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          "Patients : Khushboo Singh",
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                        const SizedBox(
                                                          height: 2,
                                                        ),
                                                        const Text(
                                                          "Health condition : High Blood Pressure",
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              1.8,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    height: 50,
                                                                    width: 50,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/pdf.jpg"),
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 4,
                                                                  ),
                                                                  const Text(
                                                                    "prescription.pdf",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  )
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                width: 60,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    height: 50,
                                                                    width: 50,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/galleries.png"),
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 4,
                                                                  ),
                                                                  const Text(
                                                                    "main file.jpg",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Icon(
                                                      Icons.share,
                                                      color: Colors.grey,
                                                      size: 17,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 1,
                                                color: Colors.grey,
                                              ),
                                              Flex(
                                                direction: Axis.horizontal,
                                                children: [
                                                  Expanded(
                                                      child: Row(
                                                    children: const [
                                                       SizedBox(
                                                        width: 10,
                                                      ),
                                                       Icon(
                                                        Icons
                                                            .access_time_outlined,
                                                        size: 14,
                                                        color: Colors.grey,
                                                      ),
                                                       SizedBox(
                                                        width: 10,
                                                      ),
                                                       Text(
                                                        'Updated before 2 weeks',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.grey),
                                                      )
                                                    ],
                                                  )),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 15,
                                                            vertical: 10),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Visit Details',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .indigo
                                                                  .withOpacity(
                                                                      0.7)),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          size: 12,
                                                          color: Colors.indigo
                                                              .withOpacity(0.9),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          )),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                      const Material(
                        child: ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.teal),
                          title: Text("Content"),
                        ),
                      ),
                      const Material(
                        child: ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.teal),
                          title: Text("Content"),
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
