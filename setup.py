from setuptools import setup, find_packages

setup(
    name='QXQ_transpiler_benchmarking',
    version='0.0.1',
    description='QXQ Benchmarking tool',
    url='https://github.com/BxNoel/QXQ_transpiler_benchmarking',
    author=[
        {'name': 'Noel Negron', 'email': 'nmn2127@columbia.edu'},
        {'name': 'Guadalupe Cantera', 'email': 'Guadalupe_cantera@brown.edu'},
        {'name': 'Catherine Lozano', 'email': 'Catherinelibra17@gmail.com'},
        {'name': 'Victor Osunji, 'email': 'victorosunij@gmail.com'},
    ],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: Apache Software License",
        "Operating System :: OS Independent",
    ],
    keywords=["MQT", "quantum computing", "benchmarking", "performance", "testing"],
    license="Apache License 2.0",
    python_requires=">=3.9",
    packages=find_packages(),
    install_requires=['qiskit', 'numpy', 'matplotlib'],
    include_package_data=True,
)
