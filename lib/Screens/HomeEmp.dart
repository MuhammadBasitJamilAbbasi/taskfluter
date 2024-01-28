import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/Apis/Apiservice.dart';
import 'package:testflutter/Controllers/Controllers.dart';
import 'package:testflutter/Screens/VieEmpdetails.dart';
import 'package:testflutter/values/Appconstants.dart';

class HomeEmp extends  StatelessWidget{
  var controller =Get.put(MVVM());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Employees')),
      ),
      body: Obx(() {
        if (controller.employees.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.employees.length,
            itemBuilder: (context, index) {
              final employee = controller.employees[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    CircleAvatar(radius: 30,backgroundImage: NetworkImage(AppConstants.Imageurl)),

                    Text(employee.employeeName),
                    ElevatedButton(onPressed: (){
                      Get.to(ViewWmpdetails(employee: employee,));
                    }, child: Text("Details"))
                  ],
                ),
              );
            },
          );
        }
      }),
    );
  }
}