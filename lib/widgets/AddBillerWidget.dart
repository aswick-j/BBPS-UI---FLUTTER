import 'package:flutter/material.dart';
import 'package:flutter_application_bbps/models/Model.dart';

class MyStatefulWidget extends StatefulWidget {
  final Item item;

  const MyStatefulWidget({
    super.key,
    required this.item,
  }) : assert(item != null);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        RadioListTile(
          secondary: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(image: NetworkImage(widget.item.image)))),
          ),
          title: Text(widget.item.details,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(22, 25, 80, 1),
              )),
          subtitle: Text(
            "All India",
            style: TextStyle(
              color: Color.fromRGBO(147, 149, 190, 1),
            ),
          ),
          value: widget.item,
          groupValue: widget.item,
          visualDensity: VisualDensity.compact,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (index) {
            setState(() {
              print(index);
            });
          },
        ),
        Divider(),
        // RadioListTile<SingingCharacter>(
        //   secondary: Image(
        //       image: NetworkImage(
        //           "https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Tamil_Nadu_Electricity_Board_%28emblem%29.jpg/270px-Tamil_Nadu_Electricity_Board_%28emblem%29.jpg")),
        //   title: const Text('Tamil Nadu Electricity B...'),
        //   subtitle: Text("Tamil Nadu"),
        //   value: SingingCharacter.jefferson,
        //   groupValue: _character,
        //   visualDensity: VisualDensity.compact,
        //   controlAffinity: ListTileControlAffinity.trailing,
        //   onChanged: (SingingCharacter? value) {
        //     setState(() {
        //       _character = value;
        //     });
        //   },
        // ),
        // Divider(),
        // RadioListTile<SingingCharacter>(
        //   secondary: Image(
        //       image: NetworkImage(
        //           "http://www.pngimagesfree.com/LOGO/J/Jio/Reliance-Jio-Logo-PNG-HD.png")),
        //   title: const Text('Jio Telecom Services'),
        //   subtitle: Text("All India"),
        //   value: SingingCharacter.jefferson,
        //   visualDensity: VisualDensity.compact,
        //   groupValue: _character,
        //   controlAffinity: ListTileControlAffinity.trailing,
        //   onChanged: (SingingCharacter? value) {
        //     setState(() {
        //       _character = value;
        //     });
        //   },
        // ),
        // Divider(),
      ],
    );
  }
}
