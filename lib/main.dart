import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SendRequestCurrentWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          actions: <Widget>[
            PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              return {'Setting', 'Logout'}.map((String Choice) {
                return PopupMenuItem(value: Choice, child: Text(Choice));
              }).toList();
            })
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 16, 13, 27),
          title: const Text(
            "weather",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/back.jpg"))),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('find')),
                              ),
                              Expanded(
                                  child: TextField(
                                controller: textEditingController,
                                decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'enter a city name'),
                              ))
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Text("Mountain View",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Clear sky',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Icon(
                            Icons.wb_sunny_outlined,
                            color: Colors.white,
                            size: 70,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            "14" "\u00B0",
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Column(
                              children: [
                                Text(
                                  "max",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "16" "\u00B0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                  color: Colors.white,
                                  width: 1,
                                  height: 55,
                                )),
                            const Column(
                              children: [
                                Text(
                                  "min",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "16" "\u00B0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            color: Colors.grey.shade600,
                            height: 1,
                            width: double.infinity,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (BuildContext context, int pos) {
                                    return const SizedBox(
                                        child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Card(
                                        elevation: 0,
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Fri, 8pm",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Icon(
                                              Icons.cloud,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "14" "\u00B0",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                                  }),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey.shade600,
                          height: 1,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    'wind speed',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      '4.73 m/s',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                    width: 1, height: 40, color: Colors.white),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'sunrise',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        '6:19 PM',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                    width: 1, height: 40, color: Colors.white),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'sunset',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        '9:30 AM',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                    width: 1, height: 40, color: Colors.white),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'humidity',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        '72%',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }

  void SendRequestCurrentWeather() async {
    var apikey = 'd89b7bfb8176bc7bb0338ce12fae6d19';
    var cityname='tehran';
    var response =
        await Dio().get("https://api.openweathermap.org/data/2.5/weather",
        queryParameters: {'q':cityname,'appid':apikey,'units':'metric'});
        print(response.data);
        print(response.statusCode);
  }
}