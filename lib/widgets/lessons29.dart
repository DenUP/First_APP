import 'package:flutter/material.dart';

class ExampleButton extends StatefulWidget {
  const ExampleButton({super.key});

  @override
  State<ExampleButton> createState() => _ExampleButtonState();
}

class _ExampleButtonState extends State<ExampleButton> {
  String name = 'dasdasdasda';
  void ClickOnePrint() {
    setState(() {
      name = 'Была нажата первая или вторая кнопка';
    });
  }

  void ClickOtherPrint() {
    setState(() {
      name = 'Была нажата 3 или 4 кнопка';
    });
  }

  void ClickLastPrint() {
    print('Была нажата последняя кнопка');
  }

  void ClickLongPrint() {
    print('Кнопка была долго нажата');
  }

  final style = const ButtonStyle(
      //   // textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 160.0)),
      //   // textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 160)),
      foregroundColor:
          MaterialStatePropertyAll(Color.fromARGB(255, 48, 86, 255)),
      overlayColor: MaterialStatePropertyAll(Color.fromRGBO(5, 96, 250, 0.8)),
      //   shadowColor: MaterialStatePropertyAll(Colors.green), // Тень кнопки
      //   surfaceTintColor: MaterialStatePropertyAll(Colors.yellow),
      // elevation: MaterialStatePropertyAll(100.5),
      //   tapTargetSize: MaterialTapTargetSize.padded,
      // enableFeedback: true,
      padding: MaterialStatePropertyAll(
          EdgeInsets.only(left: 4, right: 24, top: 26.5, bottom: 26.5)),
      //   splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      alignment: Alignment.topLeft,
      shape: MaterialStatePropertyAll(LinearBorder.none)
      //   // mouseCursor: MaterialStatePropertyAll(SystemMouseCursors.click)
      //   // iconColor: MaterialStatePropertyAll(Colors.black),
      //   // padding: MaterialStatePropertyAll(EdgeInsets.all(150.0))
      //   // backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(5, 96, 250, 1))
      //
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          ElevatedButton(
            // clipBehavior: Clip.hardEdge,
            style: style,
            onPressed: ClickOnePrint,
            onLongPress: ClickLongPrint,
            child: Container(
              width: 159,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.call_to_action_rounded),
                  Text(
                    textAlign: TextAlign.start,
                    'Customer Care',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(5, 96, 250, 1)),
                  ),
                  Text(
                      'Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today')
                ],
              ),
            ),
          ),
          FilledButton(
            clipBehavior: Clip.hardEdge,
            style: style,
            onPressed: ClickOnePrint,
            onLongPress: ClickLongPrint,
            child: Text('Text'),
          ),
          FilledButton.tonal(
            style: style,
            onPressed: ClickOtherPrint,
            onLongPress: ClickLongPrint,
            child: Text('Text'),
          ),
          OutlinedButton(
            style: style,
            onPressed: ClickOtherPrint,
            onLongPress: ClickLongPrint,
            child: Text('Text'),
          ),
          TextButton(
            style: style,
            onPressed: ClickLastPrint,
            onLongPress: ClickLongPrint,
            child: Text('Text'),
          ),
          Container(
            width: 300,
            child: IconButton(
              icon: Icon(Icons.production_quantity_limits),
              iconSize: 35,
              splashRadius: 3000,
              onPressed: ClickOtherPrint,
            ),
          )
        ],
      ),
    );
  }
}
