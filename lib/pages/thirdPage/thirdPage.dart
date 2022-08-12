import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imtihon/consts/Myimages/myImages.dart';
import 'package:imtihon/pages/fifthPage/fifthPage.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);
  static const path = 'third';
  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 2, left: 40),
                child: Image(image: AssetImage(Myimages.ab)),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Antonio Bonilla ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.search),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 2, left: 40),
                child: Image(image: AssetImage(Myimages.vek)),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "   Important          ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 2, left: 40),
                child: Icon(
                  Icons.home_outlined,
                  color: Color(0xFF5946D2),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "  Important          ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(
              height: 4,
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 2, left: 40),
                child: Icon(
                  Icons.format_list_bulleted,
                  color: Color(0xFF5946D2),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "  Task List           ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 2, left: 40),
                child: Icon(
                  Icons.format_list_bulleted,
                  color: Color(0xFF5946D2),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "  Hover List         ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 2, left: 40),
                child: IconButton(
                  onPressed: (() {
                    Navigator.of(context).restorablePush(_dialogBuilder);
                  }),
                  icon: const Icon(Icons.add, color: Color(0xFF5946D2)),
                ),
              ),
              const Text(
                "New List",
                style: TextStyle(
                  color: Color(0xFF5946D2),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('New List'),
        actions: [
          TextFormField(
              decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter list tile",
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Color(0xFF5946D2)),
                    )),
                CupertinoButton(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    color: const Color(0xFF5946D2),
                    borderRadius: BorderRadius.circular(35),
                    child: Row(
                      children: const [Icon(Icons.add), Text("Create ")],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Fifth.path);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
