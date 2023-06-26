import 'package:flutter/material.dart';
import 'package:task/components/components.dart';
import 'package:task/constants/constants.dart';
import 'package:task/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    maxRadius: 26,
                    backgroundImage: AssetImage('assets/images/shirek.jpeg'),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.bar_chart_outlined,
                          size: 28,
                          color: AppColors.blackBlue,
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.email_outlined,
                          size: 28,
                          color: AppColors.blackBlue,
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.notifications_outlined,
                          size: 28,
                          color: AppColors.blackBlue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Card(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.search, size: 28),
                        title: TextFormField(
                          decoration: const InputDecoration(
                            hintText: AppText.countryName,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            CustomButton(
                              onPressed: () {},
                              text: AppText.sms,
                            ),
                            const SizedBox(width: 12),
                            CustomButton(
                              onPressed: () {},
                              text: AppText.mms,
                              select: true,
                            ),
                            const SizedBox(width: 12),
                            CustomButton(
                              onPressed: () {},
                              text: AppText.voice,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: DropDownButtonWidget(
                          hintText: AppText.dropDownText,
                          list: ['a', 'b'],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                            ),
                            const SizedBox(width: 14),
                            const Text(
                              AppText.cardText,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.cardTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CountryWidget(image: 'usa', text: AppText.usaStates),
              const SizedBox(height: 20),
              const Card(
                child: Column(
                  children: [
                    ListTileWidget(
                      phoneNumber: AppText.phoneNumberUsa,
                      name: AppText.name,
                    ),
                    ListTileWidget(
                      phoneNumber: AppText.phoneNumberUsa,
                      name: AppText.name,
                    ),
                    ListTileWidget(
                      phoneNumber: AppText.phoneNumberUsa,
                      name: AppText.name,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CountryWidget(image: 'gb', text: AppText.usaKingdom),
              const SizedBox(height: 20),
              const Card(
                child: Column(
                  children: [
                    ListTileWidget(
                      phoneNumber: AppText.phoneNumberGb1,
                      name: AppText.name,
                    ),
                    ListTileWidget(
                      phoneNumber: AppText.phoneNumberGb2,
                      name: AppText.name,
                    ),
                    ListTileWidget(
                      phoneNumber: AppText.phoneNumberGb3,
                      name: AppText.name,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
