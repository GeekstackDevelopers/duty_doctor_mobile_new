// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';

// import '../../config/colors.dart';

// Future<XFile?> pickImageFromGallery() async {
//   final ImagePicker picker = ImagePicker();
//   late XFile? pickedImage;
//   pickedImage = await picker.pickImage(source: ImageSource.gallery);

//   return pickedImage;
// }

// Future<XFile?> pickImageFromCamera() async {
//   final ImagePicker picker = ImagePicker();
//   late XFile? pickedImage;
//   pickedImage = await picker.pickImage(source: ImageSource.camera);
//   return pickedImage;
// }

// Future<String?> cropImage(String path) async {
//   CroppedFile? croppedFile = await ImageCropper().cropImage(
//     aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
//     sourcePath: path,
//     uiSettings: [
//       AndroidUiSettings(
//         cropStyle: CropStyle.circle,
//         toolbarTitle: 'Cropper',
//         toolbarColor: AppColors.primaryColor,
//         toolbarWidgetColor: Colors.white,
//         lockAspectRatio: true,
//         aspectRatioPresets: [
//           CropAspectRatioPreset.square,
//         ],
//       ),
//       IOSUiSettings(
//         title: 'Cropper',
//         aspectRatioPresets: [
//           CropAspectRatioPreset.square,
//         ],
//       ),
//     ],
//   );
//   return croppedFile?.path;
// }

// Future<String?> pickImagefn(ImagePickOption option) async {
//   late XFile? pickedImage;
//   if (option == ImagePickOption.camera) {
//     pickedImage = await pickImageFromCamera();
//     if (pickedImage == null) {
//       return null;
//     }
//   } else {
//     pickedImage = await pickImageFromGallery();
//     if (pickedImage == null) {
//       return null;
//     }
//   }
//   return await cropImage(pickedImage.path);
// }

// enum ImagePickOption { camera, gallery }
