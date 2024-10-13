import 'package:flutter/material.dart';
import 'package:pd_main/feeds.dart';
import 'package:pd_main/success.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 40, // Reduce the width for the leading widget
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Feeds()));
              },
              child:
                  const Icon(Icons.close, size: 30, color: Color(0xff260446))),
        ),
        title: const Text(
          'Create Article',
          style: TextStyle(
            color: Color(0xff260446),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false, // Ensures the title is aligned to the left
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.more_vert),
              color: const Color(0xff8B8B8B),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, // Adjust horizontal padding
              vertical: screenHeight * 0.02, // Adjust vertical padding
            ),
            child: Column(
              children: [
                // Image picker section
                Row(
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: _pickImage,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: const Color(0xffF4F4F4),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 231, 230, 230),
                                    width: 3)),
                            height:
                                screenHeight * 0.4, // Dynamically adjust height
                            width:
                                screenWidth * 0.9, // Dynamically adjust width
                            child: _selectedImage != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.file(
                                      _selectedImage!,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.15),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xffF4F4F4),
                                            ),
                                            height: screenHeight *
                                                0.08, // Adjust size
                                            width: screenHeight *
                                                0.08, // Adjust size
                                            child: Image.asset(
                                                'assets/images/photo.png'),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        const Text(
                                          "Add Article Cover Image",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff8B8B8B),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Row(
                  children: [
                    Text("Title",
                        style: TextStyle(
                          fontSize: 16, // Responsive font size
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height *
                            0.07, // Responsive height
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffF4F4F4),
                            contentPadding:
                                const EdgeInsets.only(left: 15, bottom: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Article Title",
                            hintStyle: TextStyle(
                              fontSize: 14, // Responsive hint text size
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff8B8B8B),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 14, // Responsive input text size
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff8B8B8B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),
                Row(
                  children: [
                    Text("Article",
                        style: TextStyle(
                          fontSize: 16, // Responsive font size
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),

                const SizedBox(height: 10),
                // Article content
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height *
                          0.8, // Responsive height
                      width: MediaQuery.of(context).size.width *
                          0.9, // Responsive width
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            // Toolbar with Icons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.format_align_left,
                                  color: Color(0xff8B8B8B),
                                  size: 25, // Responsive icon size
                                ),
                                const SizedBox(width: 8),
                                Icon(Icons.format_align_center,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.format_align_right,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.format_align_justify,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.format_underlined,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.format_italic,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.format_size,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.palette_outlined,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.add_link,
                                    color: Color(0xff8B8B8B), size: 25),
                                const SizedBox(width: 8),
                                Icon(Icons.add_photo_alternate_outlined,
                                    color: Color(0xff8B8B8B), size: 25),
                              ],
                            ),

                            const SizedBox(height: 5),
                            // Separator Line
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color(0xff8B8B8B),
                                  ),
                                  height: 2,
                                  width: MediaQuery.of(context).size.width *
                                      0.9, // Responsive width
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            // Text Box (multi-line input)
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: TextField(
                                  maxLines:
                                      null, // Allows the text field to expand vertically
                                  expands:
                                      true, // Makes the text field fill available space
                                  textAlignVertical: TextAlignVertical
                                      .top, // Aligns the hint to the top
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xffF4F4F4),
                                    hintText: "Write Your Article here!",
                                    hintStyle: TextStyle(
                                      fontSize: 14, // Responsive hint text size
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff8B8B8B),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          BorderSide.none, // No visible border
                                    ),
                                    contentPadding: const EdgeInsets.all(
                                        15), // Optional padding adjustment
                                  ),
                                  style: TextStyle(
                                    fontSize: 14, // Responsive input text size
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff8B8B8B),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
/////////////////////////
                SizedBox(
                    height: screenHeight * 0.03), // 5% of the screen height
                Row(
                  children: [
                    Text(
                      "Select Topics",
                      style: TextStyle(
                        fontSize: 16, // 4% of the screen width
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: screenHeight * 0.06, // 7% of the screen height
                      width: screenWidth * 0.9, // 90% of the screen width
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              "Select Topics",
                              style: TextStyle(
                                fontSize:
                                    14, // You may want to change this to be responsive as well
                                fontWeight: FontWeight.w600,
                                color: Color(0xff8B8B8B),
                              ),
                            ),
                          ),
                          dropdownColor: Colors.white,
                          items: <String>[
                            'Topic 1',
                            'Topic 2',
                            'Topic 3',
                            'Topic 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14), // Responsive font size
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // Handle the selected value
                          },
                          icon: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 25),
                            child: Icon(
                              Icons.expand_more,
                              color: Colors.black,
                            ),
                          ),
                          isExpanded:
                              true, // Makes dropdown button expand to fill available space
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      "Set Publishing Time",
                      style: TextStyle(
                        fontSize: 16, // Responsive title font size
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: screenHeight * 0.06, // 7% of the screen height
                      width: screenWidth * 0.43, // 90% of the screen width
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Set a Date",
                                  hintStyle: TextStyle(
                                    fontSize: 14, // Responsive hint font size
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff8B8B8B),
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontSize:
                                      14, // Responsive text field font size
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff8B8B8B),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.calendar_month,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                DateTime? selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                  builder:
                                      (BuildContext context, Widget? child) {
                                    return Theme(
                                      data: ThemeData.light().copyWith(
                                        primaryColor: Colors
                                            .blue, // Change the header color
                                        hintColor: Colors
                                            .blue, // Change the accent color
                                        colorScheme: const ColorScheme.light(
                                            primary: Colors
                                                .blue), // Change primary color for buttons
                                        buttonTheme: const ButtonThemeData(
                                            textTheme: ButtonTextTheme
                                                .primary), // Make button text color primary
                                      ),
                                      child: child!,
                                    );
                                  },
                                );
                                if (selectedDate != null) {
                                  // Update the TextField or do something with the selected date
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: screenHeight * 0.06, // 7% of the screen height
                      width: screenWidth * 0.43, // 90% of the screen width
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Set a Time",
                                  hintStyle: TextStyle(
                                    fontSize: 14, // Responsive hint font size
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff8B8B8B),
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontSize:
                                      14, // Responsive text field font size
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff8B8B8B),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.access_time,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                TimeOfDay? selectedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                  builder:
                                      (BuildContext context, Widget? child) {
                                    return Theme(
                                      data: ThemeData.light().copyWith(
                                        primaryColor:
                                            Colors.blue, // Header color
                                        hintColor: Colors.blue, // Accent color
                                        colorScheme: const ColorScheme.light(
                                            primary: Colors
                                                .blue), // Primary button color
                                        buttonTheme: const ButtonThemeData(
                                            textTheme: ButtonTextTheme
                                                .primary), // Button text
                                      ),
                                      child: child!,
                                    );
                                  },
                                );
                                if (selectedTime != null) {
                                  // Update the TextField or handle the selected time
                                  // Example: print(selectedTime.format(context));
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    //////////////////////
                  ],
                ),
                //////////////////////
                SizedBox(
                    height: screenHeight * 0.02), // 5% of the screen height
                Row(
                  children: [
                    Text(
                      "Allows Comments from the Community",
                      style: TextStyle(
                        fontSize: 16, // 4% of the screen width
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: screenHeight * 0.06, // 7% of the screen height
                      width: screenWidth * 0.9, // 90% of the screen width
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              " Yes",
                              style: TextStyle(
                                fontSize:
                                    14, // You may want to change this to be responsive as well
                                fontWeight: FontWeight.w600,
                                color: Color(0xff8B8B8B),
                              ),
                            ),
                          ),
                          dropdownColor: Colors.white,
                          items: <String>[
                            'Yes',
                            'No',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14), // Responsive font size
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // Handle the selected value
                          },
                          icon: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 25),
                            child: Icon(
                              Icons.expand_more,
                              color: Colors.black,
                            ),
                          ),
                          isExpanded:
                              true, // Makes dropdown button expand to fill available space
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Confirm Save",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade300,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Are You Sure Want to Delete \n this Article as Draft",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff260446),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffE4E7FC),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        fixedSize: const Size(128, 50),
                                      ),
                                      child: const Text(
                                        "Discard",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff414ECA),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your save action here
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff414ECA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        fixedSize: const Size(125, 50),
                                      ),
                                      child: const Text(
                                        "Yes, Save",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: const Color(0xffC0C5F7),
                            borderRadius: BorderRadius.circular(30)),
                        height: MediaQuery.of(context).size.height *
                            0.07, // 7% of screen height
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Save as Draft",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff414ECA),
                                )),
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Success()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: const Color(0xff414ECA),
                            borderRadius: BorderRadius.circular(30)),
                        height: MediaQuery.of(context).size.height *
                            0.07, // 7% of screen height
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Continue to Publish",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
