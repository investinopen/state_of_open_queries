"""
Library for generating queries from subsets of organisation names for IOI
"""

import jinja2
import pandas as pd
from google.cloud import bigquery
from typing import Union, Optional
from pathlib import Path

from template_queries.mellon_mapping import map



def template_query(filepath: Union[Path, str],
                   mapping: dict,
                   verbose: Optional[bool] = True) -> str:
    """
    Generate a templated SQL query from a jinja template

    :param filepath: Filepath to the template
    :param mapping: Data for incorporation into the template
    :return str: Templated query
    """

    with open(filepath, 'r') as f:
        query_template = "".join(f.readlines())
    query = jinja2.Template(query_template).render(mapping)
    if verbose:
        print('\n', query, '\n')

    return query

def read_orgs_and_map(datapath: Union[Path, str],
                      outpath: Union[Path, str],
                      mapping: dict):
    """
    Read in the csv file of org names and process to dict/JSON

    :param datapath: Input path of csv file for org names
    :param outpath: Destination to write to
    :return:
    """

    orgs = pd.read_csv(datapath, names=['org', 'searchterm'])
    orglist = orgs['searchterm']
    mapping['orgnames'] = orglist
    pass

if __name__ == '__main__':
    m = read_orgs_and_map('search_terms/oi-name-deduced.csv', '', map)
    query = template_query('generate_queries/template_queries/template.sql.jinja2', map)
    print(query)