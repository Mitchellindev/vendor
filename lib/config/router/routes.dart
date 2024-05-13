class Routes {
  //Auth
  // static const String landing = '/login';
  static const String login = '/';
  static const String phoneNumber = '/phoneNumber';
  static const String otpVerification = '/otpVerification';
  static const String signUp = '/signUp';
  static const String verificationSuccessful = '/verificationSuccessful';
  static const String forgotPassword = '/forgotPassword';

  static const String resetPassword = '/resetPasswords';

//Home
  static const String home = '/home';

  //Store
  static const String firstStoreCreation = '/firstStoreCreation';
  static const String storeCreationForm = '/storeCreationForm';
  static const String editStore = '/editStore';
  static const String aiCreateStore = '/aiCreateStore';
  static const String prompAlbert = '/promptAlbert';

  //Products
  static const String addProduct = '/addProduct';
  static const String categoryItems = '/categoryItems';
  static const String editProduct = '/editProduct';

  //Services
  static const String createFirstService = '/createFirstService';
  static const String serviceCreationFormScreen = '/serviceCreationFormScreen';
  static const String serviceSummary = '/serviceSummary';
  static const String editServiceProfile = '/editServiceProfile';
  static const String addPackage = '/addPackage';
  static const String bookedService = '/bookedService';
  static const String bookedServicesDetails = '/bookedServicesDetails';
  static const String pendingServices = '/pendingServices';
  static const String pendingServicesDetials = '/pendingServicesDetials';
  static const String serviceQualityPerformanceScreen =
      '/serviceQualityPerformanceScreen';

  static const String rejectedCompletedServiceDetailsScreen =
      '/rejectedCompletedServiceDetailsScreen';

  //Notification
  static const String notifications = '/notifications';

  //Profile
  static const String profile = '/profile';
  static const String editProfile = '/editProfile';
  static const String myServices = '/myServices';
  static const String completedRejectedServices = '/completedRejectedService';

  //Wallet
  static const String myWallet = '/myWallet';
  static const String allTransactons = '/allTransactons';
  static const String transactionDetails = '/transactionDetails';
}
