/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

window_set_size(1600,920)
espada = 0;
inventario = [];
facing_right = false;
vida = 50;
vida_maxima = 50;
start_x = 9;
start_y = 155;
timer_dano = 0;
velocidade = 3;
ataque_distance = 50;

// Definir constantes de teclado personalizadas
global.vk_up_custom = ord("W");
global.vk_down_custom = ord("S");
global.vk_left_custom = ord("A");
global.vk_right_custom = ord("D");

//colisão com a tela

 screen_width = display_get_width();
 screen_height = display_get_height();
object_half_width = sprite_width / 2;
 object_half_height = sprite_height / 2;