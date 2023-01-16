let HashMap = {
    "SHA1": Func(plaintext) {HASHIT("SHA1", plaintext)},
    "SHA256": Func(plaintext) {HASHIT("SHA256", plaintext)},
    "SHA384": Func(plaintext) {HASHIT("SHA384", plaintext)},
    "MD5": Func(plaintext) {HASHIT("MD5", plaintext)},
    "SHA224": Func(plaintext) {HASHIT("SHA224", plaintext)},
    "SHA512": Func(plaintext) {HASHIT("SHA512", plaintext)},
}

cause Main = Func() {
    let plaintext = input("Plaintext>>", "n")
    println("--------------------------------------")
    println("SHA1 | SHA256 | SHA384 | SHA512 | MD5 | SHA224 |")
    let choice = input("Choice>>", "n")
    HashMap[choice](plaintext)
}

Main()
