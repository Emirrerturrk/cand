import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../screens/chat_screen.dart';
import '../screens/donation_screen.dart';
import '../screens/news_screen.dart';
import '../screens/profile_screen.dart';
import '../utilities/constants.dart';

class UpdateLocation extends StatelessWidget {
  const UpdateLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Card(
        semanticContainer: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: const Center(
            child: Text(
          "Update Location",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class OtherScreenButtons extends StatelessWidget {
  const OtherScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: elevatedButton,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Donation();
                },
              ));
            },
            child: const Icon(Icons.attach_money_sharp)),
        ElevatedButton(
            style: elevatedButton,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const News();
                },
              ));
            },
            child: const Icon(Icons.newspaper)),
      ],
    );
  }
}

class OtherScreenButtonsSecondLine extends StatelessWidget {
  const OtherScreenButtonsSecondLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: elevatedButton,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Chat();
                },
              ));
            },
            child: const Icon(Icons.textsms)),
        ElevatedButton(
            style: elevatedButton,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Profile();
                },
              ));
            },
            child: const Icon(Icons.badge)),
      ],
    );
  }
}

class BluetoothActiveButton extends StatefulWidget {
  const BluetoothActiveButton({
    super.key,
  });

  @override
  State<BluetoothActiveButton> createState() => _BluetoothActiveButtonState();
}

class _BluetoothActiveButtonState extends State<BluetoothActiveButton> {
  final List<bool> _selections = List.generate(1, (index) => false);
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      constraints: const BoxConstraints(minHeight: 100, minWidth: 100),
      borderRadius: BorderRadius.circular(80),
      selectedColor: Colors.deepOrangeAccent,
      borderColor: Colors.black,
      fillColor: Colors.black,
      isSelected: _selections,
      onPressed: ((index) {
        setState(() {
          _selections[index] = !_selections[index];
        });
      }),
      children: const [Icon(Icons.bluetooth)],
    );
  }
}

class GmapsSafeArea extends StatelessWidget {
  const GmapsSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: GoogleMap(
        markers: {
          Marker(
            markerId: const MarkerId("marker1"),
            position: const LatLng(39.768180384155436, 30.473947386364582),
            draggable: true,
            onDragEnd: (value) {
              // value is the new position
            },
            // To do: custom marker icon
          ),
          const Marker(
            markerId: MarkerId("marker2"),
            position: LatLng(39.77076749535312, 30.51336937098853),
          ),
        },
        initialCameraPosition: const CameraPosition(
          target: LatLng(39.77719652878587, 30.521123381187163),
          zoom: 7,
        ),
        mapType: MapType.normal,
        rotateGesturesEnabled: true,
        scrollGesturesEnabled: true,
        zoomControlsEnabled: true,
      ),
    );
  }
}

class FastButtons extends StatelessWidget {
  const FastButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black),
            onPressed: () {},
            child: const Icon(Icons.flashlight_on)),
        const SizedBox(width: 10),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black),
            onPressed: () {},
            child: const Icon(Icons.volume_down)),
      ],
    );
  }
}
