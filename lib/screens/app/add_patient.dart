import 'package:flutter/material.dart';
import 'package:patient_management/widgets/custom_appbar.dart';
import 'package:patient_management/widgets/custom_button.dart';

class AddPatient extends StatelessWidget {
  const AddPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('Add Patient'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Address'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'DOB'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Phone'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Sex'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Ward'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Patient Description'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Patient Description'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Description'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(onPressed: () {}, label: 'Image'),
                ],
              ),
              const SizedBox(height: 30),
              CustomButton(onPressed: () {}, label: 'Add Patient'),
            ],
          ),
        ),
      ),
    );
  }
}
