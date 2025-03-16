# ORBBEC-ASTRA-SLAM

* To clone the repository and submodules:

```bash
git clone --recurse-submodules https://github.com/VRI-UFPR/ORBBEC-ASTRA-SLAM.git
# or
git clone --recursive https://github.com/VRI-UFPR/ORBBEC-ASTRA-SLAM.git
```

* To compile the ROS workspace:

```bash
cd ros_ws
catkin_make
```

* To compile the ORB SLAM3 and ROS package:

```bash
cd ORB_SLAM3
./build.sh
source ../ros_ws/devel/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/workspace/ORB_SLAM3/Examples/ROS
./build_ros.sh
```

* To access the ROS master from another machine in the same network, run in all terminals:

```bash	
# Replace 10.0.0.3 with the IP of the machine running the ROS master
export ROS_MASTER_URI=http://10.0.0.3:11311 && export ROS_HOSTNAME=10.0.0.3
```

* To run the ORBBEC camera node:

```bash
source ros_ws/devel/setup.bash
roslaunch astra_launch astra.launch
```

* To run the ORB SLAM3 node:

```bash
source ros_ws/devel/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/workspace/ORB_SLAM3/Examples/ROS
rosrun ORB_SLAM3 RGBD /workspace/ORB_SLAM3/Vocabulary/ORBvoc.txt /workspace/ORBBEC_ASTRA.yaml
```

* To check the pose of the camera:

```bash
rostopic echo /ORB_SLAM3/CameraPose
```