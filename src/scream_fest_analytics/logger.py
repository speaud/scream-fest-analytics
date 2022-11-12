import os

from loguru import logger


def init_logger(etl_process: str, date_to_run: str):
    DIRNAME = os.path.abspath("")
    LOG_FILENAME = f"logs/log_{etl_process}_{date_to_run}.log"
    LOG_FILEPATH = os.path.join(DIRNAME, LOG_FILENAME)

    logger.add(
        LOG_FILEPATH,
        rotation="500 MB",
        colorize=True,
        format="<green>{time:YYYY-MM-DD at HH:mm:ss}</green> <level> {message} </level>",
        level="INFO",
    )
    logger.info("Initializing logger!")
    return logger
