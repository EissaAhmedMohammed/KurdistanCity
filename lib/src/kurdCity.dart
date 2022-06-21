import 'package:flutter/material.dart';

class Kurdish extends StatefulWidget {
  const Kurdish({Key? key}) : super(key: key);

  @override
  State<Kurdish> createState() => _KurdistanCity();
}

class _KurdistanCity extends State<Kurdish> {
  String hawler = 'https://www.hawarnews.com/en/uploads/2021/06/18/084839_072321_erbil-travel.jpg';
  String slemany = 'https://data.whicdn.com/images/59560308/original.jpg';
  String kirkuk = 'https://kirkuknow.com/uploads/24/kirkuk-ancient-citadel-down-town-in-2016-photo-by-kirkuknow.jpg';
  String showCity = 'https://www.kindpng.com/picc/m/92-922967_one-click-logo-png-transparent-png.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kurdistan City"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.network(
                showCity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20, 5),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        //this method used for hawler image show in showCity
                        showCity = hawler;
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Image.network(hawler),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showCity = slemany;
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Image.network(slemany),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showCity = kirkuk;
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 200,
                      child: Image.network(kirkuk),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
