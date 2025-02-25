import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:cs/Add_expense.dart';

class StudentAdmn extends StatefulWidget {
  const StudentAdmn({super.key});

  @override
  State<StudentAdmn> createState() => _StudentAdmnState();
}

class _StudentAdmnState extends State<StudentAdmn> {
  final CollectionReference Admission =
      FirebaseFirestore.instance.collection('Student_Admn');

  TextEditingController Name = TextEditingController();
  TextEditingController AdmnNo = TextEditingController();
  TextEditingController Dept = TextEditingController();
  TextEditingController Year = TextEditingController();
  TextEditingController Course = TextEditingController();
  TextEditingController Parent_Name = TextEditingController();
  TextEditingController Parent_mob = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Student_mob = TextEditingController();
  // Uint8List? img;

  void addStudent() async {
    final data = {
      'Name': Name.text,
      'AdmnNo': AdmnNo.text,
      'Dept': Dept.text,
      'Year': Year.text,
      'course': selectCourse,
      'Parent_Name': Parent_Name.text,
      'Parent_mob': Parent_mob.text,
      'Email': Email.text,
      'Student_mob': Student_mob.text,
    };
//     final storageRef = FirebaseStorage.instance.ref();

// // Create a reference to "mountains.jpg"
//     final photoRef = storageRef.child("farm/" + Name.text + "/farm.jpg");
//     if (img != null) {
//       await photoRef.putData(img!);
//       var url = await photoRef.getDownloadURL();
//       data["url"] = url;
//     }

    Admission.add(data);
  }

  // };

  // TextEditingController Name=TextEditingController();
  // TextEditingController Breeds=TetEditingController();

  final course = ['UG 1st', 'UG 2nd', 'UG 3rd', 'PG 1st', 'PG 2nd', 'Phd'];
  String? selectCourse;

  // final feed = [
  //   'Scheduled feeding',
  //   'Limit feeding',
  //   'Full feeding',
  //   'Free-access feeding',
  //   'Supplemental feeding'
  // ];
  // String? selectFeed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Appbar
      appBar: AppBar(
        title: Text("Student Admission"),
        foregroundColor: Color.fromARGB(255, 255, 255, 236),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 33, 54, 68),
      ),

      body: ListView(
        children: [
          Column(
            children: [
              // no:1
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 25),
                    child: Text(
                      'Student Name : ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 77, 8, 8),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  //space bw text and textfield
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 80, left: 25, right: 25),
                    child: TextField(
                      controller: Name,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Name Here',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.amberAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  )),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 15, left: 18),
                    child: Text(
                      'Admission number                 ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: TextField(
                      controller: AdmnNo,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter the Admission No',
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  )),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 15, left: 18),
                    child: Text(
                      'Department                  ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: TextField(
                      controller: Dept,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter the Department',
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  )),
                ],
              ),

              // Row(
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(top: 20, right: 15, left: 18),
              //       child: Text(
              //         'Breeds                  ',
              //         style: TextStyle(
              //             fontSize: 14,
              //             color: Color.fromARGB(255, 77, 8, 8),
              //             fontWeight: FontWeight.bold,
              //             fontStyle: FontStyle.normal),
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Expanded(
              //         child: Padding(
              //       padding:
              //           const EdgeInsets.only(top: 20, left: 25, right: 25),
              //       child: TextField(
              //         controller: Breeds,
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(),
              //           labelText: 'Enter the Breed',
              //           labelStyle: TextStyle(
              //             fontSize: 14,
              //             color: Colors.black,
              //           ),
              //           focusedBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(20),
              //           ),
              //         ),
              //         keyboardType: TextInputType.text,
              //       ),
              //     )),
              //   ],
              // ),

//no:2
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 25),
                    child: Text(
                      'Course',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 77, 8, 8),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 25, left: 50),
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            label: Text(
                              'Select Course',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 18),
                            ),
                          ),
                          items: course
                              .map((e) => DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            selectCourse = val as String?;
                          }),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 25),
                    child: Text(
                      'Year              ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: TextField(
                        controller: Year,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Year Of Admission',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ),
//no:3 Breeds
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 15, left: 18),
                    child: Text(
                      'Parent name                 ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: TextField(
                      controller: Parent_Name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Parent name',
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  )),
                ],
              ),

              //no:4
              // Row(
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(top: 20, right: 20, left: 25),
              //       child: Text(
              //         'Method Of Feeding :',
              //         style: TextStyle(
              //           fontSize: 14,
              //           color: Color.fromARGB(255, 77, 8, 8),
              //           fontWeight: FontWeight.bold,
              //           fontStyle: FontStyle.normal,
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Expanded(
              //       child: Padding(
              //         padding:
              //             const EdgeInsets.only(top: 20, left: 10, right: 25),
              //         child: DropdownButtonFormField(
              //             items: feed
              //                 .map((e) => DropdownMenuItem(
              //                       child: Text(e),
              //                       value: e,
              //                     ))
              //                 .toList(),
              //             onChanged: (val) {
              //               selectFeed = val as String?;
              //             }),
              //       ),
              //     ),
              //   ],
              // ),

              //no:5
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 25),
                    child: Text(
                      'Parent phone                ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: TextField(
                        controller: Parent_mob,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone number',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 25),
                    child: Text(
                      'Email                ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: TextField(
                        controller: Email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 25),
                    child: Text(
                      'Student Phone                ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 77, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: TextField(
                        controller: Student_mob,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ), //upload an image //upload an image
              //upload an image
              // if (img != null)
              //   Image.memory(
              //     img!,
              //     width: 100,
              //     height: 100,
              //   ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                     style: ButtonStyle(
//                         padding: MaterialStateProperty.all(EdgeInsets.only(
//                             left: 30, right: 30, top: 10, bottom: 10)),
//                         foregroundColor:
//                             MaterialStateProperty.all(Colors.white),
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.green),
//                         textStyle: MaterialStateProperty.all(TextStyle(
//                           fontSize: 20,
//                         ))),
//                     // onLongPress: () {},
//                     onPressed: ()
//                         //AddPet();
//                         async {
//                       final ImagePicker picker = ImagePicker();
// // Pick an image.
//                       img = await (await picker.pickImage(
//                               source: ImageSource.gallery))
//                           ?.readAsBytes();
//                       setState(() {});
//                     },
//                     child: Text("Upload image")),
//               ),

              //Button
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                     style: ButtonStyle(
//                         padding: MaterialStateProperty.all(EdgeInsets.only(
//                             left: 30, right: 30, top: 10, bottom: 10)),
//                         foregroundColor:
//                             MaterialStateProperty.all(Colors.white),
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.green),
//                         textStyle: MaterialStateProperty.all(TextStyle(
//                           fontSize: 20,
//                         ))),
//                     // onLongPress: () {},
//                     onPressed: () {
//                       addFarm();
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         content: Text("Added Successfully"),
//                       ));
//                     },
//                     child: Text("Add")),
//               ),

// //no:6 blahh
//               Text('Team Pet Care MOC😉.'),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: ElevatedButton(
                  onPressed: () {
                    addStudent();
                    Navigator.pop(context);

                    // submit();
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 243, 243, 195)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 33, 54, 68)),
                    minimumSize: MaterialStateProperty.all(
                      Size(100, 40),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
