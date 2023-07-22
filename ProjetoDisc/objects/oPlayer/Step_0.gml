/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_up){
    y -= 1;
}
else if keyboard_check(vk_down){
    y += 1;
}
else if keyboard_check(vk_left){
    x -= 3;
    
    // Definir a escala horizontal para -1 para espelhar o sprite
    image_xscale = -1;
    
    // Mudar para o sprite de corrida
    sprite_index = sPlayerCorrida;
}
else if keyboard_check(vk_right){
    x += 3;
	
    // Definir a escala horizontal para 1 (valor padrão) para manter o sprite normal
    image_xscale = 1;
    
    // Mudar para o sprite de corrida
    sprite_index = sPlayerCorrida;
}
else {
    // Se nenhuma tecla de movimento estiver pressionada, use o sprite de parado
    sprite_index = sPlayerParado;
}

if (vida <= 0) {
    // Trata a morte do jogador
    // Por exemplo, reiniciar a posição do jogador e definir a vida novamente com um valor máximo
    x = start_x; // start_x é a variável que armazena a posição inicial em x do jogador
    y = start_y; // start_y é a variável que armazena a posição inicial em y do jogador
    vida = vida_maxima; // vida_maxima é a variável que armazena o valor máximo de vida do jogador

    // Você pode adicionar mais ações aqui, como tocar um som ou exibir uma mensagem de morte
}

if (timer_dano > 0) {
    timer_dano -= 1;
}


if espada =1{
instance_destroy(espada)
inventario[1] = espada
}

