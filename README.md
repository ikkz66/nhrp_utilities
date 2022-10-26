<br />
<br />

<p align="center">
</p>

<br />

<p align="center">
  <img alt="npm" src="https://img.shields.io/npm/dw/easybase-react">
  <img alt="GitHub" src="https://img.shields.io/github/license/easybase/easybase-react">
  <img alt="npm bundle size" src="https://img.shields.io/bundlephobia/min/easybase-react">
  <img alt="npm" src="https://img.shields.io/npm/v/easybase-react">
</p>


<h3 align="center">
  <b>
    <a href="https://easybase.io/react/">
      NHRP Utilities Library
    </a>
  </b>
</h3>

<br />

<!-- DOCUMENTATION -->


## Getting Started

File Structure

```
├── src/
│   ├── App.js
│   ├── index.js
│   └── ebconfig.js  <–––
├── assets/
├── package.json
└── ...
```

2. Then, wrap your root component in *EasybaseProvider* with your credentials.
```
npm install easybase-react
```

```jsx
import React, { useEffect } from "react";
import { EasybaseProvider, useEasybase } from 'easybase-react';
import ebconfig from "./ebconfig";

function App() {
  return (
    <EasybaseProvider ebconfig={ebconfig}>
      <Container />
    </EasybaseProvider>
  );
}
```

## Examples

* [Single Component User Authentication](https://easybase.io/react-and-react-native-user-authentication/)

* [Stateful Database](https://easybase.io/react-database-app-tutorial/)

* [Google Analytics Integration](https://easybase.io/react/#google-analytics-integration)

<!-- CONTACT -->
## Contact

[@easybase_io](https://twitter.com/easybase_io) – hello@easybase.io
