import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UID Assignment 1AY18CS044 JATIN YADAV',
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
      home: const MyHomePage(title: 'UID ASSIGNMENT\n1AY18CS044-JATIN YADAV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _radioValue = 0;
  List<String> imgs = [
    'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__480.jpg',
    'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg',
    'https://5.imimg.com/data5/SELLER/Default/2020/10/MQ/YF/SJ/17936098/400-ml-coca-cola-cold-drink-500x500.jpg',
  ];

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

  String country = "India", state = "rajasthan", city = "jaipur";
  double rating=3.5;

  @override
  Widget build(BuildContext context) {
    void radioButtonChanges(int val) {
      setState(() {
        _radioValue = val;
      });
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(3.0),
          child: Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: SingleChildScrollView(
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                const Text(
                  'Task 1:Create a text box having 3 rows and person who wants to enter 4th row data then it should take but same time it should enable scroll option to see the contents. ',
                ),
                SizedBox(height: 20),
                Container(
                  height: 100,
                  width: 240,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.blueAccent)),
                  // SingleChildScrollView contains a
                  // single child which is scrollable
                  child: SingleChildScrollView(
                    // for Vertical scrolling
                    scrollDirection: Axis.vertical,
                    child: TextFormField(
                      initialValue: "1st Name\n2nd Name\n3rd Name",
                      maxLines: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(3.0)),
                          labelText: 'Enter Name',
                          hintText: 'Enter Your Name'),
                    ),
                  ),
                ),
                SizedBox(height:80),

                Text(
                  'Task 2:Create radio buttons for favorite dishes, when corresponding dish created then display images.',
                ),
                SizedBox(height: 20),

                Container(
                  height: 300,
                  width: 740,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 100,
                        child: Column(
                          children: [
                            Row(children: [
                              Radio(
                                value: 0,
                                groupValue: _radioValue,
                                onChanged: (val) =>
                                    radioButtonChanges(val as int),
                              ),
                              Text("Pizza")
                            ]),
                            Row(children: [
                              Radio(
                                value: 1,
                                groupValue: _radioValue,
                                onChanged: (val) =>
                                    radioButtonChanges(val as int),
                              ),
                              Text("Burger")
                            ]),
                            Row(children: [
                              Radio(
                                value: 2,
                                groupValue: _radioValue,
                                onChanged: (val) =>
                                    radioButtonChanges(val as int),
                              ),
                              Text("Coke")
                            ]),
                          ],
                        ),
                      ),
                      // Image.network(
                      //     'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                      Image.network(imgs[_radioValue], loadingBuilder:
                          (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return CircularProgressIndicator(
                            // strokeWidth: 50,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,

                        );
                      })
                    ],
                  ),
                ),
                SizedBox(height:80),

                Text(
                    'Task 3:Create address group box and provide options to select the country, state and city names in drop down list.'),
                SizedBox(height: 20),
                Container(
                    height: 250,
                    width: 440,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    // SingleChildScrollView contains a
                    // single child which is scrollable
                    child: Column(children: [
                      Row(
                        children: [
                          Text("select country      "),
                          DropdownButton<String>(
                            value: country,
                            items: <String>['India', 'pakistan', 'us', 'japan']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {
                              setState(() {
                                country = _ as String;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("select state      "),
                          DropdownButton<String>(
                            value: state,
                            items: <String>[
                              'rajasthan',
                              'up',
                              'karantaka',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {
                              setState(() {
                                state = _ as String;

                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("select city     "),
                          DropdownButton<String>(
                            value: city,
                            items: <String>[
                              'jaipur',
                              'bangalore',
                              'kolkata',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {
                              setState(() {
                                city = _ as String;

                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.greenAccent,
                          ),
                          child: Center(child: Text('Save address')),
                        ),
                      )
                    ])),
                SizedBox(height:80),

                Text(
                    'Task 4:Create a button and use tool tip options to show the information of those buttons.'),
                SizedBox(height: 20),
                Container(
                    height: 90,
                    width: 140,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),

                    child: new FloatingActionButton(
                      onPressed: () {},
                      tooltip: "this button is used to add something...",
                      child: new Icon(Icons.add),
                    )),
                SizedBox(height:80),

                Text(
                    'Task 5:Create a text box to take numerical value and another box containing the stars in the figure.'),
                SizedBox(height: 20),
                Container(
                  height: 190,
                  width: 340,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),

                  child: Column(
                    children:[
                      SizedBox(height:10),

                      RatingBar.builder(
                        initialRating: rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(height:30),
                      TextFormField(
                        initialValue: "3.5",
                        onChanged: (val){
                          setState(() {
                            rating=double.parse(val);
                          });
                        },
                        // maxLines: null,

                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.circular(3.0)),
                            labelText: 'Enter Rating',
                            hintText: 'Enter Your Rating'),
                      ),


                    ]
                  )
                ),
                SizedBox(
                  height:100
                )
              ],
            ),
          )),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _incrementCounter,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
