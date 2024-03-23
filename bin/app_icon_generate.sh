#!/usr/bin/env bash

fvm flutter test test/design_assets --update-goldens --tags app_store_screenshots

fvm dart run flutter_launcher_icons
