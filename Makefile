venv:
	uv venv

setup-git:
	git config --global user.email "<EMAIL>"
	git config --global user.name "<USERNAME>""

download-data:
	export KAGGLE_USERNAME=<KAGGLE_USERNAME>
	export KAGGLE_KEY=<KAGGLE_KEY>
	mkdir -p data
	kaggle competitions download -c melting-point -p data
	unzip data/melting-point.zip -d data
	rm data/melting-point.zip
