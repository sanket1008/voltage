import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/common/button.dart';
import 'package:voltage/common/dropdown.dart';
import 'package:voltage/common/inputbox.dart';
import 'package:voltage/ui/surveyscreen.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  late TextEditingController _nameController,
      _fatherNameController,
      _mobileNumberController,
      _emailIdController,
      _ageController,
      _qualificationController,
      _currentJobController,
      _computerSkillsController,
      _specialOccupationController,
      _businessExperienceController,
      _agriCultureExperienceController,
      _marketingExperienceController,
      _addressController,
      _stateController,
      _districtController,
      _villageNameController,
      _talukController;
  String stateDropDownValue = "State";

  @override
  void initState() {
    _nameController = TextEditingController();
    _fatherNameController = TextEditingController();
    _mobileNumberController = TextEditingController();
    _emailIdController = TextEditingController();
    _ageController = TextEditingController();
    _qualificationController = TextEditingController();
    _currentJobController = TextEditingController();
    _computerSkillsController = TextEditingController();
    _specialOccupationController = TextEditingController();
    _businessExperienceController = TextEditingController();
    _addressController = TextEditingController();
    _stateController = TextEditingController();
    _districtController = TextEditingController();
    _villageNameController = TextEditingController();
    _talukController = TextEditingController();
    _agriCultureExperienceController = TextEditingController();
    _marketingExperienceController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Profile",
          style: TextStyle(
            color: Color(0xFF108768),
            fontSize: 23.00,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              InputBox(
                controller: _nameController,
                enaled: true,
                readOnly: true,
                hintText: "Name",
                isPassword: false,
                header: const Text(
                  "Name",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is empty";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _fatherNameController,
                enaled: true,
                readOnly: true,
                hintText: "Father Name",
                isPassword: false,
                header: const Text(
                  "Father Name",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Father name is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _mobileNumberController,
                enaled: true,
                readOnly: true,
                hintText: "Mobile number",
                isPassword: false,
                header: const Text(
                  "Mobile number",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Mobile number is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _emailIdController,
                enaled: true,
                readOnly: true,
                hintText: "Email Id",
                isPassword: false,
                header: const Text(
                  "Email Id",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Id";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _ageController,
                enaled: true,
                readOnly: true,
                hintText: "Age",
                isPassword: false,
                header: const Text(
                  "Age",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Age is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _qualificationController,
                enaled: true,
                readOnly: true,
                hintText: "Qualification",
                isPassword: false,
                header: const Text(
                  "Qualification",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Qualification is Empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _currentJobController,
                enaled: true,
                readOnly: true,
                hintText: "Current job",
                isPassword: false,
                header: const Text(
                  "Current job",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Current job is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                maxLength: 250,
                maxLines: 2,
                minLines: 2,
                controller: _computerSkillsController,
                enaled: true,
                readOnly: true,
                hintText: "Computer skills",
                isPassword: false,
                header: const Text(
                  "Computer skills",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Computer skills is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                maxLength: 250,
                maxLines: 2,
                minLines: 2,
                controller: _specialOccupationController,
                enaled: true,
                readOnly: true,
                hintText: "Special Occupation",
                isPassword: false,
                header: const Text(
                  "Special Occupation",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Special Occupation is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                maxLength: 250,
                maxLines: 2,
                minLines: 2,
                controller: _businessExperienceController,
                enaled: true,
                readOnly: true,
                hintText: "Business Experience",
                isPassword: false,
                header: const Text(
                  "Business Experience",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Business Experience is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                maxLength: 250,
                maxLines: 2,
                minLines: 2,
                controller: _agriCultureExperienceController,
                enaled: true,
                readOnly: true,
                hintText: "Agriculture Experience",
                isPassword: false,
                header: const Text(
                  "Agriculture Experience",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Agriculture Experience is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                maxLength: 250,
                maxLines: 2,
                minLines: 2,
                controller: _marketingExperienceController,
                enaled: true,
                readOnly: true,
                hintText: "Market Experience",
                isPassword: false,
                header: const Text(
                  "Market Experience",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Market Experience is empty";
                  } else {}
                  return null;
                },
              ),
              SizedBox(height: 10,),
              InputBox(
                controller: _addressController,
                enaled: true,
                readOnly: true,
                hintText: "Address",
                isPassword: false,
                header: const Text(
                  "Address",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Address Experience is empty";
                  } else {}
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CommonDropDown(
                  header: const Text(
                    "state",
                    style: TextStyle(fontSize: 17),
                  ),
                  stateDropDownValue: list.first,
                  item: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      stateDropDownValue = value!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              CommonDropDown(
                  header: const Text(
                    "District",
                    style: TextStyle(fontSize: 16),
                  ),
                  stateDropDownValue: list.first,
                  item: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      stateDropDownValue = value!;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              InputBox(
                controller: _addressController,
                enaled: true,
                readOnly: true,
                hintText: "Village Name",
                isPassword: false,
                header: const Text(
                  "Taluk",
                  style: TextStyle(fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Address Experience is empty";
                  } else {}
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CommonDropDown(
                  header: const Text(
                    "Category",
                    style: TextStyle(fontSize: 16),
                  ),
                  stateDropDownValue: list.first,
                  item: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      stateDropDownValue = value!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              CommonDropDown(
                  header: const Text(
                    "Sub Category",
                    style: TextStyle(fontSize: 16),
                  ),
                  stateDropDownValue: list.first,
                  item: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      stateDropDownValue = value!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              CommonButton(
                  text: "Save",
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return const SurveyScreen();
                        }));
                  },
                  textColor: Colors.white,
                  backGroundColor: const Color(0xFF108768)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
