# create virtualenv
virtualenv env
source env/bin/activate

# get google protocol requirements (ie. install, config)
git clone https://github.com/google/protobuf
cd protobuf/python
python setup.py build
sudo python setup.py install
mv google ../..
cd ../..
sudo rm -r protobuf

# compile protocol
mkdir buffers
touch buffers/__init__.py
protoc --python_out=buffers messages/addressbook.proto