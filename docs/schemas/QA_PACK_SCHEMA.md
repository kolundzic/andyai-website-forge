# QA Pack Schema

## Purpose

The QA Pack defines verification before and after publishing.

## Local QA

- repository structure exists
- required docs exist
- required specs exist
- scripts are executable
- no `.env` files committed
- no `.next` committed
- no `node_modules` committed
- no ZIP artifacts committed

## Future Build QA

- production build passes
- routes generate correctly
- images exist
- alt text exists
- keyword checks pass
- README is present
- release notes exist

## Future Online QA

- apex domain loads
- www domain loads, when applicable
- required routes return 200
- expected keywords appear
- image assets load
- no broken public navigation links

## Semafor Standard

- 🟢 success
- 🟡 warning/review
- 🔴 block/error
- 🔵 info
