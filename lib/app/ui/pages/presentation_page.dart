import 'package:flutter/material.dart';

import 'login_page.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class Presentation {
  final String title;
  final String subtitle;
  final List<String> illustrations;

  Presentation({
    required this.title,
    required this.subtitle,
    required this.illustrations,
  });

  String illustration({required int index}) =>
      'assets/illustrations/${illustrations[index]}.jpg';
}

class _PresentationPageState extends State<PresentationPage> {
  final _presentation = <Presentation>[
    Presentation(
      title: 'All your\nfavorites foods',
      subtitle: 'Order your favorite menu with easy,\non-demand delivery',
      illustrations: ['soupe-1', 'soupe-2', 'soupe-3', 'soupe-4'],
    ),
    Presentation(
      title: 'Get delivery at your\ndoorstep',
      subtitle: 'Your ready order will be delivered\nquickly by our courier',
      illustrations: ['delivery-1', 'delivery-2', 'delivery-3', 'delivery-4'],
    ),
  ];

  late PageController pageController;
  double viewportFraction = 0.8;
  late double? pageOffset;
  bool getStarted = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
      viewportFraction: viewportFraction,
    )..addListener(() {
        setState(() {
          pageOffset = pageController.page;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 8,
              child: PageView.builder(
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: height / 8,
                          bottom: 8.0,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Container(
                                  color: Colors.orangeAccent,
                                  height: 200,
                                  width: 200,
                                  child: Image.asset(
                                    _presentation[index].illustration(index: 0),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                      child: Image.asset(
                                        _presentation[index]
                                            .illustration(index: 1),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 25,
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.blue,
                                      child: Image.asset(
                                        _presentation[index]
                                            .illustration(index: 2),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 30,
                              bottom: 10,
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      color: Colors.purple,
                                      child: Image.asset(
                                        _presentation[index]
                                            .illustration(index: 3),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        _presentation[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                        ),
                      ),
                      Text(
                        _presentation[index].subtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Color.fromARGB(156, 158, 158, 158),
                        ),
                      ),
                    ],
                  );
                }),
                itemCount: _presentation.length,
                onPageChanged: (_) => setState(() {
                  getStarted = !getStarted;
                }),
              ),
            ),
            Flexible(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(getStarted ? 'Get Started' : 'Continue'),
              ),
            ),
            const SizedBox(height: 5),
            Flexible(
              flex: 1,
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage(),
                  ),
                ),
                child: const Text('Sign In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
