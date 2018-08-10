#!/usr/bin/env bats

@test "Ruby is installed" {
    run ruby --version
    [ $status = 0 ]
}

@test "Brew is installed" {
    run brew --version
    [ $status = 0 ]
}

@test "Git is installed" {
    run git --version
    [ $status = 0 ]
}

@test "Node.js is installed" {
    run node --version
    [ $status = 0 ]
}
