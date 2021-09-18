import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'models/verticalButon.dart';
// import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.grey[200],
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.pink),
        ),
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
   
       
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Today';
    String dropdownValue2 = 'Evrything';

    List images = [
      'assets/image/12.png', 
      'assets/image/13.png',
      'assets/image/14.png',
      'assets/image/15.png',
      'assets/image/12.png',
      'assets/image/13.png',
      'assets/image/14.png',
      'assets/image/15.png',
      'assets/image/14.png',
      'assets/image/15.png',
    ];
    // Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              // flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(child: Image.asset('assets/image/1.png')),
                    ),
                    // BUTONS
                    ButonsVertical(
                      image: Image.asset('assets/image/1.png'),
                      titel: Text('Home'),
                      press: () {},
                    ),
                    ButonsVertical(
                      image: Image.asset('assets/image/2.png'),
                      titel: Text('metrics'),
                      press: () {},
                    ),
                    ButonsVertical(
                      image: Image.asset('assets/image/3.png'),
                      titel: Text('Forecast'),
                      press: () {},
                    ),
                    ButonsVertical(
                      image: Image.asset('assets/image/4.png'),
                      titel: Text('Customers'),
                      press: () {},
                    ),
                    ButonsVertical(
                      image: Image.asset('assets/image/5.png'),
                      titel: Text('Benchmarks'),
                      press: () {},
                    ),
                    ButonsVertical(
                      image: Image.asset('assets/image/6.png'),
                      titel: Text('Recover'),
                      press: () {},
                    ),
                    ButonsVertical(
                      image: Image.asset('assets/image/7.png'),
                      titel: Text('Cancellation'),
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/image/1.png',
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(width: 15),
                                Text('control Center',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          // calender
                        ],
                      ),
                      //  الرسم البياني
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 18,
                                  mainAxisSpacing: 18,
                                  // mainAxisExtent: 18,
                                  childAspectRatio: 1.3,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) => Container(
                            width: 400,
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white),
                            child: Image.asset(images[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // الجانب الايمن
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 200,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Row(
                              children: [
                                Icon(Icons.calendar_today),
                                SizedBox(width: 10),
                                Text('10,2020 - sep 8 2021')
                              ],
                            ),
                          ),
                          // TableCalendar(
                          //   focusedDay: DateTime.now(),
                          //   firstDay: DateTime(1990),
                          //   lastDay: DateTime(2050),
                          // ),
                        ),
                      ),
                      // مربع ١
                      Container(
                        width: 500,
                        // height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Breakdown',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  SizedBox(width: 200),
                                  // القائمه المنسدله
                                  Container(
                                    height: 30,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: DropdownButton<String>(
                                      value: dropdownValue,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: const TextStyle(
                                          color: Colors.deepPurple),
                                      underline: null,
                                      // Container(
                                      //   height: 2,
                                      //   color: Colors.white,
                                      // ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'Today',
                                        'last 7 day',
                                        'last 30 day',
                                        'last Week',
                                        'This Week',
                                        'This Week',
                                        'last month',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Text('3',
                                    style: TextStyle(
                                        color: Colors.deepPurple[200],
                                        fontWeight: FontWeight.bold)),
                                title: Text(
                                  'New trils',
                                  style:
                                      TextStyle(color: Colors.deepPurple[300]),
                                ),
                                trailing: Text('__'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Text('0',
                                    style: TextStyle(
                                        color: Colors.deepPurple[200],
                                        fontWeight: FontWeight.bold)),
                                title: Text(
                                  'New customers',
                                  style:
                                      TextStyle(color: Colors.deepPurple[300]),
                                ),
                                trailing: Text('__'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Text('0',
                                    style: TextStyle(
                                        color: Colors.deepPurple[200],
                                        fontWeight: FontWeight.bold)),
                                title: Text(
                                  'Expansions',
                                  style:
                                      TextStyle(color: Colors.deepPurple[300]),
                                ),
                                trailing: Text('__'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Text('0',
                                    style: TextStyle(
                                        color: Colors.deepPurple[200],
                                        fontWeight: FontWeight.bold)),
                                title: Text(
                                  'Contractions',
                                  style:
                                      TextStyle(color: Colors.deepPurple[300]),
                                ),
                                trailing: Text('__'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Text('0',
                                    style: TextStyle(
                                        color: Colors.deepPurple[200],
                                        fontWeight: FontWeight.bold)),
                                title: Text(
                                  'Cancellation',
                                  style:
                                      TextStyle(color: Colors.deepPurple[300]),
                                ),
                                trailing: Text('__'),
                              ),
                            ),
                            //      Card(
                            // elevation: 2,
                            // child: ListTile(
                            //   leading: Text('0'),
                            //   title: Text('I like icecream'),
                            //   trailing: Text('__'),
                            // ),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      // مربع 2
                      Container(
                        width: 500,
                        // height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Live stream',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  SizedBox(width: 200),
                                  // القائمه المنسدله
                                  Container(
                                    height: 30,
                                    // width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: DropdownButton<String>(
                                      value: dropdownValue2,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: const TextStyle(
                                          color: Colors.deepPurple),
                                      underline: null,
                                      // Container(
                                      //   height: 2,
                                      //   color: Colors.white,
                                      // ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue2 = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'Evrything',
                                        'New customers',
                                        'Switches',
                                        'Charges',
                                        'Failed charges',
                                        'Downgrades',
                                        'refundslast month',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Icon(Icons.star),
                                title: Text('\$ 200 paid Company Crop'),
                                trailing: Text('2h ago'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Icon(Icons.star),
                                title: Text('Recover email sent That Company'),
                                trailing: Text('7h ago'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Icon(Icons.star),
                                title:
                                    Text('\$ 85 payment failed Company Crop'),
                                trailing: Text('8h ago'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Icon(Icons.star),
                                title: Text('\$ 50 paid by Annother guy'),
                                trailing: Text('8h ago'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Icon(Icons.star),
                                title: Text('\$ 175 paid Company Crop'),
                                trailing: Text('12h ago'),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              child: ListTile(
                                leading: Icon(Icons.star),
                                title: Text('Recover email sent That person'),
                                trailing: Text('13h ago'),
                              ),
                            ),
                           
                            // ),
                          ],
                        ),
                      ),
                      //  FloatingActionButton(
                      //         onPressed: () {},
                      //         child: Icon(
                      //           Icons.message_sharp,
                      //         ),
                      //         foregroundColor: Colors.white,
                      //       ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.refresh),
        mini: true,
      ),
      );
  }
}
