john = Person.create(name: "John")
jim = Person.create(name: "Jim", parent: john)
bob = Person.create(name: "Bob", parent: john)
# john.children.map(&:name)

sally = Person.create(name: "Sally")
sue = Person.create(name: "Sue", parent: sally)
kate = Person.create(name: "Kate", parent: sally)
lisa = Person.create(name: "Lisa", parent: sue)
robin = Person.create(name: "Robin", parent: kate)
donna = Person.create(name: "Donna", parent: kate)
