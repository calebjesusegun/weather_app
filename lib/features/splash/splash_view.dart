import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../core/util/app_string.dart';
import 'viewmodel/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onViewModelReady: (model) {},
      viewModelBuilder: () => SplashViewModel(),
      builder: (
        BuildContext context,
        SplashViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              AppString.splashScreen,
            ),
          ),
        );
      },
    );
  }
}
