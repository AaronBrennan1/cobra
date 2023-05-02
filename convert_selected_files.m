function convert_selected_files(files)
    arguments
        files string
    end

    mlx_files = strsplit(files, ' ');

    for i = 1:length(mlx_files)
        mlx_file = mlx_files{i};
        if ~isempty(mlx_file)
            [~, filename] = fileparts(mlx_file);
            fprintf('Converting %s\n', mlx_file);
            pdf_file = strcat(filename, '.pdf');
            html_file = strcat(filename, '.html');
            mlreportgen.report.export(mlx_file, pdf_file);
            mlreportgen.report.export(mlx_file, html_file);
        end
    end
end
