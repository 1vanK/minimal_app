// Copyright (c) 2022-2023 the Dviglo project
// License: MIT

#pragma once

#include <dviglo/gl_utils/index_buffer.h>
#include <dviglo/gl_utils/shader_program.h>
#include <dviglo/gl_utils/texture.h>
#include <dviglo/gl_utils/vertex_buffer.h>
#include <dviglo/graphics/sprite_batch.h>
#include <dviglo/graphics/sprite_font.h>
#include <dviglo/main/application.h>

using namespace dviglo;
using namespace std;


class App : public Application
{
    ShaderProgram* textured_shader_;
    Texture* texture_;
    ShaderProgram* vert_color_shader_prog_;
    unique_ptr<SpriteBatch> sprite_batch_;
    unique_ptr<SpriteFont> font_;

public:
    App(const vector<StrUtf8>& args);

    void start() override;
    void update(u64 ms) override;
    void draw() override;
};
