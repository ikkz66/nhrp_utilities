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

1. File Structure

```
├── nhrp_utils/
│   ├── fxmanifest.lua
│   ├── config.lua
│   ├── client.lua
│   ├── nhrp.lua
│   ├── svreport.lua
│   └── visualsettings.dat
├── html/
├── audio/
└── ...
```

2. Examples
```
start nhrp_utils
```

```lua
notification = {
        icons = true, -- show or hide icons default true
        insert = 'before', -- Accepted values: after or before.
        pool = 0, -- Default: 0 Limits the number of concurrent notification elements that can be rendered within the notifications container at any given time. A value of 0 means that there is no limit.
        sticky = false, -- Default: false A boolean designating whether the notification elements should be removed automatically when they expire or whether they should stay in the DOM until they are removed manually.
        pauseOnHover = true, -- Default: true A boolean designating whether the notifications expiration control should pause when hovering over the wrapper element. Can only be set on class instantiation.
        life = 7000, -- Default: 3000 Expiration time for non-sticky notification elements in milliseconds.
        progressbar = true, -- A boolean designating whether the life time progress bar will be displayed for each notification element
        effect = 'slide', -- The animation effect when adding or removing notification elements. Accepted values: fade or slide.
        easing = 'ease-in-out', -- linear, ease, ease-in, ease-out, ease-in-out or a custom cubic-bezier value.
    }
		send_notify('info','.gg/nhdojrp', 'Example notification!', notification)
```


