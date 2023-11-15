import 'dart:io';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:voyself_admin_panel/constants/colors.dart';

class DialogueBox extends StatefulWidget {
  final String? imagePath;
  const DialogueBox({super.key, this.imagePath});

  @override
  State<DialogueBox> createState() => _DialogueBoxState();
}

class _DialogueBoxState extends State<DialogueBox> {
  XFile? _pickedImage;

  Future<void> pickImageFromFiles() async {
    final ImagePicker _picker = ImagePicker();
    XFile? pickedFile;

    try {
      pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      // Handle the exception if image picking fails.
      print("Image picking failed: $e");
    }

    if (pickedFile != null) {
      setState(() {
        _pickedImage = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;

    return Dialog(
      // elevation: 0,
      child: Container(
        height: sw > 550 ? (650) : 620,
        width: sw > 550 ? (450) : 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 2, vertical: h * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Location",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textBlack),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              const Divider(),
              const Text("Place Name"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: w * 1, horizontal: w * 1),
                    hintText: "Enter place name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 10),
              const Text("Country"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter place's country name",
                    contentPadding: EdgeInsets.symmetric(
                        vertical: w * 1, horizontal: w * 1),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Longitude"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter location's longitude value",
                    contentPadding: EdgeInsets.symmetric(
                        vertical: w * 1, horizontal: w * 1),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Latitude"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter location's latitude value",
                    contentPadding: EdgeInsets.symmetric(
                        vertical: w * 1, horizontal: w * 1),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: h * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 100,
                    // color: Colors.red,
                    child: Center(
                      child: _pickedImage != null
                          ? Image.file(File(_pickedImage!.path))
                          : const Text("No Image Selected"),
                    ),
                  ),
                  SizedBox(
                    width: w * 2,
                  ),
                  InkWell(
                    onTap: () {
                      pickImageFromFiles;
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.liteBlue,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Upload Image"),
                          SizedBox(width: 10),
                          Icon(FeatherIcons.upload)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 4,
              ),
              Center(
                child: SizedBox(
                  width: 120,
                  child: MaterialButton(
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                    color: AppColors.primaryColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
