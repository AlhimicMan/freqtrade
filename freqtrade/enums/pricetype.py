from enum import Enum


class SignalPrice(Enum):
    """
    Enum to distinguish between buy and sell price
    """
    BUY = "buy_price"
    SELL = "sell_price"
