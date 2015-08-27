package bootstrapmodals

class Game {
    String deck
    String subdeck
    String opponent
    Boolean coin
    Boolean win
    Date date
    String notes

    static constraints = {
        deck(nullable: false, blank: false)
        subdeck(nullable: false, blank: false)
        opponent(nullable: false, blank: false)
        coin(nullable: false, blank: false)
        win(nullable: false, blank: false)
        date(nullable: true, blank: true)
        notes(nullable: true, blank: true)

    }
}
