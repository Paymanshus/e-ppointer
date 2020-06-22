import 'package:flutter/material.dart';

import 'package:eppointer/models/appointment_model.dart';

class AppointmentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: appointments.length,
        itemBuilder: (BuildContext context, int index) {
          Appointment appointment = appointments[index];
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: 75.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image(
                        image: AssetImage(appointment.storeImg),
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            appointment.storeName,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_today,
                                  color: Theme.of(context).accentColor,
                                ),
                                Text(
                                  appointment.apptDate,
                                ),
                                Icon(
                                  Icons.timer,
                                  color: Theme.of(context).accentColor,
                                ),
                                Text(
                                  appointment.apptTime[0],
                                ),
                                Text('-'),
                                Text(
                                  appointment.apptTime[1],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
