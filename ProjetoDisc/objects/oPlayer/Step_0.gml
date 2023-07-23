/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Variável de velocidade do jogador
var velocidade = 3;

if keyboard_check(global.vk_up_custom) {
    y -= velocidade;
}
if keyboard_check(global.vk_down_custom) {
    y += velocidade;
}

if keyboard_check(global.vk_left_custom) {
    x -= velocidade;
    
    // Definir a escala horizontal para -1 para espelhar o sprite
    image_xscale = -1;
    
    // Mudar para o sprite de corrida
    sprite_index = sPlayerCorrida;
}
if keyboard_check(global.vk_right_custom) {
    x += velocidade;
	
    // Definir a escala horizontal para 1 (valor padrão) para manter o sprite normal
    image_xscale = 1;
    
    // Mudar para o sprite de corrida
    sprite_index = sPlayerCorrida;
}

// Se nenhuma tecla de movimento estiver pressionada, use o sprite de parado
if (!keyboard_check(global.vk_up_custom) && !keyboard_check(global.vk_down_custom) && !keyboard_check(global.vk_left_custom) && !keyboard_check(global.vk_right_custom)) {
    sprite_index = sPlayerParado;
}


/// Evento Step do oPlayer
var ataque_distance = 50; // Distância para o ataque (ajuste conforme necessário)
var dano_slime = 10; // Quantidade de dano que o slime sofrerá

if (mouse_check_button(mb_left)) {
    var ataque_x = x + lengthdir_x(ataque_distance, direction);
    var ataque_y = y + lengthdir_y(ataque_distance, direction);
    
    var col_slime = collision_point(ataque_x, ataque_y, oSlime, false, true);
    
    if (col_slime != noone) {
        // Se houver colisão com um slime, aplique o dano apenas a esse slime
        col_slime.vida -= dano_slime;
    }
    
    // Resto do código de ataque do jogador (se houver)
    // Definir a animação de ataque do jogador (mude de acordo com o nome do sprite de ataque)
    sprite_index = sPlayerAtaque;
}
if (vida <= 0) {
    // Trata a morte do jogador
    // Por exemplo, reiniciar a posição do jogador e definir a vida novamente com um valor máximo
    x = start_x; // start_x é a variável que armazena a posição inicial em x do jogador
    y = start_y; // start_y é a variável que armazena a posição inicial em y do jogador
    vida = vida_maxima; // vida_maxima é a variável que armazena o valor máximo de vida do jogador
}

if (timer_dano > 0) {
    timer_dano -= 1;
}


if espada =1{
instance_destroy(espada)
inventario[1] = espada
}


// Verifica as coordenadas x e y em relação às dimensões da tela
// Verifica as coordenadas x e y em relação às dimensões da tela
if (x - object_half_width < 0) {
    x = object_half_width;
}
if (x + object_half_width > room_width) {
    x = room_width - object_half_width;
}
if (y - object_half_height < 0) {
    y = object_half_height;
}
if (y + object_half_height > room_height) {
    y = room_height - object_half_height;
}



