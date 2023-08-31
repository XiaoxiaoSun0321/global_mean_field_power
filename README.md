# Global/Local Mean Field Power (GMFP/LMFP)

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Description

Global/Local mean field power (GMFP/LMFP) is often used to measure the global excitability in studies of non-invasive neuromodulation treatments (such as TMS). This document shows how GMFP/LMFP was computed on a given EEG epoch.

The formula of how to calculate GMFP/LMFP is listed as below:

![Example Image](gmfp_formula.png)


where $t$ is time; $K$ is the number of included EEG channels; $V_{i}$ is the voltage in channel $i$; $V_{mean}$ is the mean of the voltages in all channels. 

Please check on how it's applied and linked to clinic findings in our group's study here: https://www.brainstimjrnl.com/article/S1935-861X(23)00803-3/fulltext

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)
- [Credits](#credits)
- [Contact](#contact)

## Installation

No further installation needed. Function files are directly runnable in Matlab and Python. 

## Usage

Provided function file 'gmfp.m' calculate  

## Features

- Feature 1: Two versions have been provided to run in both Matlab and Python. 
- Feature 2: Examples in both enviroment have been provided 

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). Refer to the [LICENSE](LICENSE) file for more information.

## Credits

Acknowledge and provide credit to any third-party libraries, resources, or contributors that have been instrumental in the development of your project. Provide links to their repositories or websites.

## Contact

For any inquiries or questions, you can reach me at [xiaoxiao.sun@columbia.edu]. Connect with me on [LinkedIn](https://www.linkedin.com/in/xiaoxiao-sun-b66012274/) for more updates and projects.

