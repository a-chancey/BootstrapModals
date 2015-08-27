package bootstrapmodals

class GameController {

    def scaffold = true

    def save = {
        def game = loadGame(params.id)
        game.properties = params
        if (game.save()) {
            redirect(action: 'index')
        }
    }

    private loadGame(id) {
        def game = new Game()
        if (id) {
            game = Game.get(id)
        }
        return game
    }
}
