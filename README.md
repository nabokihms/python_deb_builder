Python Deb Builder
===
The way to build .deb packages with python code inside.
###How to use

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
    -v "$(pwd)":/build \  # if you are in python package directory
    elfushka/python_deb_builder
``` 

This action will create a `./dist` folder with all build files. Enjoy!
