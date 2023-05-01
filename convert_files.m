function convert_files
    mlx_files = dir('**/*.mlx');
    for k = 1:length(mlx_files)
        mlx_path = fullfile(mlx_files(k).folder, mlx_files(k).name);
        html_path = strrep(mlx_path, '.mlx', '.html');
        pdf_path = strrep(mlx_path, '.mlx', '.pdf');
        fprintf('Converting: %s\n', mlx_path);
        matlab.internal.liveeditor.openAndConvert(mlx_path, html_path);
        matlab.internal.liveeditor.openAndConvert(mlx_path, pdf_path);
    end
end
