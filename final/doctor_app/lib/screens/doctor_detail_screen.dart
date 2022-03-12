import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/constants.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Doctor;

    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'assets/images/${args.doctorPicture}',
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: kGreyColor600,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/${args.doctorPicture}',
                    ),
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: Svg('assets/svg/icon-back.svg'),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: Svg('assets/svg/icon-bookmark.svg'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Hero(
                  tag: args.doctorName,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      args.doctorName,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${args.doctorSpecialty} • ${args.doctorHospital} ',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '${args.doctorName} • ${args.doctorDescription} ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kGreyColor700,
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Spacer(),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Experience',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: kBlackColor900,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                args.doctorYearOfExperience,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      color: kBlueColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'yr',
                                style: Theme.of(context).textTheme.headline5,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: kGreyColor400,
                      ),
                      Column(
                        children: [
                          Text(
                            'Patient',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: kBlackColor900,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                args.doctorNumberOfPatient,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      color: kBlueColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'ps',
                                style: Theme.of(context).textTheme.headline5,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: kGreyColor400,
                      ),
                      Column(
                        children: [
                          Text(
                            'Rating',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: kBlackColor900,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                args.doctorRating,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      color: kBlueColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kBlueColor,
                        image: const DecorationImage(
                          image: Svg(
                            'assets/svg/icon-chat.svg',
                            size: Size(
                              36,
                              36,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width - 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kGreenColor,
                      ),
                      child: Center(
                        child: Text(
                          'Make an Appoinment',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
