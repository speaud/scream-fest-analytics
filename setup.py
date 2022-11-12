from setuptools import setup, find_packages

reqs = [
    "loguru",
    "pandas",
    "PyPDF2",
]

test_pkgs = ["pytest", "coverage"]
develop_pkgs = ["matplotlib", "jupyterlab", "pre-commit"]

setup(
    name="scream_fest_analytics",
    packages=["scream_fest_analytics"],
    package_dir={"": "src"},
    version="0.0.0",
    python_requires=">3.7",
    description="Python project to generate analytics from the Scream series movie scripts",
    install_requires=reqs,
    extras_require={"develop": develop_pkgs, "test": test_pkgs},
    include_package_data=True,
    url="https://github.com/speaud/scream-fest-analytics",
    entry_points={"console_scripts": ["CLI_NAME = scream_fest_analytics.FILE_cli:start"]},
)
