import 'package:demo_dec/api/add_location_weather.dart';
import 'package:demo_dec/values/style.dart';
import 'package:demo_dec/widget/autocomplete_prediction.dart';
import 'package:demo_dec/widget/common_bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import '../../api/api_keys.default.dart';
import '../../values/colors.dart';
import '../../widget/location_title_list.dart';
import '../../widget/place_auto_complete_response.dart';

class LocationSearchPage extends StatefulWidget {
  const LocationSearchPage({super.key});

  @override
  State<LocationSearchPage> createState() => _LocationSearchPageState();
}

class _LocationSearchPageState extends State<LocationSearchPage> {
  WeatherModel weatherModel = WeatherModel();
  List<AutocompletePrediction> placePrediction = [];
  Future<void> placeAutoComplete(String quary) async {

    Uri uri = Uri.https(
        "maps.googleapis.com",
        'maps/api/place/autocomplete/json',
        {"input": quary, "key": "AIzaSyDuY6tpSZHq7DM3TvRqjrKs3UMhVdsumdc"});
    String? response = await WeatherModel.fetchUrl(uri);
    if (response != null) {
      print("resp ${response}");
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);
      if(result.predictions!=null){
        setState(() {
          placePrediction=result.predictions!;
        });

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonBgWidget(

      body: SafeArea(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: TextFormField(
                  onChanged: (value) {
                    placeAutoComplete(value);
                  },
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    hintText: "Search your location",

                    prefixIcon: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 12.r),
                        child: Icon(Icons.location_history,color: Colors.white,)),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            Padding(
              padding: EdgeInsets.all(10.r),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.location_history,color: Colors.white,),
                label: const Text("Use my Current Location"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.white.withOpacity(0.3),
                  foregroundColor: AppColor.white,
                  elevation: 0,
                  fixedSize: const Size(double.infinity, 40),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: placePrediction.length,
                itemBuilder: (context,index)=>
                  LocationListTile(
                    press: () {},
                    location: placePrediction[index].description!,
                  ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
