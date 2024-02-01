//import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shimmer/shimmer.dart';
import 'package:utp_in_me/pages/mini_app/ai_test_kitchen/chat_input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class SectionChat extends StatefulWidget {
  const SectionChat({super.key});

  @override
  State<SectionChat> createState() => _SectionChatState();
}

class _SectionChatState extends State<SectionChat> {
  int currentChatIndex = 0; // Counter to track the current chat index
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  final user = FirebaseAuth.instance.currentUser!;

  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);
  final List<Content> chats = [];
  bool showPredefinedData = false;

  @override
  void initState() {
    super.initState();

    // Add predefined data only if the flag is true
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              'You are UAssist, custom chatbot for Universiti Teknologi PETRONAS powered by Gemini AI in purpose is to enhance the UTP experience for students, staff, and visitors by providing them with personalized assistance and support for any inqueries or anything else.')
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "Sure, I can help you with that. As UAssist, custom chatbot for Universiti Teknologi PETRONAS powered by Gemini AI, I'm here to enhance the UTP experience for students, staff, and visitors. I can provide personalized assistance and support for any inquiries or anything else you may need.\n\nHere are some ways I can help you:\n\n* **Provide information about UTP:** I can tell you about UTP's history, programs, facilities, and more.\n* **Answer your questions:** I can answer your questions about UTP, student life, and anything else related to your UTP experience.\n* **Help you connect with UTP staff:** I can help you find and contact the right person at UTP for your inquiry.\n* **Provide support:** I can provide support for a variety of issues, such as technical problems, academic concerns, and personal problems.\n* **Give you personalized recommendations:** I can recommend activities, events, and resources that may be of interest to you based on your preferences.\n\nI am still under development, but I am learning new things every day. I am committed to providing the best possible service to the UTP community.\n\nI am always here to help, so please feel free to ask me anything.\n\nHere are some examples of questions you can ask me:\n\n* What are the admission requirements for UTP?\n* What programs does UTP offer?\n* What are the tuition fees at UTP?\n* Where is UTP located?\n* What are the best places to eat near UTP?\n* How do I get involved in student life at UTP?\n* I'm having trouble with my coursework. Can you help me?\n* I'm feeling stressed about my exams. Can you give me some advice?\n* I'm looking for a part-time job. Can you help me find one?\n\nI look forward to helping you make the most of your UTP experience!")
    ]));
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              "*UTP Security Services Department (SSD)*\n\n**1.     How to log a security incident report**\n\nKindly log a case in the UCS Portal http://ucs.utp.edu.my.\nTitle:  e.g. Missing wallet  \nType: Problem \nType: SSD – Security Incident Report \nYour Enquiry: Guideline before writing a report - Please write your report in essay type  and state the followings if applicable:-\n\n    1.   When - Date & time of the incident.\n    2.   Where – Exact location  of the incident\n    3.   What or Who involved in the incident\n    4.   How or why the incident happened\n    5.   Purpose of report \n    6.   Others statement that can assist in investigation.\nAttach a File : Any evidence (if applicable)\n\n**2.     How to report if you found any items**\n\nTitle: e.g. Found Pendrive\nType: Problem\nType: SSD – Security Incident Report\nYour Enquiry: Guideline before writing a request\n\nPlease write your report in essay type and state the followings:-\n\n1. Items found\n2. Items description.\n3. Contain of the items found (if applicable)\n2. Date and time the items found\n3. Location of the items found.\n4. Details of owner - if applicable.\n3. Person to contact and contact number (for claiming purpose)\n\nNote : It\nis advisable to hand over all items that your found in campus vicinity to lost\nand found centre located at Security office, Block O to avoid any\ncircumstances.\n\nThe security office will keep all lost and found items safely and will help you to return the items to the owner.\nDo not hesitate to contact our office for more details.\n\n**3.     How to report missing matric card**\n\nTitle: Missing Matric/ID Card\nType: Problem\nType: SSD – Security Incident Report\nYour Enquiry: Guideline before writing a report\n\nPlease write your report in essay type and state the followings if applicable:-\n\n1. When -Date & time of missing\n2. Where – Location of missing\n3. How it was missing\n\nNote :\nPlease obtain temporary matric card from One stop centre or Security office at Block O (24H). Temporary matric card is valid for one week. During this time, you have a time to search for your missing card. Temporary matric card is valid for all official use including examination.\n\nYou may proceed to PIDS centre located at One Stop Centre for replacement of matric card after the validity of the temporary matric card expired. You are also required to contact Security Control Room at 053688006 for card inactivation ( to avoid any misuses)\n\nReplacement of matric card is chargeable RM 30.00.\n\n**4.     How to Apply a Student Vehicle Sticker**\n\nThe student must log the application through the Unified Customer Service (UCS) Portal.\nPlease refer to the guideline provided below.\nTitle:           Student Vehicle Sticker Application (New)\nType:          Request\nSubject:      SSD – Vehicle Sticker Application\n\n1.1.    Your Enquiry:\n\nPlease\nprovide the following information:\n\n1.1.1.    Student ID Number\n1.1.2.    Vehicle license plate registration number\n1.1.3.    Type of vehicle (car, motorcycle, etc.)\n1.1.4.    Vehicle brand & model (i.e. Proton Persona)\n1.1.5.    Colour of vehicle\n1.1.6.    Contact number\n1.2.    Supporting documents to be attached in the\napplication:\n1.2.1.    Copy of Student ID.\n1.2.2.    Copy of valid Driving license.\n1.2.3.    Copy of vehicle document (Grant or\ninsurance cover note)\n1.2.4.    Authorisation letter from the owner of the\nvehicle to use the vehicle on campus if:\n1.2.4.1.    The applicant is not the owner of the\nvehicle.\n1.2.4.2.    The name on the vehicle document does not\nmatch the applicant's name.\n1.2.4.3.    Sample of authorisation letter;\n\nSenior Manager\nSecurity Services Department\nUniversiti Teknologi Petronas\n\nI, (name of the vehicle owner), hereby authorise the following applicant to use my vehicle on University campus.\n\nName: (Applicant's name)\nStudent ID Number:\nDetails of my vehicle are as follows:\nVehicle plate number:\nType of vehicle: (Car/Motorcycle/etc.)\nThe applicant and I will bear the responsibilities for any consequences towards the\nvehicle on campus.\n\nSignature\n\n..........................\nOwner name\nNRIC/Passport number\nContact number\n\nNotes: Car sticker are RM2.00\n\n**5.    How to Apply Employee Vehicle Sticker**\n\nThe employee must log the application through the Unified Customer Service (UCS) Portal.\nPlease refer to the guideline provided below.\n\nTitle: Employee Vehicle Sticker Application (New)\nType: Request Subject: SSD – Vehicle Sticker Application\n1.1. Your\nEnquiry: Please provide the following information:\n\n      1.1.1.   Staff ID Number\n      1.1.2.   Vehicle license plate registration number\n      1.1.3.   Type of vehicle (car, motorcycle, etc.)\n      1.1.4.   Vehicle brand & model (i.e. Proton Persona)\n      1.1.5.   Colour of vehicle\n      1.1.6.   Contact number\n\n1.2.Supporting documents to be attached in the application:\n\n      1.2.1.   Copy of Employee/ Student ID.\n      1.2.2.   Copy of valid Driving license.\n      1.2.3.   Copy of vehicle document (Grant or insurance cover note).\nNotes: Car sticker are RM2.00\n\n**6.     REQUEST TO REVIEW CCTV FOOTAGE**\n\nlog your request to the Unified Customer Service (UCS) Portal. You may refer to the guideline provided as below:\n\nTitle                           :         Review CCTV Footage\nType                          :         Request\nSubject                      :         SSD – Security Services Request\n\nYourEnquiry           :           (Please provide the following information)\n\n-Name\n-Student/Staff number\n-Email address\n-Date of CCTV footage to be viewed.\n-Time of CCTV footage to be viewed.\n-Location of CCTV footage to be viewed.\n-Reason for the request.\n-The information will be sent via UCS/email.\n\nNote:\n\nThe request is subject to the approval by the Security Senior Manager.\nFor more information, please do not hesitate to contact us at 05-3688324 (Working hours) or Security Hot Line at 05-3688315 (24 hours).\n\n**7.     How to request for Event Signage**\nLog your request to Unified Customer Service (UCS) Portal. You may refer to the guideline provided as below\n\nTitle: Request for event signage\nType: Request\nType: SSD –Security Services Request\n\nYourEnquiry:\n\nPlease write your request in essay form and state the following:\n1. Full Name of requester\n2.Staff/Student ID\n3.Department/Programme\n4. Contact number\n5.Date/duration required\n6. Event name\n8. Event venue\n9. Wordings of signage\n10. Other relevant information\n\nNotes:\n\nPlease be advised that the purpose of event signages is for visitors/public guidance to the event venue and is not suitable for internal event which only involving staff and students.\n\nEvent signage is not suitable for visitors who are coming in a group, bus or car, instead of staggered individuals. In the case of clustered visitors, you may request for security vehicle escort/guide.\n\nWordings of signage should not be too long.\nRequest needs to be submitted at least two days before the event day.\nFor further enquiries, kindly contact our office at 05 3688315.")
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "Thank you for providing me with the information from the UTP Security Services Department (SSD). I have carefully reviewed the guidelines and procedures, and I am here to assist you with any inquiries or requests you may have related to security at UTP.\n\nHere is a summary of the information you provided:\n\n**1. How to log a security incident report:**\n\n* Log a case in the UCS Portal (http://ucs.utp.edu.my).\n* Provide the following information:\n    * Title: e.g., Missing wallet\n    * Type: Problem\n    * Type: SSD – Security Incident Report\n    * Your Enquiry: Include details such as when, where, what/who, how/why, purpose of report, and any relevant statements.\n    * Attach any evidence if applicable.\n\n**2. How to report if you found any items:**\n\n* Title: e.g., Found Pendrive\n* Type: Problem\n* Type: SSD – Security Incident Report\n* Your Enquiry: Include details such as items found, description, contents (if applicable), date and location found, and contact information for the owner (if available).\n* It is advisable to hand over found items to the lost and found center at the Security office, Block O.\n\n**3. How to report a missing matric card:**\n\n* Title: Missing Matric/ID Card\n* Type: Problem\n* Type: SSD – Security Incident Report\n* Your Enquiry: Include details such as when and where it was missing and how it happened.\n* Obtain a temporary matric card from the One Stop Centre or Security office at Block O.\n* After the temporary card expires, proceed to the PIDS center at the One Stop Centre to replace your matric card (chargeable at RM 30.00).\n\n**4. How to apply for a student vehicle sticker:**\n\n* Log the application through the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Student ID number\n    * Vehicle license plate registration number\n    * Type of vehicle\n    * Vehicle brand & model\n    * Color of vehicle\n    * Contact number\n* Attach supporting documents:\n    * Copy of Student ID\n    * Copy of valid Driving license\n    * Copy of vehicle document (Grant or insurance cover note)\n    * Authorization letter if the applicant is not the owner of the vehicle or the name on the vehicle document does not match the applicant's name.\n* Car stickers are RM2.00.\n\n**5. How to apply for an employee vehicle sticker:**\n\n* Log the application through the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Staff ID number\n    * Vehicle license plate registration number\n    * Type of vehicle\n    * Vehicle brand & model\n    * Color of vehicle\n    * Contact number\n* Attach supporting documents:\n    * Copy of Employee/Student ID\n    * Copy of valid Driving license\n    * Copy of vehicle document (Grant or insurance cover note)\n* Car stickers are RM2.00.\n\n**6. Request to review CCTV footage:**\n\n* Log your request to the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Name\n    * Student/Staff number\n    * Email address\n    * Date, time, and location of the CCTV footage\n    * Reason for the request\n* The request is subject to approval by the Security Senior Manager.\n* For more information, contact the Security Services Department at 05-3688324 (working hours) or the Security Hot Line at 05-3688315 (24 hours).\n\n**7. How to request for event signage:**\n\n* Log your request to the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Requester's full name\n    * Staff/Student ID\n    * Department/Program\n    * Contact number\n    * Date/duration required\n    * Event name\n    * Event venue\n    * Wordings of signage\n    * Other relevant information\n* Requests should be submitted at least two days before the event day.\n* For further inquiries, contact the Security Services Department at 05 3688315.\n\nI hope this information is helpful. Please let me know if you have any further questions or requests.")
    ]));
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              ("*Residential Village (RV) UTP*\n\nHere information regarding RV\n**1.Where can I check for the current hostel prices? **\nYou can view our room profiles here: https://www.utp.edu.my/Pages/Students/Student%Development%and%Services/Accommodations.aspx\n \n**2.What are the facilities provided at the hostel areas?**\nYou can view our facilities information here:\nhttps://www.utp.edu.my/Pages/Students/Student%20Development%20and%20Serv ices/Accomodation/Facilities-at-Residential-Village.aspx\n \n**3.How do I get a room if I am a new intake student?**\nFor first timers, you will be registering your hostel during New Intake Registration Day over the counter.\n \n**4.How long will my first room pre-assignment be (I am a new intake)?**\nFor new intakes post-Covid pandemic, RV will register your name there for 1 semester. You are allowed to maintain same room going into the next upcoming semester, if there are no conditions that do not allow it, e.g. closure for renovation, inactive status (internship, deferment, suspension, dismissal, etc).\n \n**5.How do I get a room if I am a returning student?**\nSince we are in the process of enhancing our processes and system, room registration process may differ for each semester. Please be sure to check the announcements in RV Residential Guideline (released every semester to all students). Please follow the instructions provided in it.\n \n**6.How do I get a room if I am a postgraduate student?**\nBeginning 1 March 2022, we will only approve certain limited number of postgraduate stay on campus due to the closure of our SIBC hostel. You may make a request using our online form: https://forms.office.com/r/69ayWsi7xJ and our team will get back to you soon.\n \n**7.How will the invoices be provided to us?**\nFor UTP students, all accommodation invoices will be issued through UCampus and will appear on the student statement, except for those under certain sponsorship bodies. For better clarification on this matter, please consult UTP Finance Dept.\n \n**8.What should I do if I want to change room during a period that I have been charged for? And what about the payment?**\nPlease log a UCS case at https://ucs.utp.edu.my. RV will consider each case separately. Changes involving different room rates will result in adjustment to the existing invoice, which will take time.\n\n**9.Is it compulsory to stay on campus or can I also stay outside UTP?**\nUTP is gazetted as Fully Residential campus. By default, all Foundation and Undergraduate students are required to stay on campus throughout their official study period in UTP (except during internship).\n\n**10.Can I bring my own car to UTP?**\nAll Foundation students are not allowed to bring their own car to campus. Other methods of transportation, such as bicycles or e-scooters are allowed. The university provides regularly scheduled shuttle bus to assist the Foundation students’ movements around the campus. For Undergraduates, any personal transport vehicle is allowed.\n\n**11.How do I get a room if I am required to go to UTP for special events (I am not a UTP student)?**\nYou may make a request using our online form: https://forms.office.com/r/69ayWsi7xJ and our team will get back to you soon.\n \n**12.How will the invoices be provided to special event requests?**\nAfter the approval has been acquired, a written invoice will be given to you for payment references. Payment is required before check-in.\n \n**13.Can I use UCS even if I am not a UTP staff/student?**\nYes, you can. You only need to do a quick registration, and you are good to go.\n \n**14.Something in my room and/or my common area is broken/not functioning. How do I lodge a report?**\nPlease log in UCS: https://ucs.utp.edu.my and provide necessary details: name, student ID, contact number, complete info of location (e.g. V5-A-00-00-01, V3-A-02toilet). Our UCS personnel will consider and take further actions accordingly.\n \n**15.Why is there no update for my UCS case? I have created it approximately 4 hours ago.**\nDue to the nature of UCS processes, it will take some time from the point of case creation to the arrival into our case queue. In short, all UCS cases are bound by the maximum 5-day Service-Level Agreement (SLA).\n \n**16.Can I use email to report my issue instead of using UCS?**\nWe strongly urge all students to utilize UCS.\n \n**17.What should I do if I lost/misplaced my room key?**\nIf during office hours, please approach the respective village offices.\nIf it is already beyond office hours, please call RV Hotline at 011-21542918 (6pm to 11pm only) and communicate with our officers on standby.\n \n**18.What should I do if there is an emergency (fire/robbery/break-in)?**\nPlease remain calm and get to safety first. Then, please notify our Security personnel at either the Security posts around village or by contacting 05-3688315 (Security Emergency Contact).\n \n**19.What are the things I should know regarding credit note adjustments?**\nIn essence, credit note adjustments for accommodation invoices are given only when there is an error in the amount charged to our students.\nNo credit note adjustments will be given if a student did not stay in their room after they have registered and acquired room key or personally choose to vacate earlier before the end of their supposed tenure.\nApproved credit note adjustments will take approximately 2-3 weeks to process. A new invoice with adjusted amount will not be generated, therefore you can only check for it in the student statement.\n \n**20.Where can I find the latest Residency Guideline?**\nYou can check for the latest Residency Guideline in our shared Public Document Library here: https://utpmy.sharepoint.com/sites/ResidentialVillageCloud/RV%20Public%20Documents/Forms/AllItems.aspx\n\n**21.Where can I check my hostel fees?**\nYou can log in to UCampus and look for your student statement. All financial transactions under your student ID should be available there. For more info, please contact UTP Finance Dept.\n\n**22.Can I know which village/block will be available for new students?**\nDue to availability, not all village/block will be allocated for new students. Depending on the semester, RV will advise regarding the availability and placement.\n\n**23.What if I still need further clarification about something?**\nIf you do not find the answer you require in this FAQ, you can always log a UCS to us and specify your issue properly. Our officers will entertain you soon."))
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "Thank you for providing me with the information regarding the Residential Village (RV) at UTP. I have carefully reviewed the guidelines and procedures, and I am here to assist you with any inquiries or requests you may have related to accommodation at UTP.\n\nHere is a summary of the information you provided:\n\n**1. Current hostel prices:**\n\n* You can view the room profiles and prices here: https://www.utp.edu.my/Pages/Students/Student%Development%and%Services/Accommodations.aspx\n\n**2. Facilities provided at the hostel areas:**\n\n* You can view the facilities information here: https://www.utp.edu.my/Pages/Students/Student%20Development%20and%20Services/Accomodation/Facilities-at-Residential-Village.aspx\n\n**3. How to get a room as a new intake student:**\n\n* During New Intake Registration Day, you will register for your hostel over the counter.\n\n**4. Length of first room pre-assignment for new intakes:**\n\n* For new intakes post-Covid pandemic, RV will register your name for 1 semester. You may maintain the same room going into the next upcoming semester if there are no conditions that do not allow it (e.g., closure for renovation, inactive status, etc.).\n\n**5. How to get a room as a returning student:**\n\n* The room registration process may differ for each semester. Check the announcements in the RV Residential Guideline (released every semester to all students) for instructions.\n\n**6. How to get a room as a postgraduate student:**\n\n* Beginning 1 March 2022, only a limited number of postgraduate students will be approved to stay on campus due to the closure of the SIBC hostel. You may make a request using this online form: https://forms.office.com/r/69ayWsi7xJ\n\n**7. How invoices are provided:**\n\n* For UTP students, accommodation invoices will be issued through UCampus and appear on the student statement.\n* For postgraduate students and special event requests, a written invoice will be given for payment references. Payment is required before check-in.\n\n**8. Changing rooms and payment:**\n\n* Log a UCS case at https://ucs.utp.edu.my to request a room change. RV will consider each case separately. Changes involving different room rates will result in an adjustment to the existing invoice.\n\n**9. Compulsory stay on campus:**\n\n* UTP is gazetted as a Fully Residential campus. Foundation and Undergraduate students are required to stay on campus throughout their official study period in UTP (except during internships).\n\n**10. Personal transport vehicles:**\n\n* Foundation students are not allowed to bring their own cars to campus. Other methods of transportation, such as bicycles or e-scooters, are allowed.\n* Undergraduates are allowed to bring their own cars to campus.\n\n**11. How to get a room for special events:**\n\n* You may make a request using this online form: https://forms.office.com/r/69ayWsi7xJ\n\n**12. Invoices for special event requests:**\n\n* After approval, a written invoice will be given for payment references. Payment is required before check-in.\n\n**13. Using UCS for non-UTP staff/students:**\n\n* Non-UTP staff/students can use UCS after completing a quick registration.\n\n**14. Reporting broken/not functioning items in room or common area:**\n\n* Log in to UCS: https://ucs.utp.edu.my and provide necessary details.\n\n**15. UCS case updates:**\n\n* UCS cases are bound by a maximum 5-day Service-Level Agreement (SLA).\n\n**16. Using email to report issues:**\n\n* RV strongly urges all students to utilize UCS for reporting issues.\n\n**17. Lost/misplaced room key:**\n\n* During office hours, approach the respective village offices.\n* Beyond office hours, call the RV Hotline at 011-21542918 (6 pm to 11 pm only).\n\n**18. Emergency procedures (fire/robbery/break-in):**\n\n* Remain calm, get to safety, and notify Security personnel at either the Security posts around the village or by contacting 05-3688315 (Security Emergency Contact).\n\n**19. Credit note adjustments:**\n\n* Credit note adjustments for accommodation invoices are only given when there is an error in the amount charged.\n* No adjustments will be given if a student did not stay in their room after registration or personally chooses to vacate earlier.\n* Approved adjustments take approximately 2-3 weeks to process.\n\n**20. Residency Guideline:**\n\n* The latest Residency Guideline can be found here: https://utpmy.sharepoint.com/sites/ResidentialVillageCloud/RV%20Public%20Documents/Forms/AllItems.aspx\n\n**21. Hostel fees:**\n\n* Log in to UCampus and check your student statement for financial transactions. Contact the UTP Finance Dept. for more information.\n\n**22. Availability of village/block for new students:**\n\n* RV will advise regarding the availability and placement of villages/blocks for new students depending on the semester.\n\n**23. Further clarification:**\n\n* If you need further clarification, log a UCS case and specify your issue properly. RV officers will assist you soon.\n\nI hope this information is helpful. Please let me know if you have any further questions or requests.")
    ]));
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              'Visit our directories https://www.utp.edu.my/The-University/Directories/SitePages/Home.aspx to access staff directories where we can search and contact specific personnel')
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "Thank you for providing the link to UTP's directories. I have accessed the website and explored the staff directories. Here's how you can search and contact specific personnel using the directories:\n\n1. **Visit the UTP Directories Website:**\n   - Open your preferred web browser and navigate to the UTP Directories website: https://www.utp.edu.my/The-University/Directories/SitePages/Home.aspx\n\n2. **Select the Appropriate Directory:**\n   - On the UTP Directories homepage, you will see a list of directories. Select the appropriate directory based on the type of personnel you are looking for. For example, if you are searching for a faculty member, select the \"Faculty Directory.\"\n\n3. **Search for Specific Personnel:**\n   - Once you have selected the relevant directory, you can search for specific personnel using the search bar provided. Enter the name, department, or other relevant information in the search bar and click on the \"Search\" button.\n\n4. **View Personnel Details:**\n   - The search results will display a list of personnel matching your search criteria. Click on the name of the person you are interested in to view their detailed profile.\n\n5. **Contact Personnel:**\n   - The personnel profile will typically include their contact information, such as their office phone number, email address, and office location. You can use this information to contact the person directly.\n\nPlease note that the availability of contact information may vary depending on the individual's preferences and the directory's privacy settings. If you are unable to find the contact information you need, you can always contact the UTP general inquiry line at +605-368 8000 or email them at enquiry@utp.edu.my for assistance.\n\nI hope this helps! Let me know if you have any other questions.")
    ]));
    chats.add(Content(
        role: 'user', parts: [Parts(text: "how to access my 365 acc?")]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "To access your Microsoft 365 account associated with Universiti Teknologi PETRONAS (UTP), you can follow these steps:\n\n**Using a Web Browser:**\n\n1. **Open a Web Browser:**\n   - Open your preferred web browser on your computer or mobile device.\n\n2. **Navigate to the Login Page:**\n   - In the address bar of your browser, type in either of the following addresses:\n     - https://login.microsoftonline.com\n     - https://portal.office365.com\n\n3. **Enter UTP Email Address:**\n   - On the login page, you will see a field labeled \"Email, phone, or Skype.\" Enter your UTP email address in this field.\n\n4. **Enter Password:**\n   - Below the email address field, you will see a field labeled \"Password.\" Enter your UTP email account password in this field.\n\n5. **Click \"Sign In\":**\n   - Once you have entered your credentials correctly, click on the \"Sign In\" button.\n\n6. **Access Office 365 Account:**\n   - If you have entered your credentials correctly, you will be taken to your Office 365 account dashboard. From here, you can access all of the Office 365 applications and services.\n\n**Using the Microsoft 365 App:**\n\n1. **Download and Install the App:**\n   - Go to the Microsoft 365 website (https://www.microsoft365.com/) and download the Microsoft 365 app for your device.\n\n2. **Open the App:**\n   - Once the app is installed, open it on your device.\n\n3. **Sign In:**\n   - Enter your UTP email address and password in the appropriate fields.\n\n4. **Access Office 365 Account:**\n   - Once you have signed in successfully, you will be able to access your Office 365 account and all of its features.\n\nPlease note that you may be prompted to provide additional information or verify your identity during the login process. This is for security purposes and to protect your account.\n\nIf you encounter any issues while trying to access your Office 365 account, you can contact the UTP IT Helpdesk for assistance.")
    ]));
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              "UTP Microsoft Office 365 plans and services,\nFor Staff:-\nYou can use the services throughout your employment with UTP (Once you resign/end of contract all the services and stored data will no longer available).\nDon’t forget to backup all your data on your last day at UTP!\nFor Student:-\nYou can use the services throughout your enrolment as UTP student (Once the status of your study in UCAMPUS changed to \"Graduated\", the services are no longer available).\nDon’t forget to backup all your data! If you are graduating, please do it before you graduate!")
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "**UTP Microsoft Office 365 Plans and Services:**\n\n**For Staff:**\n\n* **Availability:** Staff members can use the Microsoft Office 365 services throughout their employment with UTP.\n* **Data Retention:** Once a staff member resigns or their contract ends, all the Office 365 services and stored data will no longer be available.\n* **Data Backup:** Staff members are responsible for backing up all their data on their last day at UTP to ensure that they have access to their important files and information after their employment ends.\n\n**For Students:**\n\n* **Availability:** Students can use the Microsoft Office 365 services throughout their enrolment as UTP students.\n* **Data Retention:** Once a student's status in UCAMPUS changes to \"Graduated,\" the Office 365 services and stored data will no longer be available.\n* **Data Backup:** Students are advised to back up all their data before they graduate to ensure that they have access to their important files and information after their studies at UTP are completed.\n\n**General Information:**\n\n* **Data Backup Reminder:** The reminder to backup data on the last day of employment or before graduation is crucial to ensure that individuals do not lose access to their important files and information.\n* **Data Ownership:** It is important to note that the data stored in Office 365 remains the property of UTP.\n* **Compliance with UTP Policies:** All users of Microsoft Office 365 are expected to comply with UTP's policies and guidelines regarding the use of IT resources.\n\nBy understanding these terms and conditions, staff and students can effectively utilize the Microsoft Office 365 services provided by UTP and take necessary steps to protect their data and ensure a smooth transition when their affiliation with the university ends.")
    ]));
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              "To create and submit a case in UCS (Unified Customer Services) Portal,1. After login to  https://ucs.utp.edu.my UCS Portal, click 'My Support'\n2. Click 'Open a New Case' button.\n3. Add the Title of your case.\n4. Choose the type of your case (Question, Problem or Request).\n5. Select the Subject from the dropdown menu (depending on the type of services, related to departments)\n6. Add your enquiry details.\n7. Click the checkbox (agree to UTP Prvicy Notice).\n8. Attach file (if any in PDF ONLY).\n9. Click 'Submit' button.")
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              "**Steps to Create and Submit a Case in UCS Portal:**\n\n1. **Log in to UCS Portal:**\n   - Access the UCS Portal by visiting the website https://ucs.utp.edu.my. Enter your UTP credentials to log in.\n\n2. **Click 'My Support':**\n   - Once you are logged in, locate and click on the 'My Support' tab in the UCS Portal interface.\n\n3. **Click 'Open a New Case' Button:**\n   - On the 'My Support' page, look for the 'Open a New Case' button and click on it to initiate the process of creating a new case.\n\n4. **Add Case Title:**\n   - In the 'Title' field, provide a concise and descriptive title that accurately reflects the nature of your case or inquiry.\n\n5. **Choose Case Type:**\n   - Select the appropriate case type from the available options: Question, Problem, or Request.\n\n6. **Select Subject:**\n   - Choose the relevant subject from the dropdown menu. The subjects are categorized based on the type of services and related departments.\n\n7. **Add Enquiry Details:**\n   - In the 'Description' field, provide detailed information about your case or inquiry. Clearly explain the issue or question you are facing and include any relevant context or background information.\n\n8. **Agree to UTP Privacy Notice:**\n   - Make sure to tick the checkbox to indicate that you agree to the UTP Privacy Notice. This is necessary to proceed with submitting your case.\n\n9. **Attach File (Optional):**\n   - If you have any supporting documents or files that are relevant to your case, you can attach them by clicking the 'Attach File' button. Please ensure that the files are in PDF format only.\n\n10. **Click 'Submit' Button:**\n    - Once you have completed filling out all the necessary information and attaching any relevant files, click on the 'Submit' button to submit your case.\n\nYour case will be registered in the UCS Portal system, and you will receive a confirmation message with a unique case number. You can use this case number to track the progress of your case and communicate with the support team regarding its resolution.")
    ]));
    // Add more predefined data as needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UAssist'),
          elevation: 3,
          actions: [
            IconButton(
              icon: const Icon(Icons.info_rounded),
              splashRadius: 1,
              onPressed: (() {}),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: chats.isNotEmpty
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: SingleChildScrollView(
                          reverse: true,
                          child: ListView.builder(
                            itemBuilder: chatItem,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: chats.length,
                            reverse: false,
                          ),
                        ),
                      )
                    : const Center(child: Text('Ask UAssist anything'))),
            if (loading)
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 0,
                      // color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              //height: 15,
                              child: LoadingAnimationWidget.staggeredDotsWave(
                                color: Theme.of(context).colorScheme.primary,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: 300.0,
                              height: 75.0,
                              child: Shimmer.fromColors(
                                baseColor:
                                    Theme.of(context).colorScheme.primary,
                                highlightColor:
                                    Theme.of(context).colorScheme.tertiary,
                                child: const Text(
                                  'Generating answer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ChatInputBox(
              controller: controller,
              onSend: () {
                if (controller.text.isNotEmpty) {
                  final searchedText = controller.text;
                  chats.add(Content(
                      role: 'user', parts: [Parts(text: searchedText)]));
                  controller.clear();
                  loading = true;

                  gemini.chat(chats).then((value) {
                    chats.add(Content(
                        role: 'model', parts: [Parts(text: value?.output)]));
                    loading = false;
                  });
                }
              },
            ),
          ],
        ));
  }

  Widget chatItem(BuildContext context, int index) {
    final Content content = chats[index];
    if (index >= 14) {
      void onLinkTap(String url) async {
        try {
          launch(
            url,
            customTabsOption: CustomTabsOption(
              toolbarColor: Theme.of(context).colorScheme.background,
              showPageTitle: true,
              //enableDefaultShare: false
            ),
            safariVCOption: const SafariViewControllerOption(
              preferredBarTintColor: Colors.blue,
              preferredControlTintColor: Colors.white,
              barCollapsingEnabled: true,
              entersReaderIfAvailable: true,
              dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
            ),
          );
        } catch (e) {
          debugPrint(e.toString());
        }
      }

      return Card(
        elevation: 0,
        color: content.role == 'model'
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: content.role == 'model'
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: content.role == 'model'
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 2),
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: content.role == 'model'
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(content.role == 'model'
                                ? "assets/utp-single-logo.png"
                                : "assets/profile_pic.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(content.role == 'model' ? 'UAssist' : user.email!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                ],
              ),
              Markdown(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  onTapLink: (String text, String? href, String title) {
                    onLinkTap(href!);
                  },
                  data: content.parts?.lastOrNull?.text ??
                      'Cannot generate data! Visit https://ucs.utp.edu.my to learn more'),
            ],
          ),
        ),
      );
    }
    return Container();
  }
}
