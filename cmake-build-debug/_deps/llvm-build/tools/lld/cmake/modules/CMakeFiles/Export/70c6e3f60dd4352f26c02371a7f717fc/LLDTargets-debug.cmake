#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "lldCommon" for configuration "Debug"
set_property(TARGET lldCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldCommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldCommon.a"
  )

list(APPEND _cmake_import_check_targets lldCommon )
list(APPEND _cmake_import_check_files_for_lldCommon "${_IMPORT_PREFIX}/lib/liblldCommon.a" )

# Import target "lldCore" for configuration "Debug"
set_property(TARGET lldCore APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldCore PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldCore.a"
  )

list(APPEND _cmake_import_check_targets lldCore )
list(APPEND _cmake_import_check_files_for_lldCore "${_IMPORT_PREFIX}/lib/liblldCore.a" )

# Import target "lldDriver" for configuration "Debug"
set_property(TARGET lldDriver APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldDriver PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldDriver.a"
  )

list(APPEND _cmake_import_check_targets lldDriver )
list(APPEND _cmake_import_check_files_for_lldDriver "${_IMPORT_PREFIX}/lib/liblldDriver.a" )

# Import target "lldMachO" for configuration "Debug"
set_property(TARGET lldMachO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldMachO PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldMachO.a"
  )

list(APPEND _cmake_import_check_targets lldMachO )
list(APPEND _cmake_import_check_files_for_lldMachO "${_IMPORT_PREFIX}/lib/liblldMachO.a" )

# Import target "lldYAML" for configuration "Debug"
set_property(TARGET lldYAML APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldYAML PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldYAML.a"
  )

list(APPEND _cmake_import_check_targets lldYAML )
list(APPEND _cmake_import_check_files_for_lldYAML "${_IMPORT_PREFIX}/lib/liblldYAML.a" )

# Import target "lldReaderWriter" for configuration "Debug"
set_property(TARGET lldReaderWriter APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldReaderWriter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldReaderWriter.a"
  )

list(APPEND _cmake_import_check_targets lldReaderWriter )
list(APPEND _cmake_import_check_files_for_lldReaderWriter "${_IMPORT_PREFIX}/lib/liblldReaderWriter.a" )

# Import target "lld" for configuration "Debug"
set_property(TARGET lld APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lld PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/lld"
  )

list(APPEND _cmake_import_check_targets lld )
list(APPEND _cmake_import_check_files_for_lld "${_IMPORT_PREFIX}/bin/lld" )

# Import target "lldCOFF" for configuration "Debug"
set_property(TARGET lldCOFF APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldCOFF PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldCOFF.a"
  )

list(APPEND _cmake_import_check_targets lldCOFF )
list(APPEND _cmake_import_check_files_for_lldCOFF "${_IMPORT_PREFIX}/lib/liblldCOFF.a" )

# Import target "lldELF" for configuration "Debug"
set_property(TARGET lldELF APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldELF PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldELF.a"
  )

list(APPEND _cmake_import_check_targets lldELF )
list(APPEND _cmake_import_check_files_for_lldELF "${_IMPORT_PREFIX}/lib/liblldELF.a" )

# Import target "lldMachO2" for configuration "Debug"
set_property(TARGET lldMachO2 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldMachO2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldMachO2.a"
  )

list(APPEND _cmake_import_check_targets lldMachO2 )
list(APPEND _cmake_import_check_files_for_lldMachO2 "${_IMPORT_PREFIX}/lib/liblldMachO2.a" )

# Import target "lldMinGW" for configuration "Debug"
set_property(TARGET lldMinGW APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldMinGW PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldMinGW.a"
  )

list(APPEND _cmake_import_check_targets lldMinGW )
list(APPEND _cmake_import_check_files_for_lldMinGW "${_IMPORT_PREFIX}/lib/liblldMinGW.a" )

# Import target "lldWasm" for configuration "Debug"
set_property(TARGET lldWasm APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lldWasm PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblldWasm.a"
  )

list(APPEND _cmake_import_check_targets lldWasm )
list(APPEND _cmake_import_check_files_for_lldWasm "${_IMPORT_PREFIX}/lib/liblldWasm.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
