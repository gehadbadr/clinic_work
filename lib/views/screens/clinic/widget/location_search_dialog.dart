import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationSearchDialog extends StatelessWidget {
  final GoogleMapController? mapController;
  final bool? isPickedUp;
  final bool isRider;
  final bool isFrom;
  const LocationSearchDialog(
      {Key? key,
      required this.mapController,
      this.isPickedUp,
      this.isRider = false,
      this.isFrom = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Container(
      width: 500,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
            child: TypeAheadField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: controller,
            textInputAction: TextInputAction.search,
            autofocus: true,
            textCapitalization: TextCapitalization.words,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
              hintText: 'موقع البحث',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(style: BorderStyle.none, width: 0),
              ),
              hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 16,
                    color: Theme.of(context).disabledColor,
                  ),
              filled: true,
              fillColor: Theme.of(context).cardColor,
            ),
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  fontSize: 14,
                ),
          ),
          suggestionsCallback: (pattern) async {
            return await [];
          },
          itemBuilder: (context, _) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                const Icon(Icons.location_on),
                Expanded(
                  child: Text('',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                            fontSize: 14,
                          )),
                ),
              ]),
            );
          },
          onSuggestionSelected: (val) {},
        )),
      ),
    );
  }
}
