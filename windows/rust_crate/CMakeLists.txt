include(../../cmake/rust_crate.cmake)

set_property(TARGET ${CRATE_NAME} PROPERTY IMPORTED_LOCATION "${CMAKE_CURRENT_SOURCE_DIR}/rust_crate.dll")
set_property(TARGET ${CRATE_NAME} PROPERTY IMPORTED_IMPLIB "${CMAKE_CURRENT_SOURCE_DIR}/rust_crate.lib")