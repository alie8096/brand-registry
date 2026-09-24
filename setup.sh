#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# Logo Archive Setup
# Archive policy effective date: 2026-09-23
# ============================================================

POLICY_DATE="2026-09-24"

BME_DATES=(
  "2021-11-3"
  "2022-06-24"
  "2022-10-31"
  "2025-11-11"
)

VIRAPY_DATES=(
  "2024-06-16"
  "2026-06-16"
)

# ============================================================
# Directory structure
# ============================================================

mkdir -p BME ViraPy

for d in "${BME_DATES[@]}"; do
  mkdir -p "BME/$d/source" \
           "BME/$d/preview" \
           "BME/$d/patch"
done

for d in "${VIRAPY_DATES[@]}"; do
  mkdir -p "ViraPy/$d/source" \
           "ViraPy/$d/preview" \
           "ViraPy/$d/patch"
done

# ============================================================
# Root README
# ============================================================

cat > README.md <<EOF
# Logo Archive

Chronological archive of logo and visual-identity designs
associated with Ali Ebrahimian and the corresponding brands
or identities represented in this repository.

## Archive Policy

Beginning on ${POLICY_DATE}, a formal policy was adopted to
preserve selected logo designs in this repository together
with available source files, previews, copyright notices,
and historical metadata.

The dates assigned to individual logo versions are historical
metadata. They represent the original creation, publication,
or other available historical record of the work.

They do NOT mean that the works were first added to this
repository on ${POLICY_DATE}.

Therefore:

- Historical dates are preserved as historical metadata.
- The formal archive policy became effective on ${POLICY_DATE}.
- Adding a historical work to this archive does not change
  its historical creation or publication date.
- Git history provides an additional chronological record of
  repository activity.

## Collections

- BME — personal BME identity logo archive
- ViraPy — shared ViraPy brand logo archive

See the LICENSE and COPYRIGHT files in the relevant collection
and version directories.
EOF

# ============================================================
# BME LICENSE
# ============================================================

cat > BME/LICENSE <<EOF
BME LOGO ARCHIVE — RIGHTS AND USE NOTICE

Copyright © Ali Ebrahimian.
All rights reserved.

ARCHIVE POLICY EFFECTIVE DATE: ${POLICY_DATE}

This repository contains BME logo designs, visual-identity
elements, artwork, source files, previews, patch/embroidery
versions, and related materials.

The dates assigned to individual works identify their historical
creation, publication, or other available metadata. They do not
represent the date on which the present archive policy was adopted.

Beginning on ${POLICY_DATE}, the rights holder adopted the policy
of preserving these materials in this repository as a chronological
public archive.

Unless expressly authorized in writing, no permission is granted
to reproduce, modify, distribute, publish, sell, sublicense,
commercially exploit, register, trademark, or otherwise use these
logo materials beyond permissions necessarily granted by GitHub's
Terms of Service for hosting and operating a public repository.

Viewing or accessing this repository does not transfer ownership
or grant a general license to use the logos.

Third-party materials, if any, remain the property of their
respective rights holders.

This notice documents the rights holder's position and archive
policy. Applicable intellectual-property rights are determined
by the law applicable to the particular work and jurisdiction.

For permission requests, contact the rights holder.
EOF

# ============================================================
# ViraPy LICENSE
# ============================================================

cat > ViraPy/LICENSE <<EOF
VIRAPY LOGO ARCHIVE — RIGHTS AND USE NOTICE

ViraPy is a shared project and brand of:

- Ali Ebrahimian
- Mehdi Rezaei

The ViraPy logo was designed and created by Ali Ebrahimian.

Brand/project ownership and logo authorship are recorded
separately.

All rights reserved, subject to the rights and agreements
applicable to the relevant work and rights holder(s).

ARCHIVE POLICY EFFECTIVE DATE: ${POLICY_DATE}

This repository contains ViraPy logo designs, visual-identity
elements, artwork, source files, previews, patch/embroidery
versions, and related brand materials.

The dates assigned to individual works identify their historical
creation, publication, or other available metadata. They do not
represent the date on which the present archive policy was adopted.

Beginning on ${POLICY_DATE}, the ViraPy rights holder(s) adopted
the policy of preserving these materials in this repository as a
chronological public archive.

Unless expressly authorized by the relevant rights holder(s),
no permission is granted to reproduce, modify, distribute, publish,
sell, sublicense, commercially exploit, register, trademark, or
otherwise use these logo or brand materials beyond permissions
necessarily granted by GitHub's Terms of Service for hosting and
operating a public repository.

Viewing or accessing this repository does not transfer ownership
or grant a general license to use the logos or brand materials.

Third-party materials, if any, remain the property of their
respective rights holders.

This notice documents the rights holders' position and archive
policy. Applicable intellectual-property rights are determined
by the law applicable to the particular work and jurisdiction.

For permission requests, contact the relevant rights holder(s).
EOF

# ============================================================
# BME collection README
# ============================================================

cat > BME/README.md <<EOF
# BME Logo Archive

Historical and current logo designs associated with the BME
personal identity of Ali Ebrahimian.

## Owner

Ali Ebrahimian

## Category

Personal Identity / Biomedical Engineering

## Archive Policy

The formal archive policy became effective on ${POLICY_DATE}.

The dates of individual versions are historical metadata and
refer to their original creation, publication, or other available
historical record.

They do not indicate when the present archive policy began.

## Structure

Each dated directory may contain:

- \`latest/\` — latest version file
- \`source/\` — original editable/source files
- \`preview/\` — preview and presentation files
- \`patch/\` — embroidery/patch versions, where available
- \`README.md\` — information about the specific version
- \`COPYRIGHT.md\` — copyright and ownership information

## Versions

- 2021-11-3
- 2022-06-24
- 2022-10-31
- 2025-11-11

See LICENSE for collection-level rights.
EOF

# ============================================================
# ViraPy collection README
# ============================================================

cat > ViraPy/README.md <<EOF
# ViraPy Logo Archive

Historical and current logo designs associated with the ViraPy
brand.

## Brand / Project

ViraPy is a shared project and brand of:

- Ali Ebrahimian
- Mehdi Rezaei

## Logo Creator / Designer

The ViraPy logo was designed and created by Ali Ebrahimian.

The creator/designer of the logo and ownership of the ViraPy
brand are recorded separately and should not be interpreted as
the same right.

## Archive Policy

The formal archive policy became effective on ${POLICY_DATE}.

The dates of individual logo versions are historical metadata
and refer to their original creation, publication, or other
available historical record.

They do not indicate when the present archive policy began.

## Structure

Each dated directory may contain:

- \`latest/\` — latest version file
- \`source/\` — original editable/source files
- \`preview/\` — preview and presentation files
- \`patch/\` — embroidery/patch versions, where available
- \`README.md\` — information about the specific version
- \`COPYRIGHT.md\` — copyright and ownership information

## Versions

- 2024-06-16
- 2026-06-16

See LICENSE for collection-level rights.
EOF

# ============================================================
# BME version files
# ============================================================

make_bme_version() {
  local d="$1"

  cat > "BME/$d/README.md" <<EOF
# BME Logo — ${d}

## Identity

BME — Ali Ebrahimian

## Historical Date

${d}

## Type

Personal Logo / Visual Identity

## Archive Status

Historical archive

## Archive Policy

This work is being preserved under the repository archive
policy adopted on ${POLICY_DATE}.

The date above is historical metadata associated with this logo.
It does not indicate that the logo was first added to this
repository on ${POLICY_DATE}.

## Contents

- \`latest/\` — latest version file
- \`source/\` — original editable/source files
- \`preview/\` — preview and presentation files
- \`patch/\` — embroidery/patch versions, if available
- \`COPYRIGHT.md\` — copyright and ownership information

## Notes

The historical metadata available for this version is preserved
without intentionally changing its original date.

---

Copyright © Ali Ebrahimian.
All rights reserved.
EOF

  cat > "BME/$d/COPYRIGHT.md" <<EOF
# Copyright

Copyright © Ali Ebrahimian.
All rights reserved.

## Work

BME Logo — ${d}

## Owner

Ali Ebrahimian

## Historical Date

${d}

## Archive Policy Effective Date

${POLICY_DATE}

## Historical Record

The date associated with this work is preserved as historical
metadata and refers to the original creation, publication, or
other available record for this logo.

The decision to maintain this work in the present repository
under a formal logo-archiving policy was made effective on
${POLICY_DATE}.

Therefore, the archive policy date must not be interpreted as
the creation or original publication date of this logo.

## Rights

The original visual design and original creative materials
contained in this directory are reserved by the applicable
rights holder, subject to applicable law.

No general permission is granted to reproduce, modify, distribute,
publish, commercially exploit, register, trademark, or otherwise
use this logo without prior written permission from the rights
holder, except for permissions necessarily granted by GitHub's
Terms of Service for hosting and operating the repository.

## Repository Record

This directory forms part of the chronological BME logo archive.
Git repository history may provide an additional record of when
these archived materials were committed to the repository.
EOF
}

# ============================================================
# ViraPy version files
# ============================================================

make_virapy_version() {
  local d="$1"

  cat > "ViraPy/$d/README.md" <<EOF
# ViraPy Logo — ${d}

## Brand / Project

ViraPy

## Brand Ownership

ViraPy is a shared project and brand of:

- Ali Ebrahimian
- Mehdi Rezaei

## Logo Creator / Designer

The ViraPy logo was designed and created by Ali Ebrahimian.

Brand/project ownership and logo authorship are recorded
separately.

## Historical Date

${d}

## Type

Brand Logo / Visual Identity

## Archive Status

Historical archive

## Archive Policy

This work is being preserved under the repository archive
policy adopted on ${POLICY_DATE}.

The date above is historical metadata associated with this logo.
It does not indicate that the logo was first added to this
repository on ${POLICY_DATE}.

## Contents

- \`latest/\` — latest version file
- \`source/\` — original editable/source files
- \`preview/\` — preview and presentation files
- \`patch/\` — embroidery/patch versions, if available
- \`COPYRIGHT.md\` — copyright and ownership information

## Notes

The historical metadata available for this version is preserved
without intentionally changing its original date.

---

Copyright © ViraPy rights holder(s).
All rights reserved.
EOF

  cat > "ViraPy/$d/COPYRIGHT.md" <<EOF
# Copyright

## Work

ViraPy Logo — ${d}

## Brand / Project

ViraPy

## Brand Ownership

ViraPy is a shared project and brand of:

- Ali Ebrahimian
- Mehdi Rezaei

## Logo Creator / Designer

The ViraPy logo was designed and created by Ali Ebrahimian.

The creator/designer of the logo and ownership of the ViraPy
brand are recorded separately.

## Historical Date

${d}

## Archive Policy Effective Date

${POLICY_DATE}

## Historical Record

The date associated with this work is preserved as historical
metadata and refers to the original creation, publication, or
other available record for this logo.

The decision to maintain this work in the present repository
under a formal logo-archiving policy was made effective on
${POLICY_DATE}.

Therefore, the archive policy date must not be interpreted as
the creation or original publication date of this logo.

## Rights

Rights in the ViraPy brand and rights in the original logo
artwork are recorded separately and remain subject to the
applicable agreements between the rights holder(s) and
applicable law.

No general permission is granted to reproduce, modify, distribute,
publish, commercially exploit, register, trademark, or otherwise
use this logo or brand materials without prior written permission
from the relevant rights holder(s), except for permissions
necessarily granted by GitHub's Terms of Service for hosting and
operating the repository.

## Repository Record

This directory forms part of the chronological ViraPy logo archive.
Git repository history may provide an additional record of when
these archived materials were committed to the repository.
EOF
}

for d in "${BME_DATES[@]}"; do
  make_bme_version "$d"
done

for d in "${VIRAPY_DATES[@]}"; do
  make_virapy_version "$d"
done

echo
echo "Logo archive structure and documentation created successfully."
echo "Archive policy effective date: ${POLICY_DATE}"
echo
echo "Review the generated files before committing them."
