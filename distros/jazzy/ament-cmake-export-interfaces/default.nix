
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-libraries }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-interfaces";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_interfaces/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "59559945bc474e50e1a4d53024ac104b0744580a04f683e0e15dcddc22ffb8f1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-libraries ];

  meta = {
    description = "The ability to export interfaces to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
