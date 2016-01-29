mkdir protocol_buffer
touch protocol_buffer/__init__.py
protoc --python_out=protocol_buffer addressbook.proto
