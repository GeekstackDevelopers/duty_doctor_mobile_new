class ApiEndPoints {
  //onboarding section
  static const String login = '/api/doctor/auth/login'; //post (email)
  static const String otpVerifyLogin =
      '/api/doctor/auth/verifyOtp'; //post (email,otp),
  static const String refreshToken = '/api/doctor/auth/refresh'; //post
  static const String emailVerifyReg =
      '/api/doctor/auth/verifyEmail'; //post - /api/doctor/auth/verifyEmail - email
  static const String signUP =
      '/api/doctor/auth/signup'; //post (firstName: string ,lastName: string, ,degree: string; email: string; startDate:String; endDate:String; completion: string; country: string; instituteName: string; medicalRegistrationNumber: string; academicYear: string; pgDegree: string; speciality: string;  fellowship: string;  profilePic: string; mobileNumber)
  //main section
  static const String addDegree = '/api/doctor/degree'; //patch
  //location
  static const String saveLocation =
      '/api/doctor/location'; //patch - address,latitude,longitude
  static const String getLocation = '/api/doctor/location'; //get

  //profile section
  static const String profile = '/api/doctor'; //get
  static const String getProfileCompletion = '/api/doctor/profileCompletion';
  static const String updateProfile = '/api/doctor'; //Patch
  static const String deleteAccount = '/api/doctor'; //Delete
  static const String deactivateAccount = '/api/doctor/deactivate'; //deactivate
  static const String appliedJobs = '/api/doctor/job/appliedJobs'; //get
  static const String updateEmailSendOtp =
      '/api/doctor/updateEmail'; //post {email}
  static const String updateEmail = '/api/doctor/updateEmail'; //patch {email}
  static const String addExperience = '/api/doctor/experience'; //post
  static const String updateExperience = '/api/doctor/experience'; //patch
  static String deleteExperience(String experienceId) =>
      '/api/doctor/experience?experienceId=$experienceId'; //delete
  static const String addOnlineProfile =
      '/api/doctor/online-profiles'; //post (platform, link)
  static String updateOnlineProfile(String onlineProfileId) =>
      '/api/doctor/online-profiles/$onlineProfileId'; //patch {platform,link}
  static String deleteOnlineProfile(String onlineProfileId) =>
      '/api/doctor/online-profiles/$onlineProfileId'; // delete

  static const String buildResume = '/api/doctor/resume-builder';

  //doc section
  static const String uploadPersonalDocs =
      '/api/doctor/personalDocs'; //post{type('aadhar'),personalDoc(file)}
  static const String getPersonalDocs = '/api/doctor/personalDocs'; //get
  static const String uploadProfessionalDocs =
      '/api/doctor/professionalDocs'; //post- type,professionalDoc(file),certificateType
  static const String getProfessionalDocs =
      '/api/doctor/professionalDocs'; //get
  static const String uploadMandatoryTraining =
      '/api/doctor/mandatoryTraining'; //post name,mandatoryTraining(file)
  static const String getMandatoryTraining =
      '/api/doctor/mandatoryTraining'; //get
  static const String uploadImmunisation =
      '/api/doctor/immunisation'; //post -name,immunisation(file)
  static const String getImmunisation = '/api/doctor/immunisation'; //get

  //chat section\
  static const String getAllChat = '/api/doctor/messages/chat'; //get
  static const String createChat =
      '/api/doctor/messages/chat'; //post {recipientId,recipientType:'Hospital'}
  static const String postMessages =
      '/api/doctor/messages'; //post {chatId ,content(file or string)} formdata
  static String getMessages(String chatId) =>
      '/api/doctor/messages?chatId=$chatId'; //get
  static String changeStatusShortlisted =
      '/api/doctor/job'; //patch {applicationId,status}
  static String chatMarkAsRead = '/api/doctor/messages'; // patch (chatId)

  //duty section
  static String getAllDuties(String sortBy, {int pageNo = 1}) =>
      '/api/doctor/job?sortBy=$sortBy&page=$pageNo'; //get
  static String getSingleDutie(String id) => '/api/doctor/job/$id'; //get- jobId
  static const String saveOrUnsaveJob =
      '/api/doctor/job/saveOrUnsaveJob'; //patch
  static const String savedJobs = '/api/doctor/job/savedJobs'; //get
  static const String applyJob = '/api/doctor/job/applyJob'; // post - jobId
  static const String getRecommendedDutys = '/api/doctor/job/recommended'; //get
  static const String addReview =
      '/api/doctor/job/review'; //post - hospitalId,feedback,rating
  static String searchDutys(String args) => '/api/doctor/search?$args';
  static const String recentSearches = '/api/doctor/recent-search';

  //notification
  static const String getNotifications = '/api/doctor/notification'; //
  static const String patchNotification =
      '/api/doctor/notification'; //for mark as read
  static const String deleteNotification =
      '/api/doctor/notification'; //delete for clearing notification
  static const String notificationMarkAsRead =
      '/api/doctor/notification'; //patch {}

  //hostpital
  static String searchHospitalByName(String query) =>
      '/api/doctor/hospital?search=$query'; //get
  static String getAllDepartments(String hospitalId) =>
      '/api/doctor/hospital/departments?hospitalId=$hospitalId';
  static String getAllBranches(String hospitalId) =>
      '/api/doctor/hospital/branches?hospitalId=$hospitalId';
}
