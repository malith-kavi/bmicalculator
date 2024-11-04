# BMI Calculator

A simple Body Mass Index (BMI) calculator built using Flutter. This app allows users to input their height and weight, select their gender, and calculate their BMI. The app then provides feedback based on the BMI range.

## Features

- Gender selection (Male/Female)
- Adjustable height and weight inputs
- BMI calculation with color-coded feedback:
  - Green: Normal Weight
  - Orange: Underweight
  - Red: Overweight

## Screenshots

<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets/7a482e3c-74eb-447b-acf7-5e3b0185cf66" width="30%" alt="Screenshot 1" style="margin-right: 20px;">
  <img src="https://github.com/user-attachments/assets/6f56fd35-55ef-4b16-9998-51c3ef40088f" width="30%" alt="Screenshot 2" style="margin-right: 20px;">
  <img src="https://github.com/user-attachments/assets/c15f2cee-bb03-4953-b8fc-7e3ac2de1017" width="30%" alt="Screenshot 3">
</div>

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/malith-kavi/bmicalculator.git

2. **Navigate into the project directory**
   ```bash
   cd bmi-calculator

3. **Install dependencies**
   ```bash
   flutter pub get

4. **Run the app**
   ```bash
   flutter run

## Usage

1.	Select your gender by tapping on either the “Male” or “Female” icon.
2.	Adjust your height and weight using the increment and decrement buttons.
3.	The app will automatically calculate and display your BMI, along with feedback on whether your weight is within a normal range.

## Code Overview

- calculateBMI: Function to calculate BMI based on height and weight.
- getResult: Function to provide feedback based on BMI value.

## Technologies Used

- Flutter
- Dart

## License

This project is open-source and available under the MIT License.
