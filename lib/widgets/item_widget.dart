import 'package:flutter/material.dart';
import 'package:untitled/models/number_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.numberModel});
  final ItemModel numberModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 8,top: 16),
      child: Row(
        children: [
          numberModel.image == null
              ? Container()
              : Image.asset(
                  numberModel.image!,
                  height: 70,
                ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(numberModel.englishName,
              style: const TextStyle(
                fontSize: 20
              ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(numberModel.japaneseName,
               style: const TextStyle(
                fontSize: 16,
              ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            iconSize: 32,
            onPressed: () {
              numberModel.playSound(sound: numberModel.sound);
            },
            icon: const Icon(
              Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}
