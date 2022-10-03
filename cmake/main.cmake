add_subdirectory(rust_crate)
target_link_libraries(${PLUGIN_NAME} PRIVATE ${CRATE_NAME})