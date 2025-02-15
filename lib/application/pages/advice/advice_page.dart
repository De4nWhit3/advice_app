import 'package:advisor/application/pages/advice/widgets/custom_button.dart';
import 'package:advisor/application/pages/advice/widgets/error_message.dart';
import 'package:advisor/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advisor App'),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged:
                (value) =>
                    Provider.of<ThemeService>(
                      context,
                      listen: false,
                    ).toggleDarkMode(),
          ),
        ],
      ),
      body: AdaptiveLayout(
        body: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.smallAndUp: SlotLayout.from(
              key: Key('body-key'),
              builder: (context) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          // child: Text('Your advice is waiting for you'),
                          // child: CircularProgressIndicator.adaptive(),
                          // child: AdviceField(advice: 'Your day will be great!'),
                          child: ErrorMessage(
                            errorMessage:
                                'This is some error. Brrrl brrrl brrrl!',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: Center(child: CustomButton()),
                      ),
                    ],
                  ),
                );
              },
            ),
          },
        ),
      ),
    );
  }
}
