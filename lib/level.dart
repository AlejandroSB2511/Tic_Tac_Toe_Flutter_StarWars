import 'package:flutter/material.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  double _sliderValue = 1;

  String getSliderLabel(double value) {
    if (value == 0) {
      return "Easy";
    } else if (value == 1) {
      return "medium";
    } else if (value == 2) {
      return "hard";
    } else {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    int gridSize = (_sliderValue == 0)
        ? 3
        : (_sliderValue == 1)
        ? 4
        : 5;

    double gridSizeDimension = (_sliderValue == 0)
        ? 150
        : (_sliderValue == 1)
        ? 200
        : 250;

    double fontSize = (_sliderValue == 0)
        ? 30
        : (_sliderValue == 1)
        ? 40
        : 50;

    return Scaffold(
      appBar: AppBar(
        title: Text("Choose the board"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        leading: Icon(Icons.keyboard_backspace, color: Colors.black),
        actions: [
          Icon(Icons.local_fire_department, color: Colors.amber[900]),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 1),
            Text(
              "${gridSize}x${gridSize}",
              style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: gridSizeDimension,
                height: gridSizeDimension,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: gridSize,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: gridSize * gridSize,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.black45,
                    );
                  },
                ),
              ),
            ),
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Slider(
                    label: getSliderLabel(_sliderValue),
                    value: _sliderValue,
                    min: 0,
                    max: 2,
                    divisions: 2,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/battle',arguments:_sliderValue);
                  },
                  backgroundColor: Colors.amberAccent,
                  child: Icon(Icons.local_fire_department, color: Colors.amber[900]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
