import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'choice_pick.dart';

class MarvelHero extends StatefulWidget {
  const MarvelHero({Key? key, required this.num, required this.info}) : super(key: key);

  final int num;
  final Map<dynamic, dynamic> info;

  @override
  State<MarvelHero> createState() => _MarvelHeroState();
}

class _MarvelHeroState extends State<MarvelHero> {

  late String question;
  late String title;
  late String imgUrl;
  late String choice_1_ans;
  late String choice_2_ans;
  late String choice_3_ans;
  late String choice_4_ans;
  late bool choice_1_check;
  late bool choice_2_check;
  late bool choice_3_check;
  late bool choice_4_check;

  bool previous = false;
  Widget? nextHero;

  @override
  void initState(){
    super.initState();
    question = widget.info[widget.num]["question"];
    title = widget.info[widget.num]["title"];
    imgUrl = widget.info[widget.num]["imgUrl"];
    choice_1_ans = widget.info[widget.num]["choice_1_ans"];
    choice_2_ans = widget.info[widget.num]["choice_2_ans"];
    choice_3_ans = widget.info[widget.num]["choice_3_ans"];
    choice_4_ans = widget.info[widget.num]["choice_4_ans"];
    choice_1_check = widget.info[widget.num]["choice_1_check"];
    choice_2_check = widget.info[widget.num]["choice_2_check"];
    choice_3_check = widget.info[widget.num]["choice_3_check"];
    choice_4_check = widget.info[widget.num]["choice_4_check"];
    if (widget.num > 1 && widget.num <= widget.info.length){
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextHero = MarvelHero(num: widget.num + 1, info: widget.info);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(title)),
        body: Center(
          child: Container(
              padding: const EdgeInsets.only(top: 30, bottom: 40),
              child: Column(
                  children: [
                     Text(question,
                        style: const TextStyle(fontSize: 30, color: Colors.deepOrange)
                    ),
                    Expanded(
                        child: Image(image: NetworkImage(imgUrl))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: TapBoxC(
                            name: choice_1_ans,
                            tone: Colors.amber,
                            answer: choice_1_check)),
                        Expanded(child: TapBoxC(
                            name: choice_2_ans,
                            tone: Colors.purple,
                            answer: choice_2_check))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: TapBoxC(
                            name: choice_3_ans,
                            tone: Colors.pinkAccent,
                            answer: choice_3_check)),
                        Expanded(child: TapBoxC(
                            name: choice_4_ans,
                            tone: Colors.lightBlue,
                            answer: choice_4_check))
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          visible: previous,
                            child: ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text("Previous")),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, "/");
                        },
                        child: const Text('Home'),),
                        Visibility(
                          visible: nextHero != null,
                          child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                            nextHero ?? Container())),
                            child: const Text("Next")
                          ),
                        )
                      ],
                    )
                  ]
              )
          ),
        )
    );
  }
}
