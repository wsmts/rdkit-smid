# rdkit-smid
Jupyter notebook for calculating the *smallest maximum intramolecular distance* (SMID) value of a molecule as described in [J. Chem. Inf. Model. 2020, 60, 4, 2091–2099](https://doi.org/10.1021/acs.jcim.9b00692)

The code was based on [BrianGoldman/SMID](https://github.com/BrianGoldman/SMID), and adapted to use the rdkit toolkit instead of the openeye toolkit.

## Usage
The notebook can run in a conda environment or in a docker container.

    git clone https://github.com/wsmts/rdkit-smid.git
    cd rdkit-smid
    docker build -t rdkit-smid .
    docker run --rm -p 8866:8866 rdkit-smid

and point your browser to <http://localhost:8866>
