Discord Network Diagnostic — source project

IMPORTANT: This is NOT a crash fix. It only logs when Discord resumes URLSession tasks, without logging URLs or changing network behavior. It may not capture the actual failure.

Target context: iPhone SE (1st generation), iOS 12.1, Discord 227.0, Chimera/Sileo.

Build requirement: Theos installed on a Mac/Linux build environment with an iOS SDK and a compatible arm64 toolchain. From this directory run:
    make package

The resulting .deb will be in packages/ if compilation succeeds.

Before installing any experimental tweak, keep a way to disable tweaks from Chimera/Safe Mode. Remove this package in Sileo to uninstall it. Logs use the [DiscordNetDiag] prefix and should be collected from the device system log; this package does not create a Settings Analytics crash report.

The tweak does not bypass TLS, certificates, authentication, or Discord server compatibility. A diagnostic log alone will not prove the cause of the crash.
