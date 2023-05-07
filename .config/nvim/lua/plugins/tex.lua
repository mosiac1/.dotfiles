
return {
	{
		"lervag/vimtex",
		init = function()
			vim.g.vimtex_view_general_viewer = '/mnt/c/Users/osiac/AppData/Local/SumatraPDF/SumatraPDF.exe'
			vim.g.vimtex_view_general_options = '-reuse-instance @pdf'
			vim.g.vimtex_compiler_method = 'latexmk'
			vim.g.Tex_MultipleCompileFormats='pdf,bib,pdf'
			vim.g.tex_flavor='latex'
			vim.g.vimtex_compiler_latexmk = { options = { '-shell-escape', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode' } }
		end,
	},
}
