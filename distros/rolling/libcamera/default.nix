
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, pythonPackages, udev }:
buildRosPackage {
  pname = "ros-rolling-libcamera";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/rolling/libcamera/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "d63c056debe69db088e1dfd3539671617009b176afaef235e00298fb817d0f70";
  };

  buildType = "meson";
  buildInputs = [ meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pyyaml pythonPackages.pybind11 ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ meson ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
