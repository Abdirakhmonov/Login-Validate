import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageMain> {
  final ageController = TextEditingController();

  num? age = 0;
  String? ageError;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: ageController,
              decoration: InputDecoration(
                errorText: ageError,
                  hintText: "Yoshingizni kiriting...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {

                setState(() {

                  age = int.tryParse(ageController.text.trim());
                  if(age! > 100){
                    ageError = "Qarib ketibsiz";
                  }
                  ageController.clear();
                });
              },
              child: Text("Kiritish"),
            ),
            age == null ? Text("Xatolik mavjud Raqam kiriting!!!") : age! > 100 ? Text(ageError!) : Text("Siz 100 yoshga kirishingizga ${100 - age!} yil bor.")
          ],
        ),
      ),
    );
  }
}
