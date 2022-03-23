import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _key,
          child: Column(
            children: [
              // TextFormField(
              //   initialValue: "Username",
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "User Name cannot be empty";
              //     } else if (value.length <= 5) {
              //       return "Username should be greater than 5";
              //     } else {
              //       return null;
              //     }
              //   },

              // ),
            
            Text("Survey Form",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),

            TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter Your First Name',  
              labelText: 'Fname',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "First Name cannot be empty";
                  } else if (value.length <= 1) {
                    return "First name should be greater than 1";
                  } else {
                    return null;
                  }
                },              
          ),
            TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter Your Middle Name',  
              labelText: 'Mname',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "Middle Name cannot be empty";
                  } else if (value.length <= 1) {
                    return "Middle Name should be greater than 1";
                  } else {
                    return null;
                  }
                },              
          ),
            TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter Your Last Name',  
              labelText: 'Lname',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "Last Name cannot be empty";
                  } else if (value.length <= 1) {
                    return "Last Name should be greater than 1";
                  } else {
                    return null;
                  }
                },              
          ),

            TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.male),  
              hintText: 'Gender',  
              labelText: 'Gender',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "Gender cannot be empty";
                  } else if (value.length <= 1) {
                    return "Gender should be greater than 1";
                  } else {
                    return null;
                  }
                },              
          ),

          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter Your Mobile Number',  
              labelText: 'Mobile No.',  
            ),
            validator: (value) {
                  if (value!.isEmpty) {
                    return "Mobile Number cannot empty";
                  } else if (value.length > 10 || value.length < 10) {
                    return "Mobile Number must contain 10 digits";
                  } else {
                    return null;
                  }
                },    
          ),  



          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'DD/MM/YYYY',  
            labelText: 'Dob',  
            ),
            validator: (value) {
                  if (value!.isEmpty) {
                    return "Date field cannot be empty";
                  }  
                },    
           ),

          TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.school),  
              hintText: 'College Name',  
              labelText: 'College Name',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "College Name cannot be empty";
                  } else if (value.length <= 1) {
                    return "College Name should be greater than 1";
                  } else {
                    return null;
                  }
                },              
          ),

          TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.school),  
              hintText: 'Degree',  
              labelText: 'Degree',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "Degree cannot be empty";
                  } else if (value.length <= 1) {
                    return "Degree should be greater than 1";
                  } else {
                    return null;
                  }
                },              
          ),
             
          //  Container(  
          //     padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
          //     child:  const RaisedButton(  
          //       child: const Text('Submit'),  
          //       onPressed: null,
          //     )),  
              
              FlatButton(
                onPressed: () => {
                  if (_key.currentState!.validate())
                    {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Your Information is Successfully Submitted!!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Done'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                    },
                },
                child: const Text('Submit'),
                color: Colors.green,
                textColor: Colors.white,
              ),







            ],
          ),
        ),
      ),
    );
  }
}
