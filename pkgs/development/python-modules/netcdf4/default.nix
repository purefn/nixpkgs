{ stdenv, buildPythonPackage, fetchurl, isPyPy
, numpy, zlib, netcdf, hdf5, curl, libjpeg, cython
}:
buildPythonPackage rec {
  pname = "netCDF4";
  name = "${pname}-${version}";
  version = "1.3.0";

  disabled = isPyPy;

  src = fetchurl {
    url = "mirror://pypi/n/netCDF4/${name}.tar.gz";
    sha256 = "1982372aeacc6b36054d90d8cb54ee9506b66b6f44d5cff10e2ffb162aad5476";
  };

  buildInputs = [
    cython
  ];

  propagatedBuildInputs = [
    numpy
    zlib
    netcdf
    hdf5
    curl
    libjpeg
  ];

  # Variables used to configure the build process
  USE_NCCONFIG="0";
  HDF5_DIR="${hdf5}";
  NETCDF4_DIR="${netcdf}";
  CURL_DIR="${curl.dev}";
  JPEG_DIR="${libjpeg.dev}";

  meta = with stdenv.lib; {
    description = "Interface to netCDF library (versions 3 and 4)";
    homepage = https://pypi.python.org/pypi/netCDF4;
    license = licenses.free;  # Mix of license (all MIT* like)
  };
}
