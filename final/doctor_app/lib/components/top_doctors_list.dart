import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/components/top_doctors_card.dart';
import 'package:flutter_doctor_app/models/doctor.dart';

class TopDoctorsList extends StatelessWidget {
  const TopDoctorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/doctor_details', arguments: Doctor(
              doctorName: topDoctors[index].doctorName,
              doctorDescription: topDoctors[index].doctorDescription,
              doctorHospital: topDoctors[index].doctorHospital,
              doctorIsOpen: topDoctors[index].doctorIsOpen,
              doctorNumberOfPatient: topDoctors[index].doctorNumberOfPatient,
              doctorPicture: topDoctors[index].doctorPicture,
              doctorRating: topDoctors[index].doctorRating,
              doctorSpecialty: topDoctors[index].doctorSpecialty,
              doctorYearOfExperience: topDoctors[index].doctorYearOfExperience,
            ),);
          },
          child: TopDoctorsCard(
            doctor: topDoctors[index],
          ),
        );
      },
    );
  }
}
