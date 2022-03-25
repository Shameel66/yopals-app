import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yopals/constants.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  final _formKey = GlobalKey();

  List<String> gender = [
    'Male',
    'Female',
    'Other'
  ];

  File imageFile;
  final picker = ImagePicker();

  pickImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery,
        imageQuality: 100,
        maxHeight: 300,
        maxWidth: 300);

      if (pickedFile != null) {
        setState(() {
          imageFile = File(pickedFile.path);
        });
      } else {
        debugPrint('No image selected');
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [

            Center(
              child: SizedBox(
                width: 200.0,
                height: 150.0,
                child: Image(
                  image: AssetImage(
                      'assets/images/logo.png'
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Center(
              child: Text(
                'Create an account',
                style: TextStyles.blackBigHeadingTextStyle,
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            GestureDetector(
              onTap: (){
                pickImageFromGallery();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: imageFile != null
                          ? Colors.transparent
                          : Color(0xffFD2225),
                      radius: 50.0,
                      child: imageFile != null ?
                      ClipOval(child: Image.file(imageFile, fit: BoxFit.fill,
                        width: 100.0,
                        height: 100.0,)) :
                      Text('No Picture',
                        style: TextStyle(color: Colors.white),)
                  ),

                  SizedBox(
                    width: 5.0,
                  ),

                  Text(
                    'Click to add picture',
                    style: TextStyles.black16PtTextStyle,
                  )

                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                      primary: Colors.black
                  ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nameController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.person_outline),
                      ),
                      suffixIconColor: Colors.grey,
                      filled: false,
                      hintStyle: TextStyles.hintNormalTextStyle,
                      labelStyle: TextStyles.blackNormalTextStyle,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                      primary: Colors.black
                  ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: emailController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.email_outlined),
                      ),
                      suffixIconColor: Colors.grey,
                      filled: false,
                      hintStyle: TextStyles.hintNormalTextStyle,
                      labelStyle: TextStyles.blackNormalTextStyle,
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                      primary: Colors.black
                  ),
                ),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      filled: false,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.lock_outline_rounded),
                      ),
                      suffixIconColor: Colors.grey,
                      hintStyle: TextStyles.hintNormalTextStyle,
                      labelStyle: TextStyles.blackNormalTextStyle,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                      primary: Colors.black
                  ),
                ),
                child: TextFormField(
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Enter your password again',
                      filled: false,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.lock_outline_rounded),
                      ),
                      suffixIconColor: Colors.grey,
                      hintStyle: TextStyles.hintNormalTextStyle,
                      labelStyle: TextStyles.blackNormalTextStyle,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Theme(
                data: ThemeData(
                  colorScheme: ThemeData().colorScheme.copyWith(
                      primary: Colors.black
                  ),
                ),
                child: TextFormField(
                  controller: cityController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      border: OutlineInputBorder(),
                      labelText: 'City',
                      hintText: 'Enter your city',
                      filled: false,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.location_city_rounded),
                      ),
                      suffixIconColor: Colors.grey,
                      hintStyle: TextStyles.hintNormalTextStyle,
                      labelStyle: TextStyles.blackNormalTextStyle,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      //Add more decoration as you want here
                      //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                    ),
                    isExpanded: true,
                    offset: Offset(0.0, 50.0),
                    hint: Text(
                      'Gender',
                      style: TextStyles.hintNormalTextStyle,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                    iconSize: 30,
                    buttonHeight: 48,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10, top: 2.0),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    items: gender
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyles.blackNormalTextStyle,
                          ),
                        ))
                        .toList(),
                    onChanged: (value) {
                      genderController.text = value;
                    },
                    onSaved: (value) {
                      genderController.text = value.toString();
                    },
                  ),
                ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Color(0xffFD2225),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      child: Text(
                          "Create Account",
                          style: TextStyles.whiteBigWeightTextStyle
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith((states) => Colors.red.shade700),
                      ),
                      onPressed: (){},
                    )
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Already on Yopals?",
                    style: TextStyles.black16PtTextStyle),

                SizedBox(
                  width: 5.0,
                ),

                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Text(
                      "Sign in",
                      style: TextStyles.redBigWeight18PtTextStyle
                  ),
                )
              ],
            ),

            SizedBox(
              height: 15.0,
            ),

          ],
        ),
      ),
    );
  }
}
