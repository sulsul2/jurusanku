import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int currentNumber = 1;
  final int totalNumber = 20;
  final listQuestion = [
    'I seldom feel blue',
    'I have a vivid imagination',
    'I get upset easily',
    'I have difficulty understanding abstract ideas',
    'I make a mess of things',
    'I am not interested in other people\'s problems',
    'I am the life of the party',
    'I get chores done right away',
    'I feel others\' emotions',
    'I have frequent mood swings',
    'I often forget to put things back in their proper place',
    'I am not interested in abstract ideas',
    'I am not really interested in others',
    'I don\'t talk a lot',
    'I keep in the background',
    'I like order',
    'I do not have a good imagination',
    'I am relaxed most of the time',
    'I talk to a lot of different people at parties',
    'I sympathize with others\' feelings'
  ];

  @override
  Widget build(BuildContext context) {
    final String selectedOption = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        title: Text(
          'Profil',
          style: bodyLarge.copyWith(color: primaryFixedDim),
        ),
        centerTitle: true,
        leading: BackButton(
          color: white,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 30, right: 30, top: 150),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffB24BC3),
          Color(0xffEC37A9),
        ])),
        child: Column(
          children: [
            Container(
              width: 325,
              height: 451,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: white),
              padding: EdgeInsets.only(
                  top: 30, left: 10, right: 10, bottom: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentNumber = currentNumber - 1;
                            currentNumber = currentNumber < 1 ? 1 : currentNumber;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: currentNumber != 1 ? primary : gray,
                        ),
                        style: IconButton.styleFrom(
                            backgroundColor:
                                currentNumber != 1 ? buttonBack : null),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: primary),
                        alignment: Alignment.center,
                        child: Text(
                          '$currentNumber',
                          style: numberTest.copyWith(color: white),
                        ),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentNumber = currentNumber + 1;
                            currentNumber =
                                currentNumber > totalNumber ? totalNumber : currentNumber;
                          });
                          if (currentNumber == totalNumber) {
                            Navigator.pushNamed(
                              context,
                              '/test-result',
                              arguments: selectedOption,
                            );
                          }
                        },
                        icon: Icon(
                          currentNumber == totalNumber
                              ? Icons.check
                              : Icons.arrow_forward,
                          color: primary,
                        ),
                        style: IconButton.styleFrom(backgroundColor: buttonBack),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '${listQuestion[currentNumber - 1]}',
                        style: headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentNumber = currentNumber + 1;
                  currentNumber =
                      currentNumber > totalNumber ? totalNumber : currentNumber;
                });
              },
              child: Text(
                'Ya',
                style: button.copyWith(color: primary),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary90,
                  elevation: 0,
                  fixedSize: Size(301, 40)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentNumber = currentNumber + 1;
                  currentNumber =
                      currentNumber > totalNumber ? totalNumber : currentNumber;
                });
              },
              child: Text(
                'Tidak',
                style: button.copyWith(color: primary),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary90,
                  elevation: 0,
                  fixedSize: Size(301, 40)),
            )
          ],
        ),
      ),
    );
  }
}
