import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1F1F1F),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074__480.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                      // child: Image.asset(
                      //   'assets/profil/me2.jpg',
                      //   width: 60,
                      //   height: 60,
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                      // weight: 700,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'MONDAY 16',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TODAY',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '•',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.red.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      width: 190,
                      decoration: const BoxDecoration(),
                      clipBehavior: Clip.hardEdge,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          '17 18 19 20 21 22 23 24 25',
                          softWrap: false,
                          style: TextStyle(
                            wordSpacing: 3,
                            // overflow: TextOverflow.clip,
                            fontSize: 39,
                            color: Colors.white.withOpacity(0.4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const PlanCard(
                  bgColor: Color(0xffFEF754),
                  sMonth: '11',
                  sDay: '30',
                  eMonth: '12',
                  eDay: '20',
                  cardNameUp: 'DESIGN',
                  cardNameDown: 'MEETING',
                  members: [
                    'ALEX',
                    'HELENA',
                    'NANA',
                  ],
                ),
                const PlanCard(
                  bgColor: Color(0xff9C6BCE),
                  sMonth: '11',
                  sDay: '30',
                  eMonth: '12',
                  eDay: '20',
                  cardNameUp: 'DAILY',
                  cardNameDown: 'PROJECT',
                  members: [
                    'ME',
                    'RICHARD',
                    'CIRY',
                    'CIRY1',
                    'CIRY2',
                    'CIRY3',
                    'CIRY4',
                  ],
                ),
                const PlanCard(
                  bgColor: Color(0xffBBEE4B),
                  sMonth: '11',
                  sDay: '30',
                  eMonth: '12',
                  eDay: '20',
                  cardNameUp: 'WEEKLY',
                  cardNameDown: 'PLANNING',
                  members: [
                    'DEN',
                    'NANA',
                    'MARK',
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  final Color bgColor;
  final String sMonth, sDay, eMonth, eDay, cardNameUp, cardNameDown;
  final List<String> members;

  const PlanCard(
      {super.key,
        required this.bgColor,
        required this.sMonth,
        required this.sDay,
        required this.eMonth,
        required this.eDay,
        required this.cardNameUp,
        required this.cardNameDown,
        required this.members});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 35, bottom: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      sMonth,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      sDay,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '|',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      eMonth,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      eDay,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$cardNameUp\n$cardNameDown',
                      style: const TextStyle(
                          fontSize: 53,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          height: 0.9),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 200,
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            members[0],
                            style: TextStyle(
                              fontSize: 15,
                              color: members[0] == 'ME'
                                  ? Colors.black
                                  : Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            members[1],
                            style: TextStyle(
                              fontSize: 15,
                              color: members[1] == 'ME'
                                  ? Colors.black
                                  : Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            members[2],
                            style: TextStyle(
                              fontSize: 15,
                              color: members[2] == 'ME'
                                  ? Colors.black
                                  : Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            members.length > 3 ? '+${members.length - 3}' : '',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
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
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}