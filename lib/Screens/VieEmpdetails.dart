import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/Widgets/Textvew.dart';

import '../Model/EmpModels.dart';
import '../values/Appconstants.dart';

class ViewWmpdetails  extends StatelessWidget{
  Employee employee;
  ViewWmpdetails({required this.employee});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Details")),),
      body: Center(
        child: Column(

          children: [

            CircleAvatar(radius: 30,backgroundImage: NetworkImage(AppConstants.Imageurl)),

            TextviewWidget(textdata: employee.id.toString()),
            TextviewWidget(textdata: employee.employeeName),
            TextviewWidget(textdata: (employee.employeeSalary.toString())),
            TextviewWidget(textdata: employee.employeeAge.toString()),


          ],
        ),
      ),
    );
  }

}