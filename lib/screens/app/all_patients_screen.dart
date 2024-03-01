import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patient_management/routes.dart';
import 'package:patient_management/widgets/custom_appbar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AllPatientsScreen extends StatelessWidget {
  const AllPatientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        'All Patients',
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Get.toNamed(GetRoutes.addPatient);
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x30000000),
                      blurRadius: 7.90,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  hintText: 'Search. . .'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [1, 2, 3, 4, 5]
                      .map((e) => Column(
                            children: [
                              Slidable(
                                child: PatientCard(),
                                endActionPane: ActionPane(
                                  openThreshold: 0.4,
                                  extentRatio: 0.7,
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (a) {
                                        // changeStatus("cancelled", context,
                                        //     controller, book.id!);
                                      },
                                      backgroundColor: const Color(0xFFff0000),
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      label: 'Delete',
                                      flex: 1,
                                    ),
                                    SlidableAction(
                                      onPressed: (a) {
                                        // changeStatus("cancelled", context,
                                        //     controller, book.id!);
                                      },
                                      backgroundColor:
                                          Color.fromARGB(255, 240, 168, 12),
                                      foregroundColor: Colors.black,
                                      icon: Icons.edit,
                                      label: 'Edit',
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PatientCard extends StatelessWidget {
  const PatientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(GetRoutes.singlePatient);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: const [
            BoxShadow(
              color: Color(0x30000000),
              blurRadius: 7.90,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://ui-avatars.com/api/?name=Sarose+Kunwar',
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 8,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saroj Kunwar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Age: 22 yrs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Address: 23rd Maven street, Toronto',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Ward: GENERAL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
