# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  gcg = {
    pname = "gcg";
    version = "v362";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "gcg";
      rev = "v362";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = true;
      sha256 = "sha256-+/ZlCJRvXvNjCjhrB1Gi01D5m4LLTe48hQho1Wm4u7Y=";
    };
  };
  ipopt = {
    pname = "ipopt";
    version = "releases/3.14.16";
    src = fetchFromGitHub {
      owner = "coin-or";
      repo = "Ipopt";
      rev = "releases/3.14.16";
      fetchSubmodules = false;
      sha256 = "sha256-ZuiZZMq7NzOm6CCJgMBgEWs8PEfM3pVr2yOWbS42l8U=";
    };
  };
  mip-dd = {
    pname = "mip-dd";
    version = "v1.0.0";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "MIP-DD";
      rev = "v1.0.0";
      fetchSubmodules = false;
      sha256 = "sha256-1xUBhBq0Ie4MG65GW4UrWKcRj1Po/uT7Z1tptu7DTL0=";
    };
  };
  mumps-harness = {
    pname = "mumps-harness";
    version = "releases/3.0.7";
    src = fetchFromGitHub {
      owner = "coin-or-tools";
      repo = "ThirdParty-Mumps";
      rev = "releases/3.0.7";
      fetchSubmodules = false;
      sha256 = "sha256-4P/aR2oUKU5l3eTVs8twQHS3fyPDD7rkAcFc20ZzZHU=";
    };
  };
  papilo = {
    pname = "papilo";
    version = "v2.3.0";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "papilo";
      rev = "v2.3.0";
      fetchSubmodules = false;
      sha256 = "sha256-rB8kRyBxd+zn3XFueTQoN16jbFpXMvneqatQm8Hh2Hg=";
    };
  };
  pygcgopt = {
    pname = "pygcgopt";
    version = "7cef83f85854f7f8616f27add2c1ca494ebbe8dd";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "PyGCGOpt";
      rev = "7cef83f85854f7f8616f27add2c1ca494ebbe8dd";
      fetchSubmodules = false;
      sha256 = "sha256-3WWIFRwXXAwOfanq5iWdbYLWzndhFPItaannAtwK3m4=";
    };
    date = "2024-07-06";
  };
  pyscipopt = {
    pname = "pyscipopt";
    version = "v5.1.1";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "PySCIPOpt";
      rev = "v5.1.1";
      fetchSubmodules = false;
      sha256 = "sha256-j51AxMG1DPD/ORqkEzoBncpPnciqBaQBmOE7PnzakwA=";
    };
  };
  pysoplex = {
    pname = "pysoplex";
    version = "0def0a370ea08d1f1f34b0e5a2e03f7e5881ac9c";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "PySoPlex";
      rev = "0def0a370ea08d1f1f34b0e5a2e03f7e5881ac9c";
      fetchSubmodules = false;
      sha256 = "sha256-8/bndwQ0aUSMl3XTZctfW3SH85IIrlCln6+9cQGuU9Q=";
    };
    date = "2024-02-27";
  };
  scip = {
    pname = "scip";
    version = "v910";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "scip";
      rev = "v910";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = true;
      sha256 = "sha256-DDBPG1evnzbon/ESXP22x4HZSKL/Zr27N1xYIa0odrs=";
    };
  };
  scippp = {
    pname = "scippp";
    version = "1.2.0";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "SCIPpp";
      rev = "1.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-RbxIgATECLJCopShm98+ogfFoCv2yWH1/1QcZyo9GKo=";
    };
  };
  soplex = {
    pname = "soplex";
    version = "release-710";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "soplex";
      rev = "release-710";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = true;
      sha256 = "sha256-ekp6eWf4W5B6z1lp3CDqToWmFMZZAMpLzstZ62CC5j0=";
    };
  };
  vipr = {
    pname = "vipr";
    version = "1ce995609c7b5d382ca47b5e3bf9894ad52296e0";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "vipr";
      rev = "1ce995609c7b5d382ca47b5e3bf9894ad52296e0";
      fetchSubmodules = false;
      sha256 = "sha256-7Cu9Rw5rr6wv1Ul+sSSXt+iIJ8X/FkoMKf5j4D9Zo7w=";
    };
    date = "2024-06-06";
  };
  zimpl = {
    pname = "zimpl";
    version = "694670414e6b8bb6e284be95d1fd2f0225b0528a";
    src = fetchFromGitHub {
      owner = "scipopt";
      repo = "zimpl";
      rev = "694670414e6b8bb6e284be95d1fd2f0225b0528a";
      fetchSubmodules = false;
      sha256 = "sha256-IQEuRxp1iFXmJ8sQo6WdaAwTw/xj8jpLlAOo7nacsto=";
    };
    date = "2024-08-22";
  };
}
