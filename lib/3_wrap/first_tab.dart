import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/3_wrap/wrap.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(10, (i) {
                  return Box();
                }),
              ),
              SizedBox(height: 40),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: List.generate(10, (i) {
                  return Box();
                }),
              ),
              SizedBox(height: 40),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 10,
                children: List.generate(10, (i) {
                  return Box();
                }),
              ),
              SizedBox(height: 40),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.end,
                children: List.generate(10, (i) {
                  return Box();
                }),
              ),
              SizedBox(height: 40),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                children: List.generate(10, (i) {
                  return Box();
                }),
              ),
              SizedBox(height: 40),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 10,
                verticalDirection: VerticalDirection.up,
                children: List.generate(17, (i) {
                  return Box();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
