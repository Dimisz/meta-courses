let reservationsInPerson: Set<String> = ["000-345-3441", "000-325-3443"]
let reservationsOnline: Set<String> = ["000-345-6223", "000-345-7223"]
let reservationsOnPhone: Set<String> = ["000-345-3443", "000-345-5223"]

let inPersonAndOverPhone: Set<String> = reservationsInPerson.union(reservationsOnPhone)
print(inPersonAndOverPhone)

let allPhoneNumbers: Set<String> = inPersonAndOverPhone.union(reservationsOnline)
print(allPhoneNumbers)
