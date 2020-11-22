# bsx

Quickly add deps to bsconfig.json

# Installation

Clone the repo or copy the script and put it in your path.

# Usage

```sh
❯ bsx bs-faker
❯ cat bsconfig.json
{
  "name": "test",
  "reason": {
    "react-jsx": 3
  },
  "sources": {
    "dir": "src",
    "subdirs": true
  },
  "bsc-flags": [
    "-bs-super-errors",
    "-bs-no-version-header"
  ],
  "package-specs": [
    {
      "module": "commonjs",
      "in-source": true
    }
  ],
  "suffix": ".bs.js",
  "refmt": 3,
  "bs-dependencies": [
    "reason-react",
    "decco",
    "bs-faker"
  ],
  "warnings": {
    "number": "-30-45"
  }
}
```