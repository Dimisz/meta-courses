class LocalFile {
    let fileName: String
    let fileExtension: String
    let fullFileName: String
//    var fullFileName: String {
//        "\(fileName).\(fileExtension)"
//    }
    
    func printFile(){
        print(fullFileName)
    }
    
    init(fileName: String, fileExtension: String){
        self.fileName = fileName
        self.fileExtension = fileExtension
        self.fullFileName = "\(self.fileName).\(self.fileExtension)"
    }
}

let file = LocalFile(fileName: "img1", fileExtension: "png")
file.printFile()
