import 'package:advisor/application/pages/advice/bloc/bloc/advisor_bloc.dart';
import 'package:advisor/application/pages/advice/widgets/advice_field.dart';
import 'package:advisor/application/pages/advice/widgets/custom_button.dart';
import 'package:advisor/application/pages/advice/widgets/error_message.dart';
import 'package:advisor/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdvisorBloc(),
      child: AdvicePage(),
    );
  }
}

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
                          child: BlocBuilder<AdvisorBloc, AdvisorState>(
                            builder: (context, state) {
                              if (state is AdvisorLoadingState) {
                                return CircularProgressIndicator.adaptive();
                              } else if (state is AdvisorLoadedState) {
                                return AdviceField(advice: state.advice);
                              } else if (state is AdvisorErrorState) {
                                return ErrorMessage(
                                  errorMessage: state.errorMessage,
                                );
                              }
                              return Text('Your advice is waiting for you');
                            },
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
