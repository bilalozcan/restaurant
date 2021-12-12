import 'package:flutter/material.dart';
import 'package:restaurant/view/splash/splash_view_model.dart';
import 'package:restaurant/widgets/custom_progress_indicator.dart';
import 'package:restaurant/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onModelReady: (viewModel) => viewModel.initialize(context),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomText('Restoran',
                    fontSize: 24, fontWeight: FontWeight.bold),
                CustomProgressIndicator()
              ],
            ),
          );
        });
  }
}
