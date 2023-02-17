protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set }
    func executePrimaryDuty()
    func danceToHappyBirthdaySong(lyrics: String)
}
