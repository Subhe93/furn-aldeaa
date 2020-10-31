import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/widgets/RoundedButton.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int currentview = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [page1(), page2(), page3(), page4(), page5()];
    return pages[currentview];
  }

  Widget page1() {
    Color boxColor = Colors.black26;
    return Container(
      height: 300,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  Applocalizations.of(context).translate("Contineu with email"),
                  style: TextStyle(
                      color: brown, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Icon(Icons.cancel)),
                )
              ],
            ),
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: boxColor),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 4),
                    child: Text(
                      Applocalizations.of(context).translate("Enter email") +
                          '*',
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          boxColor = Colors.black87;
                        });
                      },
                      onFieldSubmitted: (value) => {
                        setState(() {
                          currentview = 1;
                        })
                      },
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        setState(() {
                          boxColor = Colors.black54;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: Applocalizations.of(context)
                              .translate("Enter email here"),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget page2() {
    return Container(
      height: 600,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (Column(
              children: [
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        child: FlatButton(
                            onPressed: () => {
                                  setState(() {
                                    currentview = 0;
                                  })
                                },
                            child: Icon(Icons.arrow_back_ios)),
                      ),
                      Text(
                        Applocalizations.of(context)
                            .translate("Create Account"),
                        style: TextStyle(
                            color: brown,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 60,
                        child: FlatButton(
                            onPressed: () => {Navigator.pop(context)},
                            child: Icon(Icons.cancel)),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            border: Border.all(
                                width: 1, color: Colors.black.withOpacity(0.2)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0, top: 4),
                                child: Text(
                                  Applocalizations.of(context)
                                          .translate("Enter email") +
                                      '*',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: TextFormField(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  onFieldSubmitted: (value) => {
                                    setState(() {
                                      currentview = 2;
                                    })
                                  },
                                  textInputAction: TextInputAction.next,
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                  decoration: InputDecoration(
                                      hintText: Applocalizations.of(context)
                                          .translate("Enter email here"),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.05),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0, top: 4),
                                        child: Text(
                                          Applocalizations.of(context)
                                                  .translate("First Name") +
                                              '*',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 10),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                        child: TextFormField(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          onFieldSubmitted: (value) => {
                                            setState(() {
                                              currentview = 2;
                                            })
                                          },
                                          textInputAction: TextInputAction.next,
                                          onChanged: (value) {
                                            setState(() {});
                                          },
                                          decoration: InputDecoration(
                                              hintText: Applocalizations.of(
                                                      context)
                                                  .translate("First name here"),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.05),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0, top: 4),
                                        child: Text(
                                          Applocalizations.of(context)
                                                  .translate("Last name") +
                                              '*',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 10),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                        child: TextFormField(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          onFieldSubmitted: (value) => {
                                            setState(() {
                                              currentview = 2;
                                            })
                                          },
                                          textInputAction: TextInputAction.next,
                                          onChanged: (value) {
                                            setState(() {});
                                          },
                                          decoration: InputDecoration(
                                              hintText: Applocalizations.of(
                                                      context)
                                                  .translate("Last name  here"),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            border: Border.all(
                                width: 1, color: Colors.black.withOpacity(0.1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0, top: 4),
                                child: Text(
                                  Applocalizations.of(context)
                                          .translate("Password") +
                                      '*',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: TextFormField(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  obscureText: true,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                  decoration: InputDecoration(
                                      hintText: '**********',
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(Applocalizations.of(context).translate(
                                      "By Continueing you accept the ")),
                                  GestureDetector(
                                      child: Text(
                                          Applocalizations.of(context)
                                              .translate("Terms of user"),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.black)),
                                      onTap: () {
                                        // do what you need to do when "Click here" gets clicked
                                      }),
                                  Text(Applocalizations.of(context)
                                      .translate(" and"))
                                ],
                              ),
                              GestureDetector(
                                  child: Text(
                                      Applocalizations.of(context)
                                          .translate("Privact Policy"),
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.black)),
                                  onTap: () {
                                    // do what you need to do when "Click here" gets clicked
                                  }),
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            )),
            Container(
              height: 70,
              child: RoundedButton(
                onPressed: () {
                  setState(() {
                    currentview = 2;
                  });
                },
                title: Applocalizations.of(context).translate("Create account"),
                backgroundColor: yellow,
                textColor: Colors.white,
                icon: null,
                iconColor: Colors.white,
                disabeld: false,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget page3() {
    return Container(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    child: FlatButton(
                        onPressed: () => {
                              setState(() {
                                currentview = 1;
                              })
                            },
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                  Text(
                    Applocalizations.of(context)
                        .translate("Enter Phone Number"),
                    style: TextStyle(
                        color: brown,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 60,
                    child: FlatButton(
                        onPressed: () => {Navigator.pop(context)},
                        child: Icon(Icons.cancel)),
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
              child: Text(Applocalizations.of(context).translate(
                  "Please enter your phone number in case we need to contact you during delivery")),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  border: Border.all(
                      width: 1, color: Colors.black.withOpacity(0.1)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InternationalPhoneNumberInput(
                      inputBorder: InputBorder.none,
                      onInputChanged: (value) => {print(value)}),
                ),
              ),
            ),
            SizedBox(
              height: 110,
            ),
            RoundedButton(
              onPressed: () {
                setState(() {
                  currentview = 3;
                });
              },
              title: Applocalizations.of(context).translate("Next"),
              backgroundColor: yellow,
              textColor: Colors.white,
              icon: null,
              iconColor: Colors.white,
              disabeld: false,
            )
          ],
        ),
      ),
    );
  }

  Widget page4() {
    return Container(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    child: FlatButton(
                        onPressed: () => {
                              setState(() {
                                currentview = 2;
                              })
                            },
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                  Text(
                    Applocalizations.of(context)
                        .translate("Verify phone number"),
                    style: TextStyle(
                        color: brown,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 60,
                    child: FlatButton(
                        onPressed: () => {Navigator.pop(context)},
                        child: Icon(Icons.cancel)),
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
            ),
            SizedBox(
              height: 20,
            ),
            Text(Applocalizations.of(context)
                .translate("Please enter the code we sent you at ")),
            Text("0963 233 222 332",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.black)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          maxLength: 1,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          maxLength: 1,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          maxLength: 1,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          maxLength: 1,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
                onPressed: null,
                child: Text(
                    Applocalizations.of(context).translate("Resend Code"))),
            SizedBox(height: 30),
            RoundedButton(
              onPressed: () {
                setState(() {
                  currentview = 4;
                });
              },
              title: Applocalizations.of(context).translate("Verify"),
              backgroundColor: yellow,
              textColor: Colors.white,
              icon: null,
              iconColor: Colors.white,
              disabeld: false,
            )
          ],
        ),
      ),
    );
  }

  Widget page5() {
    var obscure = true;
    Color boxColor = Colors.black26;
    return Container(
      height: 400,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {
                            setState(() {
                              currentview = 2;
                            })
                          },
                      child: Icon(Icons.arrow_back_ios)),
                ),
                Text(
                  Applocalizations.of(context).translate("Login"),
                  style: TextStyle(
                      color: brown, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Icon(Icons.cancel)),
                )
              ],
            ),
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: boxColor),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 15, right: 8),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Applocalizations.of(context).translate("Email") + '*',
                          style: TextStyle(color: Colors.black87),
                        ),
                        TextFormField(
                          onTap: () {
                            setState(() {
                              boxColor = Colors.black87;
                            });
                          },
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            setState(() {
                              boxColor = Colors.black54;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: Applocalizations.of(context)
                                  .translate("Enter email here"),
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 95,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: boxColor),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 15, right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Applocalizations.of(context).translate("Password") +
                        '*'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                boxColor = Colors.black87;
                              });
                            },
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              setState(() {
                                boxColor = Colors.black54;
                              });
                            },
                            obscureText: obscure,
                            decoration: InputDecoration(
                                hintText: '**********',
                                border: InputBorder.none),
                          ),
                        ),
                        FlatButton(
                            onPressed: () {
                              setState(() {
                                obscure ? obscure = true : obscure = false;
                              });
                            },
                            child: Text(
                              Applocalizations.of(context).translate("Show"),
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RoundedButton(
            onPressed: () {
              setState(() {
                currentview = 4;
              });
            },
            title: Applocalizations.of(context).translate("Login"),
            backgroundColor: yellow,
            textColor: Colors.white,
            icon: null,
            iconColor: Colors.white,
            disabeld: false,
          )
        ],
      ),
    );
  }
}
