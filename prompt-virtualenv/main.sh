function find_python_virtualenv () {
	if test -z "${VIRTUAL_ENV}"; then
		python_venv=""
	else
		python_venv="[`basename "${VIRTUAL_ENV}"`]"
	fi
	export python_venv
}