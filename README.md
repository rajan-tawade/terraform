# terraform
test

Variable type
String 
number 
bOol

List(type)
    [0,1,2,]
    List is ordered, 
set(type)
    Similart to List but Unordered Unique values
map(type)
    {"key" = "value"}

Object({<ATTR Name> = <TYPE>}) - is like map

tuple is like a list but each element can have a different type
---


Using file upload   
    provisioner file
        source
        destination
        connection {
            user 
            password
        }

Remote exec
    provisioner remote-execP{
        inline = [
            chmod +x file.sh,
            /opt/script.sh args
        ]
    }

Using ansible


puttygen  to create keys
change 1
change 2
change 3
change 4
