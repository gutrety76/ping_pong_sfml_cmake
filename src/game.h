#ifndef GAME_H
#define GAME_H
#include <sstream>

#include <SFML/Graphics.hpp>

class Game {
public:
    Game();
    void run();

private:
    void processEvents();
    void update(sf::Time deltaTime);
    void render();
    void reset();

    sf::RenderWindow window;
    sf::RectangleShape leftPaddle, rightPaddle;
    sf::CircleShape ball;
    sf::Vector2f ballVelocity;
    sf::Font font;
    sf::Text leftScoreText, rightScoreText;
    unsigned int leftScore, rightScore;
};

#endif
