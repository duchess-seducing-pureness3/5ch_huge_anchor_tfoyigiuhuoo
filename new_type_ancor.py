#!/usr/bin/env python3
import random
import sys


def multiple_of_2_32(x: int = None, rand_min: int = 1, rand_max: int = 1000000) -> int:
    """
    2の32乗の倍数を返す
    :param x:x倍にしたいとき指定する(int)
    :param rand_min:ランダムな倍数を求めたいときの下限
    :param rand_max:ランダムな倍数を求めたいときの上限
    :return:倍数
    """
    # 2^32を変数に代入
    const: int = 4294967296
    if x is not None:
        return const * x

    return const * random.randint(rand_min, rand_max)


def remove_noise(text: str) -> str:
    """
    空白や改行を削除
    :param text: 変換したい数字の文字列
    :return:空白や改行を削除された文字列
    """
    return text.strip()


def convert_str_to_int(_num) -> int:
    """
    全角の数字を半角に変える
    :param _num: 全角のアンカーの数字
    :return: 半角の数字
    """
    text = _num
    text.translate(str.maketrans({chr(0xFF01 + i): chr(0x21 + i) for i in range(94)}))
    return int(text)


def get_argv(argv: int = 1) -> str:
    """
    コマンドライン変数の取得
    :param argv: 変数の値
    :return:
    """
    return sys.argv[argv]


def is_true(text: str) -> bool:
    """
    strで受け取った真偽値をbool型に変える ture , yes, on .enable  が真
    :param text:  str形式の真偽値
    :return: bool形式の真偽値
    """
    if type(text) == str:
        return text.lower() in ('true', 'yes', 'on', 'enable')
    return bool(text)


def add_anchor(_anchor: str):
    """
    アンカー用の文字列を実態参照文字列として追加します
    :param _anchor:アンカーの数字(str)
    :return:"&#062;&#062;" + anchor (>>2の32乗にアンカーが加えられた数字)
    """
    # ここでシェルように&や;をエスケープしないとうまく文字列を渡せない(bashのメタ文字として解釈されてしまう)
    return "\&#062\;\&#062\;" + _anchor


def stdout(_text: str) -> None:
    """
    標準出力に文字列を返す
    :param _text:文字列
    :return:
    """
    sys.stdout.write(_text)


if __name__ == '__main__':
    argv_num: str = get_argv()
    # argv_last_3_digits: bool = is_true(get_argv(2)) #まだ
    num_str: str = remove_noise(argv_num)
    const_multiple_2_of_32: int = multiple_of_2_32()
    anchor_num: int = convert_str_to_int(num_str) + const_multiple_2_of_32
    anchor_str: str = add_anchor(str(anchor_num))
    stdout(anchor_str)
