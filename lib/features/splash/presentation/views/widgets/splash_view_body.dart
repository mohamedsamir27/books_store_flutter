// import 'package:bookly_test/constants.dart';
import 'package:bookly_test/core/utils/app_router.dart';
import 'package:bookly_test/core/utils/assets.dart';
// import 'package:bookly_test/features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_core/get_core.dart';
// import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<Offset> _offset;
  late Animation<double> _opacity;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _controller=AnimationController(vsync: this,
    duration: Duration(seconds: 2),
    );

    _opacity=Tween<double>(
      begin: 0, 
      end: 1,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut
    )
    );

    _offset=Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOut)
      );

      _scale=Tween<double>(
        begin: 0.7,
        end: 1.0,
      ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOut)
      );

      _controller.forward();

      Future.delayed(Duration(seconds: 3), (){
        // Get.to(
        //   ()=> HomeView(),
        //   transition: Transition.fade, duration: kTransitionDuration
        // );
        GoRouter.of(context).push(AppRouter.kHomeView);
      }
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeTransition(
          opacity: _opacity,
          child: ScaleTransition(
            scale: _scale,
            child: Image.asset(AssetData.logo),
        ),
        ),
        const SizedBox(
          height: 5,
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context,_) {
            return FadeTransition(
              opacity: _opacity,
              child: SlideTransition(
                position: _offset,
                child: Text("read free books",
                textAlign: TextAlign.center,
                ),
                ),
              );
          }
        ),
      ],
    );
  }
}