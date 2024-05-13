import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/error_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/forgot_password.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/login_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/otp_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/reset_password.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/signup_screen.dart';
import 'package:broadcaadvendor/features/auth/presentation/screens/verification_successful.dart';
import 'package:broadcaadvendor/features/home/presentation/screens/home.dart';
import 'package:broadcaadvendor/features/notifications/screens/notifications_screens.dart';
import 'package:broadcaadvendor/features/products/presentation/screens/add_products_screen.dart';
import 'package:broadcaadvendor/features/products/presentation/screens/categories_items_screen.dart';
import 'package:broadcaadvendor/features/products/presentation/screens/edit_products.dart';
import 'package:broadcaadvendor/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:broadcaadvendor/features/profile/presentation/screens/vendor_profile.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/ai_create_service_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/booked_services_details.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/booked_services_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/completed_rejected_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/create_service_manually_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/create_your_first_service_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/edit_service_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/my_services_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/pending_services_details_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/pending_services_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/rejected_completed_service_details_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/service_quality_performance_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/service_summary_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/upload_package_screen.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/ai_create_store_screen.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/edit_store_screen.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/first_store_creation.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/prompt_albert_screen.dart';
import 'package:broadcaadvendor/features/store/presentation/screens/store_creation_form_screen.dart';
import 'package:broadcaadvendor/features/wallet/presentation/screens/all_transaction_screens.dart';
import 'package:broadcaadvendor/features/wallet/presentation/screens/my_wallet_screen.dart';
import 'package:broadcaadvendor/features/wallet/presentation/screens/transaction_details.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case Routes.verificationSuccessful:
        return MaterialPageRoute(
          builder: (_) => const VerificationSuccessfulScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.firstStoreCreation:
        return MaterialPageRoute(
          builder: (_) => const FirstStoreCreationScreen(),
        );
      case Routes.storeCreationForm:
        return MaterialPageRoute(
          builder: (_) => const StoreCreationFormScreeen(),
        );
      case Routes.editStore:
        return MaterialPageRoute(
          builder: (_) => const EditStoreScreen(),
        );
      case Routes.addProduct:
        return MaterialPageRoute(
          builder: (_) => const AddProductsScreen(),
        );
      case Routes.categoryItems:
        return MaterialPageRoute(
          builder: (_) => const CategoriesItemsScreen(),
        );

      case Routes.editProduct:
        return MaterialPageRoute(
          builder: (_) => const EditProductsScreen(),
        );
      case Routes.aiCreateStore:
        return MaterialPageRoute(
          builder: (_) => const AiCreateStoreScreen(),
        );

      case Routes.aiCreateService:
        return MaterialPageRoute(
          builder: (_) => const AiCreateServiceScreen(),
        );
      case Routes.prompAlbert:
        bool isMicrophoneEnabled = routeSettings.arguments as bool;
        return MaterialPageRoute(
          builder: (_) =>
              PromptAlbertScreen(isMicrophoneEnabled: isMicrophoneEnabled),
        );
      case Routes.createFirstService:
        return MaterialPageRoute(
          builder: (_) => const CreateYourFirstServiceScreen(),
        );
      case Routes.serviceCreationFormScreen:
        return MaterialPageRoute(
          builder: (_) => const ServiceCreationFormScreen(),
        );

      case Routes.notifications:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const VendorProfileScreen(),
        );

      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );

      case Routes.myServices:
        return MaterialPageRoute(
          builder: (_) => const MyServicesScreen(),
        );

      case Routes.serviceSummary:
        return MaterialPageRoute(
          builder: (_) => const ServiceSummaryScreen(),
        );
      case Routes.editServiceProfile:
        return MaterialPageRoute(
          builder: (_) => const EditServiceScreen(),
        );
      case Routes.addPackage:
        return MaterialPageRoute(
          builder: (_) => const AddServicePackageScreen(),
        );

      case Routes.bookedService:
        return MaterialPageRoute(
          builder: (_) => const BookedServicesScreen(),
        );

      case Routes.bookedServicesDetails:
        return MaterialPageRoute(
          builder: (_) => const BookedServicesDetailsScreen(),
        );

      case Routes.pendingServices:
        return MaterialPageRoute(
          builder: (_) => const PendingServicesScreen(),
        );

      case Routes.pendingServicesDetials:
        return MaterialPageRoute(
          builder: (_) => const PendingServicesDetailsScreen(),
        );

      case Routes.myWallet:
        return MaterialPageRoute(
          builder: (_) => const MyWalletScreen(),
        );
      case Routes.allTransactons:
        return MaterialPageRoute(
          builder: (_) => const AllTransactionsScreen(),
        );
      case Routes.transactionDetails:
        return MaterialPageRoute(
          builder: (_) => const TransactionDetailsScreen(),
        );

      case Routes.serviceQualityPerformanceScreen:
        return MaterialPageRoute(
          builder: (_) => const ServiceQualityPerformanceScreen(),
        );

      case Routes.completedRejectedServices:
        return MaterialPageRoute(
          builder: (_) => const CompletedRejectedServicesScreen(),
        );
      case Routes.rejectedCompletedServiceDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const RejectedCompletedServiceDetailsScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
