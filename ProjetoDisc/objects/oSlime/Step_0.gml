/// Evento Create do oSlime
// Variáveis de movimento aleatório
var max_wander_angle = 30; // Ângulo máximo para movimento aleatório
var wander_distance = 100; // Distância máxima do movimento aleatório

// Velocidade máxima do slime
var max_speed = 3;
// Força que controla a mudança de direção
var steering_force = 0.5;

// Velocidade atual do slime (inicializada como zero)
var velocity_x = 0;
var velocity_y = 0;

// Variáveis para controle do movimento aleatório
var wander_direction = random(360);
var target_x, target_y;

/// Evento Step do oSlime
// Calcula a direção em que o slime deve se mover para perseguir o jogador
var dir_x = oPlayer.x - x;
var dir_y = oPlayer.y - y;
var dir_length = point_distance(x, y, oPlayer.x, oPlayer.y);

// Se o jogador estiver próximo, siga-o
if (dir_length < 200) {
    // Defina a direção para o jogador
    var direcao = point_direction(x, y, oPlayer.x, oPlayer.y);
    // Aplique a força de mudança de direção
    velocity_x += lengthdir_x(steering_force, direcao);
    velocity_y += lengthdir_y(steering_force, direcao);
} else {
    // Movimento aleatório enquanto não estiver perseguindo o jogador
    wander_direction += random_range(-max_wander_angle, max_wander_angle);
    target_x = x + lengthdir_x(wander_distance, wander_direction);
    target_y = y + lengthdir_y(wander_distance, wander_direction);
    
    // Defina a direção para o alvo
    var direcao = point_direction(x, y, target_x, target_y);
    // Aplique a força de mudança de direção
    velocity_x += lengthdir_x(steering_force, direcao);
    velocity_y += lengthdir_y(steering_force, direcao);
}

// Limitar a velocidade máxima
var current_speed = point_distance(0, 0, velocity_x, velocity_y);
if (current_speed > max_speed) {
    velocity_x = lengthdir_x(max_speed, point_direction(0, 0, velocity_x, velocity_y));
    velocity_y = lengthdir_y(max_speed, point_direction(0, 0, velocity_x, velocity_y));
}

// Atualizar a posição do slime com base na velocidade atual
x += velocity_x;
y += velocity_y;

/// Evento Step do oSlime

// Restante do código do slime...

if (vida <= 0) {
    // Se a vida do slime for menor ou igual a 0, destrua apenas o slime atual (com o id correto)
   
        instance_destroy();
        global.slimes_destruidos += 1;

        // Verifica se todos os slimes foram destruídos
        if (global.slimes_destruidos == global.total_slimes) {
			global.total_slimes = global.total_slimes + 10;
            // Chama a função para criar mais slimes, aumentando a quantidade em 10
            oSlimes.criarSlimes(global.total_slimes);
            // Reinicia o contador de slimes destruídos
            global.slimes_destruidos = 0;
        
    }
}
