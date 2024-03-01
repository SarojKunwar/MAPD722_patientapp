import 'package:flutter/material.dart';
import 'package:patient_management/widgets/custom_appbar.dart';
import 'package:patient_management/widgets/custom_button.dart';

class AddPatientRecords extends StatelessWidget {
  const AddPatientRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('Add Patient Records'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Blood Pressure (mmHg)'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Respiratory Rate (X/min)'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Blood Oxygen Rate (X%)'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Heartbeat Rate (X / min)'),
              ),
              const SizedBox(height: 30),
              CustomButton(onPressed: () {}, label: 'Add Clinical Record'),
            ],
          ),
        ),
      ),
    );
  }
}
