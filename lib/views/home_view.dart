import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/widget/f_indicator.dart';
import 'package:test_app/widget/pageview_content.dart';
import 'package:test_app/widget/rounded_button.dart';

class HomeView extends StatefulWidget {
  static const routeName = 'home_view';

  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (int index){
                setState(() => _currentPage = index );
              },
              itemBuilder: (context, position) {
                final page = pages[position];
                return PageViewContent(
                  backgroundImage: page['backgroundImage'],
                  index: position,
                  hashTag: page['hashTag'],
                  title: page['title'],
                  content: page['content'],
                );
              },
            ),


            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 25.0.w,
                  vertical: 24.0.w,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                    SizedBox(height: 48.0.h),
                    FRoundedButton(
                      onPressed: null,
                      width: double.infinity,
                      text: 'iniciar sesión'.toUpperCase(),
                      textStyle: kMediumFontStyle.copyWith(
                          fontSize: kSize16.sp,
                          color: themeColor.textTheme.subtitle1?.color,
                          letterSpacing: Constant.getLetterSpacing(-0.0024),
                          height: Constant.getLineHeight(20, kSize16)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> pages = [
    {
      'backgroundImage': '1.png',
      'hashTag': 'COMENZÁ A VIVIR TU',
      'title': 'NT EXPERIENCE',
      'content': '',
    },
    {
      'backgroundImage': '2.png',
      'hashTag': '#MOVEYOURMIND',
      'title': 'CONECTA',
      'content': 'Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.',
    },
    {
      'backgroundImage': '3.png',
      'hashTag': '#MOVEYOURMIND',
      'title': 'ENTRENA',
      'content': 'Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.',
    },
    {
      'backgroundImage': '4.png',
      'hashTag': '#MOVEYOURMIND',
      'title': 'ANALIZA',
      'content': 'Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.',
    }
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < pages.length; i++) {
      list.add(i == _currentPage ? const FIndicator(isActive: true) : const FIndicator(isActive: false));
    }
    return list;
  }
}
