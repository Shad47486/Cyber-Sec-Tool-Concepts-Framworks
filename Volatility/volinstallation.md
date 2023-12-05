When downloading, you can make a choice to use the pre-packaged executable (.whl file) that will work the same and requires no dependencies (Windows Only), or you can decide to run it directly from Python.
    - To obtain a pre-packaged executable, simply download a zip file containing the application from their releases page. <https://github.com/volatilityfoundation/volatility3/releases/tag/v1.0.1>
        - Needs Python 3.5.3 or later & Pefile 2017.8.1 or later
          - To begin running the project from source, you will need to first download the following dependencies: Python 3.5.3 or later and Pefile 2017.8.1 or later. <https://pypi.org/project/pefile/>
            - You can also download these optional dependencies (recommended for this room): yara-python 3.8.0 or later <https://github.com/VirusTotal/yara-python> and capstone 3.0.0 or later <https://www.capstone-engine.org/download.html>.

Once dependencies are sorted, you can clone the repor from github: 
git clone https://github.com/volatilityfoundation/volatility3.git

Can test using:
    - python3 vol.py -h
      -  paremeter -h = help


