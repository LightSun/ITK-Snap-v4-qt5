#############################################
# REQUIRE ITK 3.20 OR LATER                 #
#############################################
#set(ITK_DIR /home/heaven7/heaven7/libs/ITK/build-InsightToolkit-5.3.0-Desktop_Qt_5_14_2_GCC_64bit-Release)
SET(ITK_DIR /home/heaven7/heaven7/libs/ITK/build-InsightToolkit-5.2.1-Desktop_Qt_5_14_2_GCC_64bit-Release)
#include()
FIND_PACKAGE(ITK 5.2.1 REQUIRED COMPONENTS
  ITKAnisotropicSmoothing
  ITKAntiAlias
  ITKBiasCorrection
  ITKBinaryMathematicalMorphology
  ITKColormap
  ITKCommon
  ITKConnectedComponents
  ITKConvolution
  ITKDisplacementField
  ITKDistanceMap
  ITKFFT
  ITKFiniteDifference
  ITKGDCM
  ITKGPUCommon
  ITKGPUSmoothing
  ITKIOGDCM
  ITKIOGE
  ITKIOGIPL
  ITKIOImageBase
  ITKIOMeshBase
  ITKIOMeta
  ITKIONIFTI
  ITKIONRRD
  ITKIORAW
  ITKIOSiemens
  ITKIOTransformBase
  ITKIOVTK
  ITKIOXML
  ITKImageAdaptors
  ITKImageCompare
  ITKImageCompose
  ITKImageFeature
  ITKImageFilterBase
  ITKImageFunction
  ITKImageGradient
  ITKImageGrid
  ITKImageIntensity
  ITKImageLabel
  ITKImageNoise
  ITKImageStatistics
  ITKLabelMap
  ITKLabelVoting
  ITKLevelSets
  ITKMathematicalMorphology
  ITKMesh
  ITKRegistrationCommon
  ITKSmoothing
  ITKSpatialObjects
  ITKStatistics
  ITKTestKernel
  ITKThresholding
  ITKTransform
  ITKTransformFactory
  ITKVTK
  ITKWatersheds
  ITKZLIB
  ITKImageIO
  ITKMeshIO
  ITKTransformIO
  MorphologicalContourInterpolation)

INCLUDE(${ITK_USE_FILE})

#############################################
# REQUIRE VTK                               #
#############################################
SET(VTK_DIR /home/heaven7/heaven7/libs/ITK/VTK-9.2.6/build)
FIND_PACKAGE(VTK 9 REQUIRED COMPONENTS
  ChartsCore
  CommonComputationalGeometry
  CommonCore
  CommonDataModel
  CommonExecutionModel
  CommonMath
  CommonTransforms
  FiltersCore
  FiltersGeneral
  FiltersGeometry
  FiltersSources
  GUISupportQt
  IOExport
  IOGeometry
  IOImage
  IOLegacy
  IOPLY
  ImagingCore
  ImagingGeneral
  InteractionStyle
  InteractionWidgets
  RenderingAnnotation
  RenderingContext2D
  RenderingContextOpenGL2
  RenderingCore
  RenderingLOD
  RenderingOpenGL2
  RenderingUI
  RenderingVolume
  RenderingVolumeOpenGL2
  RenderingGL2PSOpenGL2
  ViewsContext2D)

#############################################
# REQUIRE QT5                               #
#############################################
FIND_PACKAGE(Qt5Widgets)
FIND_PACKAGE(Qt5OpenGL)
FIND_PACKAGE(Qt5Concurrent)
FIND_PACKAGE(Qt5Qml)

SET(SNAP_QT_INCLUDE_DIRS
  ${Qt5Widgets_INCLUDE_DIRS}
  ${Qt5OpenGL_INCLUDE_DIRS}
  ${Qt5Concurrent_INCLUDE_DIRS}
  ${QT5Qml_INCLUDE_DIRS}
)

SET(SNAP_QT_LIBRARIES
  Qt5::Widgets
  Qt5::OpenGL
  Qt5::Concurrent
  Qt5::Qml
)

# On Linux the X11Extras library is required
# IF(UNIX AND NOT APPLE)
#   FIND_PACKAGE(QT5X11Extras)
#   SET(SNAP_QT_INCLUDE_DIRS ${SNAP_QT_INCLUDE_DIRS} ${QT5X11Extras_INCLUDE_DIRS})
#   SET(SNAP_QT_LIBRARIES ${SNAP_QT_LIBRARIES} QT5::X11Extras)
# ENDIF()

# Set vars for the QT binary and library directories
GET_FILENAME_COMPONENT(QT_BINARY_DIR "${QT5Core_DIR}/../../../bin" ABSOLUTE)
GET_FILENAME_COMPONENT(QT_LIBRARY_DIR "${QT5Core_DIR}/../../" ABSOLUTE)

# Set the QTVERSION var
SET(QTVERSION ${QT5Widgets_VERSION})

# Look for CURL. It is now required part of ITK-SNAP
FIND_PACKAGE(CURL)
IF(CURL_FOUND)
  INCLUDE_DIRECTORIES(${CURL_INCLUDE_DIR})
ENDIF(CURL_FOUND)


