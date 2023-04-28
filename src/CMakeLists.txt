set(SOURCE_FILES
    main.cpp
    game.cpp
)

add_executable(2d_game ${SOURCE_FILES})
target_link_libraries(2d_game sfml-graphics sfml-audio)
