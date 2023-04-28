#include "game.h"
#include <iostream>
const float paddleWidth = 25;
const float paddleHeight = 100;
const float ballRadius = 10;
const float paddleSpeed = 400 * 2;
const float ballSpeed = 500;

Game::Game()
    : window(sf::VideoMode(800, 600), "Ping Pong") {
    // Initialize paddles
    if (!font.loadFromFile("../../font/goldingotsgrad.ttf")) {
        std::cerr << "Error loading font\n";
    }

    // Initialize left score text
    leftScoreText.setFont(font);
    leftScoreText.setCharacterSize(30);
    leftScoreText.setFillColor(sf::Color::White);
    leftScoreText.setPosition(window.getSize().x / 4, 10);

    // Initialize right score text
    rightScoreText.setFont(font);
    rightScoreText.setCharacterSize(30);
    rightScoreText.setFillColor(sf::Color::White);
    rightScoreText.setPosition(window.getSize().x * 3 / 4, 10);


    leftPaddle.setSize(sf::Vector2f(paddleWidth, paddleHeight));
    leftPaddle.setFillColor(sf::Color::Green);
    leftPaddle.setPosition(10, window.getSize().y / 2 - paddleHeight / 2);

    rightPaddle.setSize(sf::Vector2f(paddleWidth, paddleHeight));
    rightPaddle.setFillColor(sf::Color::White);
    rightPaddle.setPosition(window.getSize().x - paddleWidth - 10, window.getSize().y / 2 - paddleHeight / 2);

    // Initialize ball
    ball.setRadius(ballRadius);
    ball.setFillColor(sf::Color::White);
    ball.setPosition(window.getSize().x / 2 - ballRadius, window.getSize().y / 2 - ballRadius);

    // Initialize ball velocity
    ballVelocity = sf::Vector2f(ballSpeed, ballSpeed);

    // Initialize scores
    leftScore = 0;
    rightScore = 0;
}

void Game::run() {
    sf::Clock clock;
    while (window.isOpen()) {
        sf::Time deltaTime = clock.restart();
        processEvents();
        update(deltaTime);
        render();
    }
}

void Game::processEvents() {
    sf::Event event;
    while (window.pollEvent(event)) {
        if (event.type == sf::Event::Closed) {
            window.close();
        }
    }
}

void Game::update(sf::Time deltaTime) {
    // Move paddles
     if (ball.getPosition().y + ballRadius < leftPaddle.getPosition().y + paddleHeight /2  && leftPaddle.getPosition().y > 0) {
        leftPaddle.move(0, -paddleSpeed /4 * deltaTime.asSeconds());
    } else if (ball.getPosition().y + ballRadius > leftPaddle.getPosition().y + paddleHeight / 2 && leftPaddle.getPosition().y + paddleHeight < window.getSize().y) {
        leftPaddle.move(0, paddleSpeed / 4 * deltaTime.asSeconds());
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up) && rightPaddle.getPosition().y > 0) {
        rightPaddle.move(0, -paddleSpeed/ 2     * deltaTime.asSeconds());
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down) && rightPaddle.getPosition().y + paddleHeight < window.getSize().y) {
        rightPaddle.move(0, paddleSpeed / 2 * deltaTime.asSeconds());
    }

    // Move ball
    ball.move(ballVelocity * deltaTime.asSeconds());

    // Collision detection for the ball and the window
    if (ball.getPosition().y <= 0 || ball.getPosition().y + ballRadius * 2 >= window.getSize().y) {
        ballVelocity.y = -ballVelocity.y;
    }

    // Collision detection for the ball and paddles
    if (ball.getGlobalBounds().intersects(leftPaddle.getGlobalBounds()) || ball.getGlobalBounds().intersects(rightPaddle.getGlobalBounds())) {
        ballVelocity.x = ballVelocity.x * -1;
    }

    
    if (ball.getPosition().x <= 0) {
        rightScore++;
        std::stringstream ss;
        ss << rightScore;
        rightScoreText.setString(ss.str());
        reset();
    } else if (ball.getPosition().x + ballRadius * 2 >= window.getSize().x) {
        leftScore++;
        std::stringstream ss;
        ss << leftScore;
        leftScoreText.setString(ss.str());
        reset();
    }
}

void Game::render() {
    window.clear();
    window.draw(leftPaddle);
    window.draw(rightPaddle);
    window.draw(ball);
    window.draw(leftScoreText);
    window.draw(rightScoreText);
    
    window.display();
}

void Game::reset() {
    // Reset ball position
    ball.setPosition(window.getSize().x / 2 - ballRadius, window.getSize().y / 2 - ballRadius);

    // Randomize ball direction
    ballVelocity.x = ballSpeed * ((rand() % 2 == 0) ? 1 : -1);
    ballVelocity.y = ballSpeed * ((rand() % 2 == 0) ? 1 : -1);
}

