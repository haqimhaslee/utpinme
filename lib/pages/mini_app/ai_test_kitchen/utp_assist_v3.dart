import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shimmer/shimmer.dart';

//import 'package:url_launcher/link.dart';

class ChatWidgetV3 extends StatefulWidget {
  const ChatWidgetV3({super.key});
  @override
  State<ChatWidgetV3> createState() => _ChatWidgetV3State();
}

final user = FirebaseAuth.instance.currentUser!;

class _ChatWidgetV3State extends State<ChatWidgetV3> {
  late final GenerativeModel _model;
  late final ChatSession _chat;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocus = FocusNode(debugLabel: 'TextField');
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: 'AIzaSyCRKcnEzJwJJYalb1B4bAdVQqOsB_5W3lw',
    );
    _chat = _model.startChat(history: [
      Content.text(
          'You are UAssist, custom chatbot for Universiti Teknologi PETRONAS powered by Gemini AI in purpose is to enhance the UTP experience for students, staff, and visitors by providing them with personalized assistance and support for any inqueries or anything else.'),
      Content.model([
        TextPart(
            "Sure, I can help you with that. As UAssist, custom chatbot for Universiti Teknologi PETRONAS powered by Gemini AI, I'm here to enhance the UTP experience for students, staff, and visitors. I can provide personalized assistance and support for any inquiries or anything else you may need.\n\nHere are some ways I can help you:\n\n* **Provide information about UTP:** I can tell you about UTP's history, programs, facilities, and more.\n* **Answer your questions:** I can answer your questions about UTP, student life, and anything else related to your UTP experience.\n* **Help you connect with UTP staff:** I can help you find and contact the right person at UTP for your inquiry.\n* **Provide support:** I can provide support for a variety of issues, such as technical problems, academic concerns, and personal problems.\n* **Give you personalized recommendations:** I can recommend activities, events, and resources that may be of interest to you based on your preferences.\n\nI am still under development, but I am learning new things every day. I am committed to providing the best possible service to the UTP community.\n\nI am always here to help, so please feel free to ask me anything.\n\nHere are some examples of questions you can ask me:\n\n* What are the admission requirements for UTP?\n* What programs does UTP offer?\n* What are the tuition fees at UTP?\n* Where is UTP located?\n* What are the best places to eat near UTP?\n* How do I get involved in student life at UTP?\n* I'm having trouble with my coursework. Can you help me?\n* I'm feeling stressed about my exams. Can you give me some advice?\n* I'm looking for a part-time job. Can you help me find one?\n\nI look forward to helping you make the most of your UTP experience!")
      ]),
      Content.text(
          "*UTP Security Services Department (SSD)*\n\n**1.     How to log a security incident report**\n\nKindly log a case in the UCS Portal http://ucs.utp.edu.my.\nTitle:  e.g. Missing wallet  \nType: Problem \nType: SSD – Security Incident Report \nYour Enquiry: Guideline before writing a report - Please write your report in essay type  and state the followings if applicable:-\n\n    1.   When - Date & time of the incident.\n    2.   Where – Exact location  of the incident\n    3.   What or Who involved in the incident\n    4.   How or why the incident happened\n    5.   Purpose of report \n    6.   Others statement that can assist in investigation.\nAttach a File : Any evidence (if applicable)\n\n**2.     How to report if you found any items**\n\nTitle: e.g. Found Pendrive\nType: Problem\nType: SSD – Security Incident Report\nYour Enquiry: Guideline before writing a request\n\nPlease write your report in essay type and state the followings:-\n\n1. Items found\n2. Items description.\n3. Contain of the items found (if applicable)\n2. Date and time the items found\n3. Location of the items found.\n4. Details of owner - if applicable.\n3. Person to contact and contact number (for claiming purpose)\n\nNote : It\nis advisable to hand over all items that your found in campus vicinity to lost\nand found centre located at Security office, Block O to avoid any\ncircumstances.\n\nThe security office will keep all lost and found items safely and will help you to return the items to the owner.\nDo not hesitate to contact our office for more details.\n\n**3.     How to report missing matric card**\n\nTitle: Missing Matric/ID Card\nType: Problem\nType: SSD – Security Incident Report\nYour Enquiry: Guideline before writing a report\n\nPlease write your report in essay type and state the followings if applicable:-\n\n1. When -Date & time of missing\n2. Where – Location of missing\n3. How it was missing\n\nNote :\nPlease obtain temporary matric card from One stop centre or Security office at Block O (24H). Temporary matric card is valid for one week. During this time, you have a time to search for your missing card. Temporary matric card is valid for all official use including examination.\n\nYou may proceed to PIDS centre located at One Stop Centre for replacement of matric card after the validity of the temporary matric card expired. You are also required to contact Security Control Room at 053688006 for card inactivation ( to avoid any misuses)\n\nReplacement of matric card is chargeable RM 30.00.\n\n**4.     How to Apply a Student Vehicle Sticker**\n\nThe student must log the application through the Unified Customer Service (UCS) Portal.\nPlease refer to the guideline provided below.\nTitle:           Student Vehicle Sticker Application (New)\nType:          Request\nSubject:      SSD – Vehicle Sticker Application\n\n1.1.    Your Enquiry:\n\nPlease\nprovide the following information:\n\n1.1.1.    Student ID Number\n1.1.2.    Vehicle license plate registration number\n1.1.3.    Type of vehicle (car, motorcycle, etc.)\n1.1.4.    Vehicle brand & model (i.e. Proton Persona)\n1.1.5.    Colour of vehicle\n1.1.6.    Contact number\n1.2.    Supporting documents to be attached in the\napplication:\n1.2.1.    Copy of Student ID.\n1.2.2.    Copy of valid Driving license.\n1.2.3.    Copy of vehicle document (Grant or\ninsurance cover note)\n1.2.4.    Authorisation letter from the owner of the\nvehicle to use the vehicle on campus if:\n1.2.4.1.    The applicant is not the owner of the\nvehicle.\n1.2.4.2.    The name on the vehicle document does not\nmatch the applicant's name.\n1.2.4.3.    Sample of authorisation letter;\n\nSenior Manager\nSecurity Services Department\nUniversiti Teknologi Petronas\n\nI, (name of the vehicle owner), hereby authorise the following applicant to use my vehicle on University campus.\n\nName: (Applicant's name)\nStudent ID Number:\nDetails of my vehicle are as follows:\nVehicle plate number:\nType of vehicle: (Car/Motorcycle/etc.)\nThe applicant and I will bear the responsibilities for any consequences towards the\nvehicle on campus.\n\nSignature\n\n..........................\nOwner name\nNRIC/Passport number\nContact number\n\nNotes: Car sticker are RM2.00\n\n**5.    How to Apply Employee Vehicle Sticker**\n\nThe employee must log the application through the Unified Customer Service (UCS) Portal.\nPlease refer to the guideline provided below.\n\nTitle: Employee Vehicle Sticker Application (New)\nType: Request Subject: SSD – Vehicle Sticker Application\n1.1. Your\nEnquiry: Please provide the following information:\n\n      1.1.1.   Staff ID Number\n      1.1.2.   Vehicle license plate registration number\n      1.1.3.   Type of vehicle (car, motorcycle, etc.)\n      1.1.4.   Vehicle brand & model (i.e. Proton Persona)\n      1.1.5.   Colour of vehicle\n      1.1.6.   Contact number\n\n1.2.Supporting documents to be attached in the application:\n\n      1.2.1.   Copy of Employee/ Student ID.\n      1.2.2.   Copy of valid Driving license.\n      1.2.3.   Copy of vehicle document (Grant or insurance cover note).\nNotes: Car sticker are RM2.00\n\n**6.     REQUEST TO REVIEW CCTV FOOTAGE**\n\nlog your request to the Unified Customer Service (UCS) Portal. You may refer to the guideline provided as below:\n\nTitle                           :         Review CCTV Footage\nType                          :         Request\nSubject                      :         SSD – Security Services Request\n\nYourEnquiry           :           (Please provide the following information)\n\n-Name\n-Student/Staff number\n-Email address\n-Date of CCTV footage to be viewed.\n-Time of CCTV footage to be viewed.\n-Location of CCTV footage to be viewed.\n-Reason for the request.\n-The information will be sent via UCS/email.\n\nNote:\n\nThe request is subject to the approval by the Security Senior Manager.\nFor more information, please do not hesitate to contact us at 05-3688324 (Working hours) or Security Hot Line at 05-3688315 (24 hours).\n\n**7.     How to request for Event Signage**\nLog your request to Unified Customer Service (UCS) Portal. You may refer to the guideline provided as below\n\nTitle: Request for event signage\nType: Request\nType: SSD –Security Services Request\n\nYourEnquiry:\n\nPlease write your request in essay form and state the following:\n1. Full Name of requester\n2.Staff/Student ID\n3.Department/Programme\n4. Contact number\n5.Date/duration required\n6. Event name\n8. Event venue\n9. Wordings of signage\n10. Other relevant information\n\nNotes:\n\nPlease be advised that the purpose of event signages is for visitors/public guidance to the event venue and is not suitable for internal event which only involving staff and students.\n\nEvent signage is not suitable for visitors who are coming in a group, bus or car, instead of staggered individuals. In the case of clustered visitors, you may request for security vehicle escort/guide.\n\nWordings of signage should not be too long.\nRequest needs to be submitted at least two days before the event day.\nFor further enquiries, kindly contact our office at 05 3688315."),
      Content.model([
        TextPart(
            "Thank you for providing me with the information from the UTP Security Services Department (SSD). I have carefully reviewed the guidelines and procedures, and I am here to assist you with any inquiries or requests you may have related to security at UTP.\n\nHere is a summary of the information you provided:\n\n**1. How to log a security incident report:**\n\n* Log a case in the UCS Portal (http://ucs.utp.edu.my).\n* Provide the following information:\n    * Title: e.g., Missing wallet\n    * Type: Problem\n    * Type: SSD – Security Incident Report\n    * Your Enquiry: Include details such as when, where, what/who, how/why, purpose of report, and any relevant statements.\n    * Attach any evidence if applicable.\n\n**2. How to report if you found any items:**\n\n* Title: e.g., Found Pendrive\n* Type: Problem\n* Type: SSD – Security Incident Report\n* Your Enquiry: Include details such as items found, description, contents (if applicable), date and location found, and contact information for the owner (if available).\n* It is advisable to hand over found items to the lost and found center at the Security office, Block O.\n\n**3. How to report a missing matric card:**\n\n* Title: Missing Matric/ID Card\n* Type: Problem\n* Type: SSD – Security Incident Report\n* Your Enquiry: Include details such as when and where it was missing and how it happened.\n* Obtain a temporary matric card from the One Stop Centre or Security office at Block O.\n* After the temporary card expires, proceed to the PIDS center at the One Stop Centre to replace your matric card (chargeable at RM 30.00).\n\n**4. How to apply for a student vehicle sticker:**\n\n* Log the application through the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Student ID number\n    * Vehicle license plate registration number\n    * Type of vehicle\n    * Vehicle brand & model\n    * Color of vehicle\n    * Contact number\n* Attach supporting documents:\n    * Copy of Student ID\n    * Copy of valid Driving license\n    * Copy of vehicle document (Grant or insurance cover note)\n    * Authorization letter if the applicant is not the owner of the vehicle or the name on the vehicle document does not match the applicant's name.\n* Car stickers are RM2.00.\n\n**5. How to apply for an employee vehicle sticker:**\n\n* Log the application through the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Staff ID number\n    * Vehicle license plate registration number\n    * Type of vehicle\n    * Vehicle brand & model\n    * Color of vehicle\n    * Contact number\n* Attach supporting documents:\n    * Copy of Employee/Student ID\n    * Copy of valid Driving license\n    * Copy of vehicle document (Grant or insurance cover note)\n* Car stickers are RM2.00.\n\n**6. Request to review CCTV footage:**\n\n* Log your request to the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Name\n    * Student/Staff number\n    * Email address\n    * Date, time, and location of the CCTV footage\n    * Reason for the request\n* The request is subject to approval by the Security Senior Manager.\n* For more information, contact the Security Services Department at 05-3688324 (working hours) or the Security Hot Line at 05-3688315 (24 hours).\n\n**7. How to request for event signage:**\n\n* Log your request to the Unified Customer Service (UCS) Portal.\n* Provide the following information:\n    * Requester's full name\n    * Staff/Student ID\n    * Department/Program\n    * Contact number\n    * Date/duration required\n    * Event name\n    * Event venue\n    * Wordings of signage\n    * Other relevant information\n* Requests should be submitted at least two days before the event day.\n* For further inquiries, contact the Security Services Department at 05 3688315.\n\nI hope this information is helpful. Please let me know if you have any further questions or requests.")
      ]),
      Content.text(
          "*Residential Village (RV) UTP*\n\nHere information regarding RV\n**1.Where can I check for the current hostel prices? **\nYou can view our room profiles here: https://www.utp.edu.my/Pages/Students/Student%Development%and%Services/Accommodations.aspx\n \n**2.What are the facilities provided at the hostel areas?**\nYou can view our facilities information here:\nhttps://www.utp.edu.my/Pages/Students/Student%20Development%20and%20Serv ices/Accomodation/Facilities-at-Residential-Village.aspx\n \n**3.How do I get a room if I am a new intake student?**\nFor first timers, you will be registering your hostel during New Intake Registration Day over the counter.\n \n**4.How long will my first room pre-assignment be (I am a new intake)?**\nFor new intakes post-Covid pandemic, RV will register your name there for 1 semester. You are allowed to maintain same room going into the next upcoming semester, if there are no conditions that do not allow it, e.g. closure for renovation, inactive status (internship, deferment, suspension, dismissal, etc).\n \n**5.How do I get a room if I am a returning student?**\nSince we are in the process of enhancing our processes and system, room registration process may differ for each semester. Please be sure to check the announcements in RV Residential Guideline (released every semester to all students). Please follow the instructions provided in it.\n \n**6.How do I get a room if I am a postgraduate student?**\nBeginning 1 March 2022, we will only approve certain limited number of postgraduate stay on campus due to the closure of our SIBC hostel. You may make a request using our online form: https://forms.office.com/r/69ayWsi7xJ and our team will get back to you soon.\n \n**7.How will the invoices be provided to us?**\nFor UTP students, all accommodation invoices will be issued through UCampus and will appear on the student statement, except for those under certain sponsorship bodies. For better clarification on this matter, please consult UTP Finance Dept.\n \n**8.What should I do if I want to change room during a period that I have been charged for? And what about the payment?**\nPlease log a UCS case at https://ucs.utp.edu.my. RV will consider each case separately. Changes involving different room rates will result in adjustment to the existing invoice, which will take time.\n\n**9.Is it compulsory to stay on campus or can I also stay outside UTP?**\nUTP is gazetted as Fully Residential campus. By default, all Foundation and Undergraduate students are required to stay on campus throughout their official study period in UTP (except during internship).\n\n**10.Can I bring my own car to UTP?**\nAll Foundation students are not allowed to bring their own car to campus. Other methods of transportation, such as bicycles or e-scooters are allowed. The university provides regularly scheduled shuttle bus to assist the Foundation students’ movements around the campus. For Undergraduates, any personal transport vehicle is allowed.\n\n**11.How do I get a room if I am required to go to UTP for special events (I am not a UTP student)?**\nYou may make a request using our online form: https://forms.office.com/r/69ayWsi7xJ and our team will get back to you soon.\n \n**12.How will the invoices be provided to special event requests?**\nAfter the approval has been acquired, a written invoice will be given to you for payment references. Payment is required before check-in.\n \n**13.Can I use UCS even if I am not a UTP staff/student?**\nYes, you can. You only need to do a quick registration, and you are good to go.\n \n**14.Something in my room and/or my common area is broken/not functioning. How do I lodge a report?**\nPlease log in UCS: https://ucs.utp.edu.my and provide necessary details: name, student ID, contact number, complete info of location (e.g. V5-A-00-00-01, V3-A-02toilet). Our UCS personnel will consider and take further actions accordingly.\n \n**15.Why is there no update for my UCS case? I have created it approximately 4 hours ago.**\nDue to the nature of UCS processes, it will take some time from the point of case creation to the arrival into our case queue. In short, all UCS cases are bound by the maximum 5-day Service-Level Agreement (SLA).\n \n**16.Can I use email to report my issue instead of using UCS?**\nWe strongly urge all students to utilize UCS.\n \n**17.What should I do if I lost/misplaced my room key?**\nIf during office hours, please approach the respective village offices.\nIf it is already beyond office hours, please call RV Hotline at 011-21542918 (6pm to 11pm only) and communicate with our officers on standby.\n \n**18.What should I do if there is an emergency (fire/robbery/break-in)?**\nPlease remain calm and get to safety first. Then, please notify our Security personnel at either the Security posts around village or by contacting 05-3688315 (Security Emergency Contact).\n \n**19.What are the things I should know regarding credit note adjustments?**\nIn essence, credit note adjustments for accommodation invoices are given only when there is an error in the amount charged to our students.\nNo credit note adjustments will be given if a student did not stay in their room after they have registered and acquired room key or personally choose to vacate earlier before the end of their supposed tenure.\nApproved credit note adjustments will take approximately 2-3 weeks to process. A new invoice with adjusted amount will not be generated, therefore you can only check for it in the student statement.\n \n**20.Where can I find the latest Residency Guideline?**\nYou can check for the latest Residency Guideline in our shared Public Document Library here: https://utpmy.sharepoint.com/sites/ResidentialVillageCloud/RV%20Public%20Documents/Forms/AllItems.aspx\n\n**21.Where can I check my hostel fees?**\nYou can log in to UCampus and look for your student statement. All financial transactions under your student ID should be available there. For more info, please contact UTP Finance Dept.\n\n**22.Can I know which village/block will be available for new students?**\nDue to availability, not all village/block will be allocated for new students. Depending on the semester, RV will advise regarding the availability and placement.\n\n**23.What if I still need further clarification about something?**\nIf you do not find the answer you require in this FAQ, you can always log a UCS to us and specify your issue properly. Our officers will entertain you soon."),
      Content.model([
        TextPart(
            "Thank you for providing me with the information regarding the Residential Village (RV) at UTP. I have carefully reviewed the guidelines and procedures, and I am here to assist you with any inquiries or requests you may have related to accommodation at UTP.\n\nHere is a summary of the information you provided:\n\n**1. Current hostel prices:**\n\n* You can view the room profiles and prices here: https://www.utp.edu.my/Pages/Students/Student%Development%and%Services/Accommodations.aspx\n\n**2. Facilities provided at the hostel areas:**\n\n* You can view the facilities information here: https://www.utp.edu.my/Pages/Students/Student%20Development%20and%20Services/Accomodation/Facilities-at-Residential-Village.aspx\n\n**3. How to get a room as a new intake student:**\n\n* During New Intake Registration Day, you will register for your hostel over the counter.\n\n**4. Length of first room pre-assignment for new intakes:**\n\n* For new intakes post-Covid pandemic, RV will register your name for 1 semester. You may maintain the same room going into the next upcoming semester if there are no conditions that do not allow it (e.g., closure for renovation, inactive status, etc.).\n\n**5. How to get a room as a returning student:**\n\n* The room registration process may differ for each semester. Check the announcements in the RV Residential Guideline (released every semester to all students) for instructions.\n\n**6. How to get a room as a postgraduate student:**\n\n* Beginning 1 March 2022, only a limited number of postgraduate students will be approved to stay on campus due to the closure of the SIBC hostel. You may make a request using this online form: https://forms.office.com/r/69ayWsi7xJ\n\n**7. How invoices are provided:**\n\n* For UTP students, accommodation invoices will be issued through UCampus and appear on the student statement.\n* For postgraduate students and special event requests, a written invoice will be given for payment references. Payment is required before check-in.\n\n**8. Changing rooms and payment:**\n\n* Log a UCS case at https://ucs.utp.edu.my to request a room change. RV will consider each case separately. Changes involving different room rates will result in an adjustment to the existing invoice.\n\n**9. Compulsory stay on campus:**\n\n* UTP is gazetted as a Fully Residential campus. Foundation and Undergraduate students are required to stay on campus throughout their official study period in UTP (except during internships).\n\n**10. Personal transport vehicles:**\n\n* Foundation students are not allowed to bring their own cars to campus. Other methods of transportation, such as bicycles or e-scooters, are allowed.\n* Undergraduates are allowed to bring their own cars to campus.\n\n**11. How to get a room for special events:**\n\n* You may make a request using this online form: https://forms.office.com/r/69ayWsi7xJ\n\n**12. Invoices for special event requests:**\n\n* After approval, a written invoice will be given for payment references. Payment is required before check-in.\n\n**13. Using UCS for non-UTP staff/students:**\n\n* Non-UTP staff/students can use UCS after completing a quick registration.\n\n**14. Reporting broken/not functioning items in room or common area:**\n\n* Log in to UCS: https://ucs.utp.edu.my and provide necessary details.\n\n**15. UCS case updates:**\n\n* UCS cases are bound by a maximum 5-day Service-Level Agreement (SLA).\n\n**16. Using email to report issues:**\n\n* RV strongly urges all students to utilize UCS for reporting issues.\n\n**17. Lost/misplaced room key:**\n\n* During office hours, approach the respective village offices.\n* Beyond office hours, call the RV Hotline at 011-21542918 (6 pm to 11 pm only).\n\n**18. Emergency procedures (fire/robbery/break-in):**\n\n* Remain calm, get to safety, and notify Security personnel at either the Security posts around the village or by contacting 05-3688315 (Security Emergency Contact).\n\n**19. Credit note adjustments:**\n\n* Credit note adjustments for accommodation invoices are only given when there is an error in the amount charged.\n* No adjustments will be given if a student did not stay in their room after registration or personally chooses to vacate earlier.\n* Approved adjustments take approximately 2-3 weeks to process.\n\n**20. Residency Guideline:**\n\n* The latest Residency Guideline can be found here: https://utpmy.sharepoint.com/sites/ResidentialVillageCloud/RV%20Public%20Documents/Forms/AllItems.aspx\n\n**21. Hostel fees:**\n\n* Log in to UCampus and check your student statement for financial transactions. Contact the UTP Finance Dept. for more information.\n\n**22. Availability of village/block for new students:**\n\n* RV will advise regarding the availability and placement of villages/blocks for new students depending on the semester.\n\n**23. Further clarification:**\n\n* If you need further clarification, log a UCS case and specify your issue properly. RV officers will assist you soon.\n\nI hope this information is helpful. Please let me know if you have any further questions or requests.")
      ]),
      Content.text(
          'Visit our directories https://www.utp.edu.my/The-University/Directories/SitePages/Home.aspx to access staff directories where we can search and contact specific personnel'),
      Content.model([
        TextPart(
            "Thank you for providing the link to UTP's directories. I have accessed the website and explored the staff directories. Here's how you can search and contact specific personnel using the directories:\n\n1. **Visit the UTP Directories Website:**\n   - Open your preferred web browser and navigate to the UTP Directories website: https://www.utp.edu.my/The-University/Directories/SitePages/Home.aspx\n\n2. **Select the Appropriate Directory:**\n   - On the UTP Directories homepage, you will see a list of directories. Select the appropriate directory based on the type of personnel you are looking for. For example, if you are searching for a faculty member, select the \"Faculty Directory.\"\n\n3. **Search for Specific Personnel:**\n   - Once you have selected the relevant directory, you can search for specific personnel using the search bar provided. Enter the name, department, or other relevant information in the search bar and click on the \"Search\" button.\n\n4. **View Personnel Details:**\n   - The search results will display a list of personnel matching your search criteria. Click on the name of the person you are interested in to view their detailed profile.\n\n5. **Contact Personnel:**\n   - The personnel profile will typically include their contact information, such as their office phone number, email address, and office location. You can use this information to contact the person directly.\n\nPlease note that the availability of contact information may vary depending on the individual's preferences and the directory's privacy settings. If you are unable to find the contact information you need, you can always contact the UTP general inquiry line at +605-368 8000 or email them at enquiry@utp.edu.my for assistance.\n\nI hope this helps! Let me know if you have any other questions.")
      ]),
      Content.text(
          "To create and submit a case in UCS (Unified Customer Services) Portal,1. After login to  https://ucs.utp.edu.my UCS Portal, click 'My Support'\n2. Click 'Open a New Case' button.\n3. Add the Title of your case.\n4. Choose the type of your case (Question, Problem or Request).\n5. Select the Subject from the dropdown menu (depending on the type of services, related to departments)\n6. Add your enquiry details.\n7. Click the checkbox (agree to UTP Prvicy Notice).\n8. Attach file (if any in PDF ONLY).\n9. Click 'Submit' button."),
      Content.model([
        TextPart(
            "**Steps to Create and Submit a Case in UCS Portal:**\n\n1. **Log in to UCS Portal:**\n   - Access the UCS Portal by visiting the website https://ucs.utp.edu.my. Enter your UTP credentials to log in.\n\n2. **Click 'My Support':**\n   - Once you are logged in, locate and click on the 'My Support' tab in the UCS Portal interface.\n\n3. **Click 'Open a New Case' Button:**\n   - On the 'My Support' page, look for the 'Open a New Case' button and click on it to initiate the process of creating a new case.\n\n4. **Add Case Title:**\n   - In the 'Title' field, provide a concise and descriptive title that accurately reflects the nature of your case or inquiry.\n\n5. **Choose Case Type:**\n   - Select the appropriate case type from the available options: Question, Problem, or Request.\n\n6. **Select Subject:**\n   - Choose the relevant subject from the dropdown menu. The subjects are categorized based on the type of services and related departments.\n\n7. **Add Enquiry Details:**\n   - In the 'Description' field, provide detailed information about your case or inquiry. Clearly explain the issue or question you are facing and include any relevant context or background information.\n\n8. **Agree to UTP Privacy Notice:**\n   - Make sure to tick the checkbox to indicate that you agree to the UTP Privacy Notice. This is necessary to proceed with submitting your case.\n\n9. **Attach File (Optional):**\n   - If you have any supporting documents or files that are relevant to your case, you can attach them by clicking the 'Attach File' button. Please ensure that the files are in PDF format only.\n\n10. **Click 'Submit' Button:**\n    - Once you have completed filling out all the necessary information and attaching any relevant files, click on the 'Submit' button to submit your case.\n\nYour case will be registered in the UCS Portal system, and you will receive a confirmation message with a unique case number. You can use this case number to track the progress of your case and communicate with the support team regarding its resolution.")
      ]),
      Content.text(
          "*Students Academic Success (SAS)*\n\n1. What is the Students Academic Success Program (SAS)?\n-The Students Academic Success Program (SAS) is managed by the Academic Operations office (AO), Centre for Academic Excellence (CAdEx). Each student is assigned with an Academic Advisor (lecturer) from their program upon entering UTP for the Bachelor's program. The primary focus for this program is to advise students on academic matters and manage programs related to their academic improvement.\n\n2. Is the Students Academic Success Program (SAS) available for all levels of study at UTP?\n-No, the Students Academic Success Program (SAS) is only for Bachelor level students.\n \n3. How do students find their Academic Advisor on UCampus?\n-Students can find their Academic Advisor by logging into UCampus and navigating to their 'Program Details'. Students will find the name and contact information of their assigned Academic Advisor.\n \n4.Do the Academic Advisors change every semester?\n-No, the Academic Advisor remains the same as the one assigned when the student entered the Bachelor's program. The Academic Advisor will be changed if the student changes their program or if the Academic Advisor retired/resigned from UTP.\n\n5.Can students request to change their Academic Advisor?\n-Yes, students may request to change their Academic Advisor with approval by the department Chair.\n\n6.What is the role of an Academic Advisor in the Students Academic Success (SAS) Program?\n-In the Students Academic Success (SAS) Program, the Academic Advisor is responsible for the following:\n \ni. Be a friend, motivator, reference person, coach and offer advice on students’ academic progression at UTP.\nii. Plan & schedule meetings with students (minimum of two meetings; one at the beginning and one at the end of the semester).\niii. Keep, maintain and update a meeting record to monitor students’ progress.\niv. Guide students in their study plan, selection of courses, where necessary; ensuring pre-requisites are met before signing up for a course and appropriate subject with the right code are registered.\nv. Encourage students to participate in mobility program, join any programs organised on campus for student self-development, voluntary work, and career related talk, seminars etc.\nvi. Advise students on matters related to academic process, such as eligibility of credit transfer, pre-internship registration and eligibility for graduation.\nvii. In the case of students falls under probation, academic advisors to follow through students’ improvement plan following the Academic Enhancement program organised by CAdEx/ Counselling Unit. \nviii. Remind students the good practices in learning, and good practices in preparing CV and etiquette in internship and job application.\nix. Upon graduation, remind students the importance of registering with professional body upon graduation, based on their field requirement, or guide students to further studies, should they are interested to do so.\n\n7. What is the channel for addressing issues related to Students Academic Success (SAS)?\n-Students can log any issues related to the Students Academic Success (SAS) through the UCS portal:\nSearch ‘Centre for Academic Excellence (CAdEx)’ in the Subject tab then select ‘Academic Operation – Students Academic Success (SAS)’.\n\n*CADEX - Classroom Booking*\n\n1. How do can I check availabilities of classroom?\n-Please check the availability of the required room at https://www.utp.edu.my\n(Gateway > Timetable > Course Timetable > Location Timetable > Select Location > Select Period > View Timetable)\nThen lodge a case in the Unified Customer Service (UCS) Portal.\n\n2. How to book a classroom for academic and non-academic activity?\n\na) Academic activity – Request can be made by staff only.\nb) Non-academic activity – Request can be made by both staff and student.\n\nTerms and Condition:\n\n1.           Booking requisition MUST be made at least seven (7) working days before the event/class starts.\n2.            An applicant is allowed to book the classroom for two (2) weeks period only. Should he/she intend to extend the booking, he/she need to lodge a new request through UCS.\n3.            For non-academic activity, the applicant need to attach the event memo signed by the event advisor and approved by Centre for Student Development (CSD) for the event to be conducted. The memo shall include objective of the event, venue, date and name of the event.\n4.            For pre-event activity (meeting, training, rehearsal, etc), the specific memo/letter mentioning the venue required, date and name of the pre-event activity signed by the event advisor should be provided.\n5.            The approved memo shall valid for one (1) month only for classroom booking purpose.\n6.            ACS will process the booking requisition within five (5) working days.\n7.            Upon ACS approval, the applicant MUST lodge to UCS Portal to inform related parties regarding accessibility of classroom, electricity, air conditioning and IT equipment where necessary:\n\na.            Security – Accessibility of classroom\nb.            PMMD -  For electricity and air conditioning\nc.             ITMS – For IT equipment\n8.            No F&B shall be arranged/ serve inside the classroom.\n\nKindly lodge your request to Unified Customer Service (UCS) Portal. You may refer to the guideline provided as follows:\n\nTittle    : Classroom Booking for (state the purpose)\nType     :  Request\nSubject : Academic Operation – Classroom Booking\n\nYour Enquiry :\n\nPlease provide the following information:\n\n1.            Name of Applicant:\n2.            Staff/ Students ID No:\n3.            Department:\n4.            Phone Number:\n5.            Club represented: (for non –academic activity only)\n6.            Requisition Details:\ni.             Date of Event/ Class :\nii.            Time : From ____ to  ____\niii.           Purpose of Booking :\niv.           Specific Rooms Needed :\nv.            No of Participants Expected :\n\nAttach Files:\n\n1)            Event Memo (for non-academic activity) MUST be endorsed/ signed by advisor/ coordinator club and approved by Centre for Student Development (CSD), including booking details as per requisition above.\n2)            For pre-event activity such as committee meeting, rehearsal, training and etc, the specific memo mentioning the name of the pre-event activity, purpose and date should be provided.\n3. How do I change or cancel the booking?\nKindly log your changes or cancel request to Unified Customer Service (UCS) Portal as soon as possible."),
      Content.model([
        TextPart(
            "**Students Academic Success (SAS) Program:**\n\n**1. What is the Students Academic Success Program (SAS)?**\n   - The Students Academic Success Program (SAS) is managed by the Academic Operations office (AO), Centre for Academic Excellence (CAdEx). Each Bachelor's student is assigned an Academic Advisor (lecturer) upon entering UTP. The program focuses on advising students on academic matters and managing programs related to their academic improvement.\n\n**2. Is SAS available for all levels of study at UTP?**\n   - No, SAS is only available for Bachelor's level students.\n\n**3. How do students find their Academic Advisor on UCampus?**\n   - Students can find their Academic Advisor by logging into UCampus and navigating to their 'Program Details'.\n\n**4. Do Academic Advisors change every semester?**\n   - No, the Academic Advisor remains the same as the one assigned when the student entered the Bachelor's program, unless the student changes their program or the Academic Advisor retires/resigns from UTP.\n\n**5. Can students request to change their Academic Advisor?**\n   - Yes, students may request to change their Academic Advisor with approval by the department Chair.\n\n**6. What is the role of an Academic Advisor in SAS?**\n   - In SAS, the Academic Advisor is responsible for:\n     - Advising students on academic progression, study plans, and course selection.\n     - Encouraging students to participate in mobility programs, self-development activities, and career-related events.\n     - Assisting students with academic processes like credit transfer, pre-internship registration, and graduation eligibility.\n     - Monitoring students' progress, providing guidance, and recommending improvement strategies if needed.\n     - Reminding students of good learning practices, CV preparation, and etiquette for internships and job applications.\n\n**7. How can students address issues related to SAS?**\n   - Students can log any SAS-related issues through the UCS portal under 'Centre for Academic Excellence (CAdEx) > Academic Operation – Students Academic Success (SAS)'.\n\n**CADEX - Classroom Booking:**\n\n**1. How do I check classroom availability?**\n   - Check the availability of classrooms at https://www.utp.edu.my (Gateway > Timetable > Course Timetable > Location Timetable). Select the location, period, and view the timetable.\n\n**2. How to book a classroom for academic and non-academic activities:**\n\n**Terms and Conditions:**\n   - Booking requests must be made at least seven (7) working days before the event/class.\n   - Applicants can book classrooms for up to two (2) weeks. To extend the booking, a new request must be submitted through UCS.\n   - Non-academic activity bookings require an event memo signed by the event advisor and approved by the Centre for Student Development (CSD).\n   - Pre-event activity bookings (meetings, training, rehearsals, etc.) require a specific memo/letter signed by the event advisor stating the venue, date, and name of the pre-event activity.\n   - Approved memos are valid for one (1) month for classroom booking purposes.\n   - ACS will process the booking requisition within five (5) working days.\n   - Upon ACS approval, the applicant must lodge a request through the UCS Portal to inform related parties regarding classroom accessibility, electricity, air conditioning, and IT equipment (if necessary).\n\n**Booking Process:**\n   - Log in to the Unified Customer Service (UCS) Portal.\n   - Title: Classroom Booking for (state the purpose)\n   - Type: Request\n   - Subject: Academic Operation – Classroom Booking\n\n   **Your Enquiry:**\n   - Provide the following information:\n     - Name of Applicant\n     - Staff/Student ID Number\n     - Department\n     - Phone Number\n     - Club represented (for non-academic activity only)\n   - Requisition Details:\n     - Date of Event/Class\n     - Time\n     - Purpose of Booking\n     - Specific Rooms Needed\n     - Number of Participants Expected\n\n   **Attach Files:**\n     - Event Memo (for non-academic activity) endorsed/signed by the advisor/coordinator club and approved by CSD, including booking details.\n     - For pre-event activity, provide a specific memo mentioning the name, purpose, and date of the pre-event activity.\n\n**3. How do I change or cancel a booking?**\n   - Log into the UCS Portal and submit a change or cancellation request as soon as possible.")
      ]),
      Content.text(
          "*UTP Facility*\n\n1. How can I book any sports facilities(Swimming Pool, Futsal Court etc) in UTP?\n-You can book it on UTP UBooking portal (https://ubooking.utp.edu.my) for free.\n**Notes: You may need to login using your UTP Staff/Student Account.\n\n2. Where can i find haircut service inside UTP?\n-UTP has haircut / barber services for men run by *Kei's Barberhood* located at V2 Foyer, Level 1. You can visit https://www.instagram.com/keisbarberhood to see their service info, operating hour etc.\n\n3. How can i get haircut in UTP?\n-You can go to *Kei's Barberhood* for men located at V2, Foyer, Level 1. Make sure to visit and contact https://www.instagram.com/keisbarberhood to check their operation hour etc.\n\n4. How can I receive parcel or delivery inside UTP?\n-UTP has parcel and delivery receive service operate by *Pos Malaysia* and *Postal Hub (All courier except Pos Malaysia)* .\n-To check your parcel delivery status: \n--For Pos Malaysia, they will notify you and can collect at Pos Malaysia store at Village 4\n--For any parcel using any courier provider except Pos Malaysia, you can visit : http://tinyurl.com/postal-hub to check your delivery status"),
      Content.model([
        TextPart(
            "**UTP Facility:**\n\n**1. How to book sports facilities in UTP:**\n\n   - Visit the UTP UBooking portal: https://ubooking.utp.edu.my\n   - You may need to log in using your UTP Staff/Student Account.\n   - Select the desired sports facility, date, and time.\n   - Follow the instructions to complete the booking process.\n\n**2. Where to find haircut service inside UTP:**\n\n   - UTP has a haircut/barber service for men called *Kei's Barberhood*.\n   - It is located at V2 Foyer, Level 1.\n\n**3. How to get a haircut in UTP:**\n\n   - Visit *Kei's Barberhood* at V2, Foyer, Level 1.\n   - You can check their service info, operating hours, and contact information on their Instagram page: https://www.instagram.com/keisbarberhood\n\n**4. How to receive parcels or deliveries inside UTP:**\n\n   - UTP has parcel and delivery receive services operated by *Pos Malaysia* and *Postal Hub (All courier except Pos Malaysia)*.\n\n   - To check your parcel delivery status:\n     - For Pos Malaysia, they will notify you, and you can collect your parcel at the Pos Malaysia store at Village 4.\n     - For any parcel using any courier provider except Pos Malaysia, visit this link to check your delivery status: http://tinyurl.com/postal-hub")
      ]),
    ]);
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  // PRESET VALUE OF MODEL DATA
  final int preSetChatHistory = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5,
          scrolledUnderElevation: 5,
          bottomOpacity: 1,
          title: Row(children: [
            const Text('UAssist by '),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
              ),
              child: Shimmer.fromColors(
                period: const Duration(milliseconds: 2000),
                baseColor: Theme.of(context).colorScheme.primary,
                highlightColor: Theme.of(context).colorScheme.tertiary,
                child: const Text(
                  'Gemini',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ])),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _chat.history.length <= preSetChatHistory
                ? const Expanded(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 30, left: 30, right: 30, bottom: 30),
                            child: SizedBox(
                              height: 100,
                              width: 200,
                              child: Card(
                                  elevation: 0,
                                  child: Center(
                                    child: Text(
                                      'No conversation yet',
                                      style: TextStyle(
                                        fontSize: 16,
                                        //color: Colors.black,
                                      ),
                                    ),
                                  )),
                            ))))
                : Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemBuilder: (context, idx) {
                        var content = _chat.history.toList()[
                            idx + preSetChatHistory]; // Start from index 1
                        var text = content.parts
                            .whereType<TextPart>()
                            .map<String>((e) => e.text)
                            .join('');
                        return MessageWidget(
                          text: text,
                          isFromUser: content.role == 'user',
                        );
                      },
                      itemCount: _chat.history.length -
                          preSetChatHistory, // Adjust itemCount accordingly
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 5,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          autofocus: true,
                          focusNode: _textFieldFocus,
                          decoration:
                              textFieldDecoration(context, 'Enter a prompt...'),
                          controller: _textController,
                          onSubmitted: (String value) {
                            _sendChatMessage(value);
                          },
                        ),
                      ),
                      const SizedBox.square(
                        dimension: 8,
                      ),
                      if (!_loading)
                        IconButton(
                          onPressed: () async {
                            _sendChatMessage(_textController.text);
                          },
                          icon: Icon(
                            Icons.send,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        )
                      else
                        LoadingAnimationWidget.flickr(
                          leftDotColor: Theme.of(context).colorScheme.primary,
                          rightDotColor: Theme.of(context).colorScheme.error,
                          size: 30,
                        ),
                    ],
                  ),
                  const Text(
                      "*UAssist may display inaccurate info, including about people, so double-check its responses",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _sendChatMessage(String message) async {
    setState(() {
      _loading = true;
    });

    try {
      var response = await _chat.sendMessage(
        Content.text(message),
      );
      var text = response.text;

      if (text == null) {
        _showError('Empty response.');
        return;
      } else {
        setState(() {
          _loading = false;
          _scrollDown();
        });
      }
    } catch (e) {
      _showError(e.toString());
      setState(() {
        _loading = false;
      });
    } finally {
      _textController.clear();
      setState(() {
        _loading = false;
      });
      _textFieldFocus.requestFocus();
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: SingleChildScrollView(
            child: Text(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String text;
  final bool isFromUser;

  const MessageWidget({
    super.key,
    required this.text,
    required this.isFromUser,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            decoration: BoxDecoration(
              color: isFromUser
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            margin: const EdgeInsets.only(bottom: 8),
            child: MarkdownBody(data: text),
          ),
        ),
      ],
    );
  }
}

InputDecoration textFieldDecoration(BuildContext context, String hintText) =>
    InputDecoration(
      contentPadding: const EdgeInsets.all(15),
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
