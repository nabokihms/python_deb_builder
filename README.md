Python Deb Builder
===
The way to build .deb packages with python code inside.
### How to use

For building your python package directory should look like this:
```python
./debian  # dir for build info
./your_package_dir  # your python code here
setup.py  # file with package info
```

To use the image you should type:
```bash
docker run --rm \
    --name any_name_you_want \
    -v "$(pwd)":/build \
    elfushka/python_deb_builder
``` 
if you are in project directory. Else you must substitute `"$(pwd)"` with your 
project directory.

This action will create a `./dist` folder with all build files. Enjoy!

### dh-virtualenv
To read more about dh-virtualenv click [here](https://github.com/spotify/dh-virtualenv).

### Versions
There are a lot of combinations of ubuntu core and python interpreter. <br>
We mark builds with pattern **<ubuntu_version>_<python_version>** <br>
You can look for all tags [here](https://hub.docker.com/r/elfushka/python_deb_builder/tags).

**Current version**: 16.04_3.6
