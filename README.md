<<<<<<< HEAD
<<<<<<< HEAD
# Language Learning App with Object Recognition 📸🗣️

![Project Poster](19COMP1009_Poster.jpg)

> **Thesis Project** | **Student:** Rana Selim | **Supervisor:** Asst. Prof. Rahim Dehkharghani  
> **FMV Işık University - Computer Science and Engineering**

## 📖 Overview
[cite_start]The **Language Learning App with Object Recognition** is a mobile application designed to improve vocabulary skills for language learners, specifically those with visual memory[cite: 16, 22]. [cite_start]By utilizing deep learning and computer vision, the app identifies objects through the camera in real-time and displays the corresponding vocabulary word in a selected foreign language[cite: 16].

[cite_start]The system integrates **TensorFlow Lite** for object recognition and **Google Translate API** for translations, wrapped in a cross-platform **Flutter** application[cite: 62, 82].

## ✨ Key Features
* [cite_start]**Real-Time Object Detection:** Uses a CNN-based deep learning model to recognize common objects (fruits, furniture, animals, etc.) instantly[cite: 7, 28].
* **Multi-Language Support:** Supports up to 15 different languages for learning.
* [cite_start]**Text-to-Speech (TTS):** Integrated audio feature to help users learn the correct pronunciation of words[cite: 30].
* [cite_start]**Cross-Platform:** Built with Flutter, available for both iOS and Android devices[cite: 53, 204].
* **Offline Capability:** The detection model runs locally on the device, requiring no internet connection for the recognition process.

## 🛠️ Tech Stack
* **Mobile Framework:** [Flutter](https://flutter.dev/) (Dart)
* **Machine Learning:** [TensorFlow Lite](https://www.tensorflow.org/lite)
* [cite_start]**Neural Network Architecture:** Convolutional Neural Networks (CNN) [cite: 7]
* [cite_start]**Translation Service:** Google Translate API [cite: 82]
* **IDE:** VS Code / Android Studio

## 🏗️ System Architecture
The software architecture works by capturing an image via the **User Interface Subsystem** (Flutter), passing it to the **Control Subsystem**, which queries the **Recognition Subsystem** (TFLite) for the object label. [cite_start]The label is then translated via the **Translation Subsystem** and displayed back to the user [cite: 71-83].

![Architecture Diagram](Architecture%20Diagram.png)

### Design & Modeling
The project follows a modular design to ensure high performance and maintainability. Below are the core interaction flows:

* [cite_start]**Sequence Diagram:** Shows the flow from opening the camera -> capturing image -> recognizing object -> displaying translation -> TTS output[cite: 88].
* [cite_start]**Class Diagram:** Utilizes a clean structure separating the `User` logic from the `App` processing logic[cite: 69].

## 🚀 Development Timeline
[cite_start]The project was developed over a 133-day lifecycle, moving from requirements elicitation to system design, dataset preparation, model training, and final integration[cite: 281].

![Gantt Chart](GANTT-CHART.png)

## 📱 Screenshots
| Home Screen | Camera Detection | Translation Result |
|:-----------:|:----------------:|:------------------:|
| ![Home](path/to/home.png) | ![Camera](path/to/camera.png) | ![Result](path/to/result.png) |

## 📦 Installation
To run this project locally:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/yourusername/language-learning-object-recognition.git](https://github.com/yourusername/language-learning-object-recognition.git)
    ```
2.  **Install dependencies:**
    ```bash
    cd language-learning-object-recognition
    flutter pub get
    ```
3.  **Run the app:**
    ```bash
    flutter run
    ```
    *Note: Ensure you have an Android Emulator or physical device connected.*

## 📄 License
This project was developed as a senior thesis project at FMV Işık University, 2023.

## 👥 Credits
* [cite_start]**Developer:** Rana Selim [cite: 12]
* **Supervisor:** Asst. Prof. Rahim Dehkharghani
=======
=======
>>>>>>> 2694c38bd681159e5a37e586e1159057c80fe9fe
# object_detection
## Machine Learning powered Android Application
This application can detect objects in any of the three ways:
  * Image choosen from Gallery
  * From image taken within the App
  * Real time in video stream
<<<<<<< HEAD
>>>>>>> 2694c38 (Initial commit)
=======
>>>>>>> 2694c38bd681159e5a37e586e1159057c80fe9fe
