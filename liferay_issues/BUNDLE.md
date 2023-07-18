# WHAT IS BUNDLE?

Bundle is a unit basic of modularity for applications or blocks forming a application.
A bundle must have a identify unique (**manifest file**) with heads specify (**valid**) and packaged 
with file **JAR**.

At manifest file we will have two headers specific which us help make this. (Idenfify the our bundle)
  - Bundle-SymbolicName
  - Bundle-Version

Various versions library can coexist. So, its possible have Bundles with same Bundle-SymbolName, but with 
differents versions. Within the container OSGI they are uniques.

A Bundle can have:
  - Class Java
  - Manifest File
  - Resources:
      1. JSP
      2. File Properties
      3. Binary
      4. Texts
