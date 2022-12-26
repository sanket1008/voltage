import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/common/inputbox.dart';

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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Padding(
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
                  style: TextStyle(fontSize: 18),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is empty";
                  } else {}
                  return null;
                },
              ),
              InputBox(
                controller: _fatherNameController,
                enaled: true,
                readOnly: true,
                hintText: "Father Name",
                isPassword: false,
                header: const Text(
                  "Father Name",
                  style: TextStyle(fontSize: 18),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Father name is empty";
                  } else {}
                  return null;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
