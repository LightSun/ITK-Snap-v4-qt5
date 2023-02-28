# ITK-Snap-v4-qt5
change qt6 to qt5 for easy compile in ubuntu18.04. 
based on itksnap-4.x(2023-2-27).

### why I changed to qt5 ?
for qt6 need glibc 2.29+. but ubuntu 18.04 is 2.27. upgrade often failed and cause system bash all run failed.

### Compile Steps(Heaven7)
- 1, compile VTK and ITK.
- 2, change 'ITK_DIR' path to yours.
- 3, use cmake to compile.
- PS: test ok with 'itk-5.2.1' and 'vtk-9.2.6'
