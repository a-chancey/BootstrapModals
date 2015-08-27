package bootstrapmodals

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Game)
class GameSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        given:
        Game game = new Game(deck: "Hunter",
                            subdeck: "midrange",
                            opponent: "mage",
                            coin: true,
                            win: true,
                            date: "8/27/2015",
                            notes: "ez win scrub")
        game.save()
        print game.id + " is the id"

        when:
        def id = game.id

        then:
        Game retrievedGame = Game.get(id)
        game.notes.equals "ez win scrub"
    }
}
