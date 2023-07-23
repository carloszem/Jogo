/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/// Evento Create do novo objeto que gera os slimes
 // Número de slimes que deseja criar
function criarSlimes(numSlimes) {
    for (var i = 0; i < numSlimes; i++) {
        var px = random(room_width); // Posição x aleatória na room
        var py = random(room_height); // Posição y aleatória na room
        var newSlime = instance_create_layer(px, py, "Instances", oSlime); // Cria uma instância de oSlime na posição (x, y) na camada "Instances"
        
        // Configuração de propriedades únicas para cada slime
        newSlime.vida = 10; // Exemplo: definindo a vida do slime como 60 (valor único para cada slime)
        newSlime.ids = i + 1; // Atribui um valor único de "id" para cada slime (por exemplo, 1, 2, 3, etc.)
        // Outras configurações específicas do slime podem ser adicionadas aqui
    }
}

global.total_slimes = 1; // Defina a quantidade inicial de slimes
criarSlimes(global.total_slimes); // Cria os slimes iniciais// Cria os slimes iniciais