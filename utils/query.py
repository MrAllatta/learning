"""query.py."""

from pathlib import Path
from google.cloud import bigquery

CLIENT = bigquery.Client()
SQL_DIR = Path(__file__).resolve().parent.parent / "sql"


def load_sql(name: str, **params) -> str:
    """Load a .sql file and optionally format with parameters."""
    path = SQL_DIR / name
    sql = path.read_text()
    if params:
        sql = sql.format(**params)
    return sql


def run(name: str, **params):
    """Load SQL file, execute on BigQuery, return DataFrame."""
    sql = load_sql(name, **params)
    return CLIENT.query(sql).to_dataframe()
