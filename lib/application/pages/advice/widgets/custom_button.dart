import 'package:advisor/application/pages/advice/bloc/bloc/advisor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        Provider.of<AdvisorBloc>(
          context,
          listen: false,
        ).add(RequestAdviceEvent(param: 'some fake param'));
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Get Advice'),
          ),
        ),
      ),
    );
  }
}
