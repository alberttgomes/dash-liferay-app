# Let me learn!

### Artifacts about the upgrade process of database between versions of Lifaray.

#### Subjects that will discussed

- architecture
- database
- prepared statement lib
- java
- extends classes(UpgradeStepRegistrator and UpgradeProcess)
- (will be necessary use regex?)

<br />
<h2>Architecture</h2>
<p>Understand the architecture to use on new issues of process to keep the consistence, pattern of the code and assurence the working.</p>

<h3>Model of the architecture in diagram</h3>
<img src="[change to realy path]" alt="architecture-diagram" />

<h3>Folders architecture</h3>
<p>For every app of Liferay, has your respective structure of the upgrade process. Generally stay on directory service/internal/upgrade</p>

- examples
  - workflow: 
    - workflow/metrics/internal/upgrade
    - analytics/message/storage/internal/upgrade    
