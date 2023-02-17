var pastaTypesSet = Set<String>()
var pastaTypesArray = [String]()

pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")
pastaTypesSet.insert("Spaghetti")

print(pastaTypesSet)
print(pastaTypesSet.count)

pastaTypesSet.remove("Spaghetti")
print(pastaTypesSet)
print(pastaTypesSet.count)

//UNION METHOD
var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)

let pastaSetUnion2 = pastaTypesSet2.union(pastaTypesSet)
print(pastaSetUnion2)
print(pastaSetUnion2.count)
