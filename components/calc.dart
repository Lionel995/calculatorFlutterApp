import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String outputt = "0";
  String _output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "DEL") {
      _output = " ";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == 'CLEAR') {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "*") {
      num1 = double.parse(outputt);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(outputt);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      outputt = double.parse(_output).toStringAsFixed(1);
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(14.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            side: const BorderSide(color: Colors.white, width: 2.0),
            backgroundColor: const Color(0xFF7B3F00), // Dark chocolate color
          ),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                'assets/image/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: const Color(0xBF5A3E00), // Light chocolate with opacity
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 360,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xBF4F321F), // Chocolate with opacity
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Answer',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'DEL',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4.0),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 320,
                                    height: 2,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 310,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xBF3E2723), // Darker chocolate
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.only(left: 12.0),
                                  child: Center(
                                    child: Text(
                                      outputt,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 36.0),
                      Container(
                        width: 360,
                        height: 378,
                        decoration: BoxDecoration(
                          color: const Color(0xBF4F321F),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                buildButton("7"),
                                buildButton("8"),
                                buildButton("9"),
                                buildButton("/"),
                              ],
                            ),
                            Row(
                              children: [
                                buildButton("4"),
                                buildButton("5"),
                                buildButton("6"),
                                buildButton("*"),
                              ],
                            ),
                            Row(
                              children: [
                                buildButton("1"),
                                buildButton("2"),
                                buildButton("3"),
                                buildButton("-"),
                              ],
                            ),
                            Row(
                              children: [
                                buildButton("."),
                                buildButton("0"),
                                buildButton("00"),
                                buildButton("+"),
                              ],
                            ),
                            Row(
                              children: [
                                buildButton("CLEAR"),
                                buildButton("="),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
