import pytest

def f():
    raise SystemExit(1)

@pytest.mark.skip(reason="no way of currently testing this")
def test_mytest():
    with pytest.raises(SystemExit):
        f()