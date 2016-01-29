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

# compile proto
bash compile_protoc.sh