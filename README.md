# Language Learning App with Object Recognition 📸🗣️

![Project Poster](19COMP1009_Poster.jpg)

> **Thesis Project** | **Student:** Rana Selim | **Supervisor:** Asst. Prof. Rahim Dehkharghani  
> **FMV Işık University - Computer Science and Engineering**

## 📖 Overview
The **Language Learning App with Object Recognition** is a mobile application designed to improve vocabulary skills for language learners, specifically those with visual memory. By utilizing deep learning and computer vision, the app identifies objects through the camera in real-time and displays the corresponding vocabulary word in a selected foreign language.

The system integrates **TensorFlow Lite** for object recognition and **Google Translate API** for translations, wrapped in a cross-platform **Flutter** application.

## ✨ Key Features
* **Real-Time Object Detection:** Uses a CNN-based deep learning model to recognize common objects (fruits, furniture, animals, etc.) instantly.
* **Multi-Language Support:** Supports up to 15 different languages for learning.
* **Text-to-Speech (TTS):** Integrated audio feature to help users learn the correct pronunciation of words.
* **Cross-Platform:** Built with Flutter, available for both iOS and Android devices.
* **Offline Capability:** The detection model runs locally on the device, requiring no internet connection for the recognition process.

## 🛠️ Tech Stack
* **Mobile Framework:** [Flutter](https://flutter.dev/) (Dart)
* **Machine Learning:** [TensorFlow Lite](https://www.tensorflow.org/lite)
* **Neural Network Architecture:** Convolutional Neural Networks (CNN)
* **Translation Service:** Google Translate API
* **IDE:** VS Code / Android Studio

## 🏗️ System Architecture
The software architecture works by capturing an image via the **User Interface Subsystem** (Flutter), passing it to the **Control Subsystem**, which queries the **Recognition Subsystem** (TFLite) for the object label. The label is then translated via the **Translation Subsystem** and displayed back to the user.

![Architecture Diagram](Architecture%20Diagram.png)

### Design & Modeling
The project follows a modular design to ensure high performance and maintainability. Below are the core interaction flows:

* **Sequence Diagram:** Shows the flow from opening the camera -> capturing image -> recognizing object -> displaying translation -> TTS output.
* **Class Diagram:** Utilizes a clean structure separating the `User` logic from the `App` processing logic.

## 🚀 Development Timeline
The project was developed over a 133-day lifecycle, moving from requirements elicitation to system design, dataset preparation, model training, and final integration.

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
* **Developer:** Rana Selim
* **Supervisor:** Asst. Prof. Rahim Dehkharghani
