from buffers import addressbook_pb2
from examples.read import ListPeople

person = addressbook_pb2.Person()
person.id = 1234
person.name = "John Doe"
person.email = "jdoe@example.com"
phone = person.phone.add()
phone.number = "555-4321"
phone.type = addressbook_pb2.Person.HOME

with open('data/addressbook.bin', 'wb') as file:
    file.write(person.SerializeToString())
    file.close()

with open('data/addressbook.bin', 'rb') as file:
    new_person = addressbook_pb2.Person()
    new_person.ParseFromString(file.read())
    file.close()

ListPeople(new_person)