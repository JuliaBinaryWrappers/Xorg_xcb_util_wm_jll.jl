# Autogenerated wrapper script for Xorg_xcb_util_wm_jll for aarch64-linux-gnu
export libxcb_ewmh, libxcb_icccm

using Xorg_xcb_util_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libxcb_ewmh`
const libxcb_ewmh_splitpath = ["lib", "libxcb-ewmh.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxcb_ewmh_path = ""

# libxcb_ewmh-specific global declaration
# This will be filled out by __init__()
libxcb_ewmh_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxcb_ewmh = "libxcb-ewmh.so.2"


# Relative path to `libxcb_icccm`
const libxcb_icccm_splitpath = ["lib", "libxcb-icccm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxcb_icccm_path = ""

# libxcb_icccm-specific global declaration
# This will be filled out by __init__()
libxcb_icccm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxcb_icccm = "libxcb-icccm.so.4"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    LIBPATH_list = [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]
    append!.(Ref(PATH_list), (Xorg_xcb_util_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_xcb_util_jll.LIBPATH_list,))

    global libxcb_ewmh_path = abspath(joinpath(artifact"Xorg_xcb_util_wm", libxcb_ewmh_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxcb_ewmh_handle = dlopen(libxcb_ewmh_path)
    push!(LIBPATH_list, dirname(libxcb_ewmh_path))

    global libxcb_icccm_path = abspath(joinpath(artifact"Xorg_xcb_util_wm", libxcb_icccm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxcb_icccm_handle = dlopen(libxcb_icccm_path)
    push!(LIBPATH_list, dirname(libxcb_icccm_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

