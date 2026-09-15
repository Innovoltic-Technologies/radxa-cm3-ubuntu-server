# Upstreaming

The long-term goal is to upstream board-specific improvements where appropriate rather than maintaining unnecessary downstream modifications.

## Development Strategy

Hardware changes should first be isolated and validated on physical CM3 IO hardware.

After validation, the change should be compared against the current Radxa and upstream Linux device-tree configuration.

Only the minimal required change should be proposed upstream.

## Radxa Review

For changes specific to the Radxa CM3 IO platform, the appropriate Radxa repository and contribution workflow should be identified before submitting a pull request.

The v1.0.0 release itself is an Ubuntu reference image and should not be treated as a kernel upstream submission.

## Evidence

Hardware-related upstream submissions should include:

- exact board and module;
- affected peripheral;
- device-tree change;
- kernel logs;
- test procedure;
- observed result;
- any compatibility considerations.

The PCIe configuration in v1.0.0 is a candidate for further upstream investigation after comparison with the current Radxa and Linux sources.
