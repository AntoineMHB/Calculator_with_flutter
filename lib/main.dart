import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          //Here we'll put what will be done after pressing on the button
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          shadowColor: btncolor,
          padding: const EdgeInsets.all(20),
        ),
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Calculator display
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //here we'll call the buttons function where we'll pass some arguments
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //Here we already have a row. Now we'll copy this row code and make more rows

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //here we'll call the buttons function where we'll pass some arguments
                calcbutton('7', Colors.grey, Colors.black),
                calcbutton('8', Colors.grey, Colors.black),
                calcbutton('9', Colors.grey, Colors.black),
                calcbutton('x', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //here we'll call the buttons function where we'll pass some arguments
                calcbutton('4', Colors.grey, Colors.black),
                calcbutton('5', Colors.grey, Colors.black),
                calcbutton('6', Colors.grey, Colors.black),
                calcbutton('-', Colors.amber, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //here we'll call the buttons function where we'll pass some arguments
                calcbutton('1', Colors.grey, Colors.black),
                calcbutton('2', Colors.grey, Colors.black),
                calcbutton('3', Colors.grey, Colors.black),
                calcbutton('+', Colors.orangeAccent, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //now last row is different because it has 0 button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // button function
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text(
                    "0",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                calcbutton('.', Colors.grey, Colors.black),
                calcbutton('DEL', Colors.grey, Colors.black),
                calcbutton('=', Colors.orangeAccent, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Here we're going to write the calculator logic of the app
}
