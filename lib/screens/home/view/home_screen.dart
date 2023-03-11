import 'package:flutter/material.dart';
import 'package:outcaster2/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtdob = TextEditingController();
  TextEditingController txtgender = TextEditingController();
  TextEditingController txtlocation = TextEditingController();
  TextEditingController txtnationality = TextEditingController();
  TextEditingController txtre = TextEditingController();
  TextEditingController txtlang = TextEditingController();
  TextEditingController txtbio = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Text("Edit Your Profile"),
          backgroundColor: Colors.orange.shade700,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Consumer<home_provider>(
                builder: (context, value, child) => Stepper(
                  steps: [
                    Step(
                        title: Text("Profile Picture",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900)),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Arpita Solanki")
                              ],
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Name",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtname,
                              decoration: InputDecoration(
                                hintText: "Name: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                    ),
                    Step(title: Text("Phone",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtphone,
                              decoration: InputDecoration(
                                hintText: "Phone: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Email",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtemail,
                              decoration: InputDecoration(
                                hintText: "Email: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("DOB",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtdob,
                              decoration: InputDecoration(
                                hintText: "Date Of Birth: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Gender",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtgender,
                              decoration: InputDecoration(
                                hintText: "Gender: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Current Location",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtlocation,
                              decoration: InputDecoration(
                                hintText: "Location: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Nationality",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtnationality,
                              decoration: InputDecoration(
                                hintText: "Nationality: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Religion",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtre,
                              decoration: InputDecoration(
                                hintText: "Religion: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Languages",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtlang,
                              decoration: InputDecoration(
                                hintText: "Languages: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                    Step(title: Text("Biography",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange.shade900 )),
                        content: Column(
                          children: [
                            TextField(
                              controller: txtbio,
                              decoration: InputDecoration(
                                hintText: "Biography: ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                  currentStep: Provider.of<home_provider>(context,listen: false).i,
                  onStepContinue: () {
                    if(Provider.of<home_provider>(context,listen: false).i < 10)
                      {
                        Provider.of<home_provider>(context,listen: false).countinue();
                      }
                  },
                  onStepCancel: () {
                    if(Provider.of<home_provider>(context,listen: false).i > 0)
                    {
                      Provider.of<home_provider>(context,listen: false).back();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
