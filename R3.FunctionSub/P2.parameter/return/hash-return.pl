sub get_person {
   return (name => "Robert", age => 30);
}

my %person = get_person();
print "name: $person{name}, age: $person{age}\n"; # name: Robert, 30