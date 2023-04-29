find_path( MAGICK_INCLUDE magick/magick_config.h PATHS ${CMAKE_CURRENT_LIST_DIR})
find_path( MAGICKPP_INCLUDE Magick++.h PATHS ${CMAKE_CURRENT_LIST_DIR}/Magick++/lib )

set(_bits 64)
       
if(${AZI_STATIC_LIBS})
  add_definitions( -D_LIB -D_VISUALC_ )
  find_path(MAGICK_LIBPATH_STATIC_DB CORE_DB_magick_.lib ${CMAKE_CURRENT_LIST_DIR}/VisualMagick/lib${_bits}s)
  find_path(MAGICK_LIBPATH_STATIC_RL CORE_RL_magick_.lib ${CMAKE_CURRENT_LIST_DIR}/VisualMagick/lib${_bits}s)
  set(Magick_LIBRARIES debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_bzlib_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_coders_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_filters_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_jbig_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_jp2_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_jpeg_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_lcms_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_libxml_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_Magick++_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_magick_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_tiff_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_wand_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_wmf_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_xlib_.lib debug ${MAGICK_LIBPATH_STATIC_DB}/CORE_DB_zlib_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_bzlib_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_coders_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_filters_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_jbig_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_jp2_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_jpeg_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_lcms_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_libxml_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_Magick++_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_magick_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_tiff_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_wand_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_wmf_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_xlib_.lib optimized ${MAGICK_LIBPATH_STATIC_RL}/CORE_RL_zlib_.lib Ws2_32.lib)
else(${AZI_STATIC_LIBS})
  add_definitions( -D_DLL -D_VISUALC_ )
  find_path(MAGICK_LIBPATH_DYNAMIC_DB CORE_DB_magick_.lib ${CMAKE_CURRENT_LIST_DIR}/VisualMagick/lib${_bits})
  find_path(MAGICK_LIBPATH_DYNAMIC_RL CORE_RL_magick_.lib ${CMAKE_CURRENT_LIST_DIR}/VisualMagick/lib${_bits})
  set(Magick_LIBRARIES debug ${MAGICK_LIBPATH_DYNAMIC_DB}/CORE_DB_Magick++_.lib debug ${MAGICK_LIBPATH_DYNAMIC_DB}/CORE_DB_magick_.lib optimized ${MAGICK_LIBPATH_DYNAMIC_RL}/CORE_RL_Magick++_.lib optimized ${MAGICK_LIBPATH_DYNAMIC_RL}/CORE_RL_magick_.lib)
endif(${AZI_STATIC_LIBS})
 
include_directories(${MAGICK_INCLUDE} ${MAGICKPP_INCLUDE})

macro(AziMagick)
endmacro(AziMagick)
