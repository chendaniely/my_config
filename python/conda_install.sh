conda install ncurses

# symbol lookup error: /usr/lib/libpangoft2-1.0.so.0: undefined symbol: FcWeightFromOpenType
# https://github.com/ContinuumIO/anaconda-issues/issues/368
conda install -c asmeurer pango
conda install -c conda-forge nbpresent
