import argparse
import datetime as dt
import os

from data_python_template.logger import init_logger


def main(date_to_run: str):
    print(date_to_run)


if __name__ == "__main__":
    # DIRNAME = os.path.abspath("")
    # ETL_PROCESS = "data_python_template"
    # date_to_run = dt.datetime.now().strftime("%Y%m%d")
    # parser = argparse.ArgumentParser(
    #     description="Pass the date you would like to process. The default is the current date."
    # )
    # parser.add_argument(
    #     "-d",
    #     "--date",
    #     default=dt.datetime.now().strftime("%Y%m%d"),
    #     help="date to run, YYYYMMDD format",
    # )

    # args = parser.parse_args()
    # if args.date not in [date_to_run, "default"]:
    #     date_to_run = args.date

    # logger = init_logger(ETL_PROCESS, date_to_run)
    # main(date_to_run)
    print("running!!")