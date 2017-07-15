float deg = 0;
float angle = 0;
float velocity = 1;
float acceleraion = 0.01;

void setup() {
    size( 200, 200);
    smooth();
}

void draw() {
    background(255);
    
    // 度数に速度を加算
    deg += velocity;

    // 度数をラジアンに変換
    angle = radians(deg);

    // 座標を移動
    translate(width / 2, height / 2);
    rotate(angle);

    // 描画する
    line(-50, 0, 50, 0);
    ellipse(-50, 0, 10, 10);
    ellipse(50, 0, 10, 10);

    // 速度に加速度を加算
    velocity += acceleraion;
}
