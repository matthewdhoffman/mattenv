import os, sys, re, cPickle, gzip, time, collections, IPython, h5py, pandas
from itertools import *
import numpy as np
import scipy, scipy.special, scipy.stats, scipy.weave
sys.path.append(os.path.expanduser('~/mattenv/python'))
from mdhlib import *

from matplotlib.pyplot import *
ip = IPython.get_ipython()
ip.magic('matplotlib inline')

