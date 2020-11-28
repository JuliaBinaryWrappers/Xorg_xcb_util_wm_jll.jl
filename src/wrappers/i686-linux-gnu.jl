# Autogenerated wrapper script for Xorg_xcb_util_wm_jll for i686-linux-gnu
export libxcb_ewmh, libxcb_icccm

using Xorg_xcb_util_jll
JLLWrappers.@generate_wrapper_header("Xorg_xcb_util_wm")
JLLWrappers.@declare_library_product(libxcb_ewmh, "libxcb-ewmh.so.2")
JLLWrappers.@declare_library_product(libxcb_icccm, "libxcb-icccm.so.4")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_xcb_util_jll)
    JLLWrappers.@init_library_product(
        libxcb_ewmh,
        "lib/libxcb-ewmh.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libxcb_icccm,
        "lib/libxcb-icccm.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
