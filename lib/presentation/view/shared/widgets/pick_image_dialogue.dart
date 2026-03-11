import 'dart:ui';

import 'package:duty_doctor/app.dart';

ValueNotifier<String?> imageNotifier = ValueNotifier(null);

Future pickImage(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    enableDrag: false,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.sizeOf(context).height * 0.9,
    ),
    isScrollControlled: true,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: const PickImageDialogueUI(),
    ),
  );
}

class PickImageDialogueUI extends StatelessWidget {
  const PickImageDialogueUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: AppColors.backgroudColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Choose an action',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CameraGalleryIcon(), CameraGalleryIcon(isCamera: false)],
          ),
        ],
      ),
    );
  }
}

class CameraGalleryIcon extends StatelessWidget {
  final bool isCamera;
  const CameraGalleryIcon({super.key, this.isCamera = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        context.pop();
        // imageNotifier.value = await pickImagefn(
        //     isCamera ? ImagePickOption.camera : ImagePickOption.gallery);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(
              isCamera ? Icons.camera : Icons.image,
              color: AppColors.backgroudColor,
            ),
          ),
          Text(
            isCamera ? 'Camera' : 'Gallery',
            style: const TextStyle(
              fontSize: 10,
              height: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
