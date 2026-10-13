

% 1. Vetor de Slip Ratio (\lambda) cobrindo toda a faixa de -1 a 1
kappa = linspace(-1, 1, 1000);

% 2. Constantes Longitudinais de Pacejka 
Cx = 1.4;
Dx = 1.4;
Bx = 16.5;
Ex = -1;

% 3. Valores de Carga Vertical (Fz) 
Fz_vetor = [1622.3, 2000, 2700, 3400]; % em Newtons

% 4. Configuração da Figura
figure('Name', 'Longitudinal Pacejka formula', 'Color', 'w', 'Position', [100, 100, 850, 520]);
hold on;
grid on;
box on;

% 5. Loop para calcular e plotar a família de curvas para cada Fz
for i = 1:length(Fz_vetor)
    Fz = Fz_vetor(i);
    
    % Implementação da fórmula de Pacejka para Fx
    Fx = Dx * Fz .* sin(Cx * atan(Bx * kappa - Ex * (Bx * kappa - atan(Bx * kappa))));
    
    % Plota a curva com espessura limpa
    plot(kappa, Fx, 'LineWidth', 1.6);
end

% 6. Limites dos Eixos 
xlim([-1, 1]);
ylim([-3000, 4000]);

% 7. Rótulos, Título e Legenda 
xlabel('Slip ratio \lambda [-]', 'FontSize', 12, 'Interpreter', 'tex');
ylabel('Longitudinal force F_x [N]', 'FontSize', 12, 'Interpreter', 'tex');
title('Longitudinal Pacejka formula', 'FontSize', 14, 'FontWeight', 'bold');

% Criação dinâmica da legenda valores Fz
legenda_txt = arrayfun(@(f) sprintf('F_z = %d N', f), Fz_vetor, 'UniformOutput', false);
legend(legenda_txt, 'Location', 'Southeast', 'FontSize', 10);

hold off;