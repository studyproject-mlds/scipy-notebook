

install:
	pip install git+http://github.com/lucasiscovici/hide_code.git
	jupyter-nbextension enable collapsible_headings/main
	jupyter-nbextension enable livemdpreview/livemdpreview
	jupyter-nbextension enable splitcell/splitcell
	jupyter-nbextension enable tree-filter/index
	jupyter-nbextension enable codefolding/main
	jupyter-nbextension enable comment-uncomment/main
	jupyter-nbextension enable execute_time/ExecuteTime
	jupyter-nbextension enable exercise2/main
	jupyter-nbextension enable init_cell/main
	jupyter-nbextension enable load_tex_macros/main
	jupyter-nbextension enable scroll_down/main
	jupyter-nbextension enable toc2/main
	jupyter-nbextension enable export_embedded/main
	jupyter-nbextension enable table_beautifier/main
	jupyter-nbextension enable freeze/main
	jupyter-nbextension install --py hide_code --user
	jupyter nbextension enable hide_code --py --user
	jupyter-serverextension enable hide_code --py --user
	git clone https://github.com/lucasiscovici/execution_dependencies tmpfiles/execution_dependencies2
	jupyter-nbextension install tmpfiles/execution_dependencies2 --user
	jupyter nbextension enable execution_dependencies2/execution_dependencies --user
	rm -rf tmpfiles
	pip install nbdime --user
	jupyter nbextension install --py nbdime --user
	jupyter nbextension enable --py nbdime --user
	jupyter serverextension enable --py nbdime --user