# OpenposeDragDrop  

## Overview  
A simple drag-and-drop batch script for Windows that allows you to process `.mp4` or `.avi` videos with OpenPose effortlessly. Just drag your video file onto the batch script, and OpenPose will automatically launch and start processing.  

---

## OpenPose Setup & Test Before Using OpenposeDragDrop.bat  

### 1. Verify prerequisites  
- NVIDIA GPU drivers + CUDA installed  
- Visual C++ Redistributables installed (available from the [Microsoft website](https://learn.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170))  
- Python 3.7 installed (optional, if using Python scripting)  

👉 **Check Python version in Command Prompt:**  
```cmd
python --version
```
or  
```cmd
py --version
```
Make sure it returns Python 3.7.x. If not, download Python 3.7 from the [official Python website](https://www.python.org/downloads/release/python-370/).  

---

### 2. Unpack OpenPose  
- Download the latest OpenPose version from the [Releases section](https://github.com/CMU-Perceptual-Computing-Lab/openpose/releases)  
- Unzip it to your preferred directory  

---

### 3. Download OpenPose models (if missing)  
Check if these files exist in `openpose\models\pose\body_25`:  
```
├── pose\
    ├── body_25\
        ├── pose_iter_584000.caffemodel
        ├── pose_deploy.prototxt
```  

#### If not present:  
3-1. Open Command Prompt and `cd` into the `openpose` directory  
3-2. Run:  
```cmd
models\getModels.bat
```  
This will automatically download all required `.caffemodel` files.  

👉 **If `getModels.bat` is missing:**  
- Download the Body_25 model manually from [this link](https://github.com/foss-for-synopsys-dwc-arc-processors/synopsys-caffe-models/blob/master/caffe_models/openpose/caffe_model/pose_iter_584000.caffemodel)  
- Place it in:  
```
...\openpose\models\pose\body_25\pose_iter_584000.caffemodel
```  

---

### 4. Test OpenPose  
From the OpenPose directory, run:  
```cmd
bin\OpenPoseDemo.exe --video examples\media\video.avi --write_json output_json --display 1 --render_pose 1
```  
✅ If you see skeleton overlays and JSON outputs, OpenPose is working!  

---

## How to Use OpenposeDragDrop.bat  

1. Clone or download this repository.  
2. Complete the OpenPose setup and test (as shown above).  
3. Place `OpenposeDragDrop.bat` in your OpenPose directory, or adjust paths inside the script if needed.  
4. Drag and drop your `.mp4` or `.avi` file onto `OpenposeDragDrop.bat`.  
A command window will open, and OpenPose will start processing automatically.  

---

## Example  
```bash  
video.mp4 ➡ drag onto OpenposeDragDrop.bat  
```  

---

## License  
This project is licensed under the MIT License.  