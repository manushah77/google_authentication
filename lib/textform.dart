import 'package:flutter/material.dart';
class Phon extends StatefulWidget {
  const Phon({Key? key}) : super(key: key);

  @override
  _PhonState createState() => _PhonState();
}

class _PhonState extends State<Phon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone auth',textAlign: TextAlign.center,),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 190,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(  
                prefixIcon: Icon(Icons.phone),
                hintText: 'Enter Phone number',
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(onPressed: (){},color: Colors.green,child: Text('Send Code'),),
        ],
      ),
    );
  }
}
