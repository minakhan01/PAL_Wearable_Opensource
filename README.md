# Project PAL
PAL is a  wearable platform for personalized, context-aware, and always-present user change.  PAL has multimodal sensors (camera, location, movement, heart rate, and on-device deep learning) to recognize user context context-aware, e.g., people, indoor locations, objects, etc. On-device deep learning minimizes computation time to provide real-time and offline context-aware support, and user data is also more private as raw data is not sent to the cloud. PAL offers personalized support for each user and users can train custom trainable low-shot models for personalized context detection and support. 

We are currently exploring  PAL for real-world-loop behavior change support using reinforcement learning for closed-loop behavior change interventions. PAL can also be used for real-time cognitive support (e.g., memory augmentation) and visual assistance (e.g., for visually impaired).

https://www.media.mit.edu/projects/pal/overview/

## Table of Contents

- [Layout](#layout)
- [Contents](#contents)
- [Maintainers](#maintainers)
- [Contributors](#contributors)
- [License](#license)

### Layout
    .
    ├── Raspberry Pi  
    │     ├── Codebase         # Node.js and python scripts codebase
    │     ├── Electronics      # Raspberry Pi Shield
    │     └── Hardware         # 3D Design Files for raspberry pi case
    ├── Android App            # Android App (connect to raspberry pi)
    ├── PWA                    # Web App (Habit Tracking)
    ├── Docs                   # Documentation Files
    ├── LICENSE
    └── README.md
    
### Contents
This repository consists of 3 main codebases.
1. Raspberry Pi
   * Codebase: Node.js sever for data collection using sensors and python scripts for data processing.
   * Electronics: Schematics and board files for the raspberry pi shield.
   * Hardware: Design files for 3D printing the raspberry pi case, earhook and microphone cover. 
   
2. The Androd App, to connect to the raspberry pi
   * The Android App connects to the raspberry pi via bluetooth to control the sensors onboard.
   
3. The Progressive Web App, to track ones habits and visualize one's data
    * Real time data visualization and habit tracking 

### Maintainers


### Contributors
This project exists thanks to all the people who contribute.


### License
