import 'package:flutter/material.dart';
import 'package:lms/goldplan.dart';
import 'package:lms/mainhouse.dart';
import 'package:lms/primegold.dart';
import 'package:lms/primeplatinum.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Upgrade extends StatefulWidget {
  const Upgrade({super.key});

  @override
  State<Upgrade> createState() => _UpgradeState();
}

class _UpgradeState extends State<Upgrade> {
  int upgradIndex =0;

  List pages = [Gold(), PrimeGold(), PrimePlatinum()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xffEC0C0D),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHouse()),
                );
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            title: Text(
              'Special offer',
              style: TextStyle(
                fontFamily: 'CustomSans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border(bottom: BorderSide(color: Colors.grey,width: 0.5))
                ),
                child: ToggleSwitch(
                  activeBgColor: [const Color(0xffEC0C0D)],
                  inactiveBgColor: Colors.white,
                  cornerRadius: 60,
                  minWidth: 110,
                  minHeight: 50,
                  radiusStyle: true,
                  customWidgets: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Gold',style: TextStyle(color: upgradIndex == 0 ? Colors.white :const Color.fromARGB(255, 105, 105, 105)),),
                        Text('3 months',style: TextStyle(color: upgradIndex == 0 ? Colors.white :const Color.fromARGB(255, 105, 105, 105)),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Prime Gold',style: TextStyle(color: upgradIndex == 1 ? Colors.white : const Color.fromARGB(255, 105, 105, 105)),),
                        Text('3 months',style: TextStyle(color: upgradIndex == 1 ? Colors.white : const Color.fromARGB(255, 105, 105, 105)),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Prime Platinum',style: TextStyle(color: upgradIndex == 2 ? Colors.white : const Color.fromARGB(255, 105, 105, 105)),),
                        Text('3 months',style: TextStyle(color: upgradIndex == 2 ? Colors.white : const Color.fromARGB(255, 105, 105, 105)),),
                      ],
                    ),
                  ],
                  totalSwitches: 3,
                  initialLabelIndex: upgradIndex,
                  onToggle: (index){
                    setState(() {
                      upgradIndex = index!;
                    });
                  },
                ),
              ),
            ),
            Expanded(child: pages[upgradIndex]),
          ],
        ),
      ),
    );
  }
}
