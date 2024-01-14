from setuptools import find_packages
from setuptools import setup

setup(
    name='bumperbot_firmware',
    version='0.0.0',
    packages=find_packages(
        include=('bumperbot_firmware', 'bumperbot_firmware.*')),
)
