#!/usr/bin/env bash

# generate from csv
dart pub get
dart run arb_generator

# generate localization delegates
flutter pub get
