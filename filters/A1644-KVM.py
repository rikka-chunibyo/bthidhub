def message_filter(msg: bytes) -> bytes:
    if msg == b'\x01\x08\x00\x00\x00\x00\x00\x00\x00\x02':
        print("SWITCHED COMPUTERS")
        return b"\xFF"
    return msg
