import 'package:flutter/material.dart';

class Dmc extends StatefulWidget {
  const Dmc({Key? key}) : super(key: key);

  @override
  State<Dmc> createState() => _DmcState();
}

class _DmcState extends State<Dmc> {

  late int sub1,sub2,sub3,sub4,sub5;

  String? name;
  String? fatherName;
  String? classRoom;

  String totalMarks = 'Total = 500';
  String obtainMarks = 'Obtained Marks = ';
  String percentage = 'Percentage = ';
  String grade = 'Grade = ';

  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade600,
        title: const Text('D M C',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: 'Enter Student Name ',
                          ),
                          validator: (String? txt) {
                            name = txt;
                            return null;
                          }
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: 'Enter Father Name ',
                          ),
                            validator: (String? txt) {
                              fatherName = txt;
                              return null;
                            }

                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Class ',
                          ),
                            validator: (String? txt) {
                              classRoom = txt;
                              return null;
                            }

                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Subject 1 Marks ',
                          ),

                          validator: (String? txt){
                            if(txt == null || txt.isEmpty)
                              {
                                return 'Provide Subject 1 Marks';
                              }
                            sub1 = int.parse(txt);
                            return null;
                          }

                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Subject 2 Marks ',
                          ),
                            validator: (String? txt){
                              if(txt == null || txt.isEmpty)
                              {
                                return 'Provide Subject 2 Marks';
                              }
                              sub2 = int.parse(txt);
                              return null;
                            }


                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Subject 3 Marks ',
                          ),
                            validator: (String? txt){
                              if(txt == null || txt.isEmpty)
                              {
                                return 'Provide Subject 3 Marks';
                              }
                              sub3 = int.parse(txt);
                              return null;
                            }


                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Subject 4 Marks ',
                          ),
                            validator: (String? txt){
                              if(txt == null || txt.isEmpty)
                              {
                                return 'Provide Subject 4 Marks';
                              }
                              sub4 = int.parse(txt);
                              return null;
                            }


                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Enter Subject 5 Marks ',
                          ),
                            validator: (String? txt){
                              if(txt == null || txt.isEmpty)
                              {
                                return 'Provide Subject 5 Marks';
                              }
                              sub5 = int.parse(txt);
                              return null;
                            }
                        ),

                        Row(
                          children: [
                            Expanded(child:
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green.shade500),
                                onPressed: (){
                                  if(formKey.currentState!.validate()) {
                                    int obtnMarks = sub1+sub2+sub3+sub4+sub5;
                                    double percent = obtnMarks * 100 / 500;

                                    setState(() {
                                        obtainMarks = 'Obtained Marks = $obtnMarks';
                                        percentage = 'Percentage = $percent';

                                        if (percent >= 80) {
                                          grade = 'Grade = A';
                                        } else if (percent >= 70) {
                                          grade = 'Grade = B';
                                        } else if (percent >= 60) {
                                          grade = 'Grade = C';
                                        } else if (percent >= 50) {
                                          grade = 'Grade = D';
                                        } else if (percent >= 40) {
                                          grade = 'Grade = Fail';
                                        }
                                      });
                                    }
                                }, child: const Text('Calculate')),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(child:
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red),
                                onPressed: (){
                              formKey.currentState!.reset();
                              obtainMarks = '';
                              percentage = '';
                              grade = '';
                              },
                                child: const Text('C L E A R')),)
                          ],
                        ),

                        Text(totalMarks,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text(obtainMarks,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text(percentage,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text(grade,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ],
                    ),
            ),
        ),
      ),

    );
  }
}
