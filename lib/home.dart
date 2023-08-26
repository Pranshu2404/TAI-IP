import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class HomeFlash extends StatefulWidget {
  const HomeFlash({super.key});

  @override
  State<HomeFlash> createState() => _HomeFlashState();
}

class _HomeFlashState extends State<HomeFlash> {
  double _currentValue = 0;
  final bgcolor = Colors.black;
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    

    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Torch App",
          style: TextStyle(fontSize: 25),
        ),
      ),
     
      body:  Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                     
                        isActive ? 'assets/oon.jpg' : 'assets/ooff.jpg',
                        width: 420,
                        height: 350,
                        
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Slider(
                          value: _currentValue,
                          divisions: 4,
                          max: 100,
                          min: 0,
                          label: (_currentValue.toStringAsFixed(0)),
                          activeColor: Colors.white,
                          inactiveColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              _currentValue = value;
                            });
                          }),
                      CircleAvatar(
                          
                          backgroundColor: Colors.black,
                          minRadius: 30,
                          maxRadius: 45,
                          child: Transform.scale(
                            scale: 1.5,
                            child: IconButton(
                              onPressed: () {
                                controller.toggle();
                                isActive = !isActive;
                                setState(() {});
                              },
                              icon: const Icon(Icons.power_settings_new),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "Tech A Intern",
              style: TextStyle(color: textColor, fontSize: 20.0),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      
    );
  }
}
