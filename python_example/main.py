from moduleA.moduleA import *
from moduleB.moduleB import *

import sys

def main():
    for p in sys.path:
        print(p)
    funcA()
    funcB()

if __name__ == "__main__":
    main()

