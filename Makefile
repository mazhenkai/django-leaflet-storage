assets:
	cd leaflet_storage/static/storage/ && git pull && make install && make vendors
distfile:
	python setup.py sdist bdist_wheel
test_publish:
	twine upload -r testpypi dist/*
publish:
	twine upload dist/*
	rm dist/*
	rm -rf build/*
