
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-typesupport-interface";
  version = "4.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_typesupport_interface/4.6.3-1.tar.gz";
    name = "4.6.3-1.tar.gz";
    sha256 = "8b40f3559b4f1e3cda9eed586501eb86331e8ffae49187d9d06351684d6694f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The interface for rosidl typesupport packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
