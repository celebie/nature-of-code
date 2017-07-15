float radius = 75;
float theta = 0;
float x, y;

void setup() {
    size(200, 200);
    smooth();
}

void draw() {
    background(255);
    
    // シータを加算
    theta += 0.01;

    // 極座標(r, theta)をデカルト座標(x, y)に変換
    x = cos(theta) * radius;
    y = sin(theta) * radius;

    noStroke();
    fill(0);

    // 円弧に沿って移動する円を描画する（変換したデカルト座標x, yを引数に渡す）
    ellipse(x + width / 2, y + height / 2, 16, 16);

    fill(0, 50);

    // 左右に移動する円を描画する（変換したデカルト座標xを引数に渡し、yは固定値を渡す）
    ellipse(x + width / 2, height / 2, 16, 16);
    
    // 上下に移動する円を描画する（変換したデカルト座標yを引数に渡し、xは固定値を渡す）
    ellipse(width / 2, y + height / 2, 16, 16);
}
