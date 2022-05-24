import 'package:flutter/material.dart';

class GaleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(3),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/id/c/c0/Greenday_americanidiot.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Grenn Day - American Idiot",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 237, 94, 220), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/id/9/96/Green_Day_-_Dookie.jpg.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Grenn Day - Dookie",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 221, 110), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2020%2F02%2Fgreen-day-father-of-all-album-stream-000.jpg?w=960&cbr=1&q=90&fit=max"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Green Day - Father of All Motherfuckers",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 51, 60, 131), fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/5e/Green_Day_-_Warning_cover.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Green Day - Warning",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 204, 255), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(3),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/id/c/c0/Greenday_americanidiot.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Grenn Day - American Idiot",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 237, 94, 220), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/id/9/96/Green_Day_-_Dookie.jpg.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Grenn Day - Dookie",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 221, 110), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2020%2F02%2Fgreen-day-father-of-all-album-stream-000.jpg?w=960&cbr=1&q=90&fit=max"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Green Day - Father of All Motherfuckers",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 51, 60, 131), fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/5e/Green_Day_-_Warning_cover.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Green Day - Warning",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 204, 255), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/5e/Green_Day_-_Warning_cover.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Green Day - Warning",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 204, 255), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/5e/Green_Day_-_Warning_cover.jpg"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Green Day - Warning",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 204, 255), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
