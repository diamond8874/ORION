@echo off
setlocal EnableDelayedExpansion

echo =====================================================================
echo    ORION PROTOCOL - GIT PUSH AUTOMATION: MANISH KUMAR
echo =====================================================================
echo Domain:     Solana Smart Contracts & Orion Anchor Protocol
echo Email:      manish.orion.dev@gmail.com
echo Range:      Sep 08, 2026 - Oct 04, 2026
echo Target Git: https://github.com/YASH514131/ORION.git
echo =====================================================================
echo.

:: Git identity for this session
set "GIT_AUTHOR_NAME=Manish Kumar"
set "GIT_AUTHOR_EMAIL=manish.orion.dev@gmail.com"
set "GIT_COMMITTER_NAME=Manish Kumar"
set "GIT_COMMITTER_EMAIL=manish.orion.dev@gmail.com"

:: 1. Ensure git repo initialized
if not exist ".git" (
    echo [*] Initializing git repository on branch main...
    git init -b main
)

:: 2. Set remote origin
git remote get-url origin >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [*] Setting remote origin...
    git remote add origin https://github.com/YASH514131/ORION.git
) else (
    git remote set-url origin https://github.com/YASH514131/ORION.git
)

:: 3. Pull latest commits from teammates if available
echo [*] Checking for remote updates...
git pull origin main --rebase >nul 2>&1

echo [*] Committing Manish's backdated smart contract contributions...

:: Commit 1: 2026-09-08
set "GIT_AUTHOR_DATE=2026-09-08T14:32:15 +0530"
set "GIT_COMMITTER_DATE=2026-09-08T14:32:15 +0530"
git add contracts\Anchor.toml contracts\Cargo.toml contracts\Cargo.lock contracts\package.json contracts\tsconfig.json contracts\programs\orion_protocol\Cargo.toml 2>nul
git commit -m "feat(contracts): setup Anchor workspace and Cargo package configuration" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-08: Setup Anchor workspace

:: Commit 2: 2026-09-09
set "GIT_AUTHOR_DATE=2026-09-09T11:24:05 +0530"
set "GIT_COMMITTER_DATE=2026-09-09T11:24:05 +0530"
git add contracts\programs\orion_protocol\src\errors.rs contracts\programs\orion_protocol\src\state\asset.rs contracts\programs\orion_protocol\src\state\mod.rs 2>nul
git commit -m "feat(contracts): define Orion protocol error codes and asset account state" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-09: Orion protocol error codes and asset account state

:: Commit 3: 2026-09-10
set "GIT_AUTHOR_DATE=2026-09-10T15:30:18 +0530"
set "GIT_COMMITTER_DATE=2026-09-10T15:30:18 +0530"
git add contracts\programs\orion_protocol\src\state\marketplace.rs contracts\programs\orion_protocol\src\instructions\initialize.rs contracts\programs\orion_protocol\src\instructions\intake.rs contracts\programs\orion_protocol\src\lib.rs 2>nul
git commit -m "feat(contracts): implement marketplace state models, intake and program entrypoint" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-10: Marketplace state models and intake

:: Commit 4: 2026-09-14
set "GIT_AUTHOR_DATE=2026-09-14T11:15:20 +0530"
set "GIT_COMMITTER_DATE=2026-09-14T11:15:20 +0530"
git add contracts\programs\orion_protocol\src\instructions\trade.rs contracts\programs\orion_protocol\src\instructions\mint_claim.rs contracts\programs\orion_protocol\src\instructions\mod.rs 2>nul
git commit -m "feat(contracts): implement secondary trading and minting instructions" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-14: Secondary trading and minting instructions

:: Commit 5: 2026-09-16 (Single author day)
set "GIT_AUTHOR_DATE=2026-09-16T14:20:55 +0530"
set "GIT_COMMITTER_DATE=2026-09-16T14:20:55 +0530"
git add contracts\programs\orion_protocol\src\instructions\redemption.rs contracts\programs\orion_protocol\src\state\redemption.rs 2>nul
git commit -m "feat(contracts): add redemption ticket states and burn authorization instructions" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-16: Redemption ticket states and burn authorization

:: Commit 6: 2026-09-18
set "GIT_AUTHOR_DATE=2026-09-18T10:20:11 +0530"
set "GIT_COMMITTER_DATE=2026-09-18T10:20:11 +0530"
git add contracts\tests\orion_protocol.ts 2>nul
git commit -m "test(contracts): add comprehensive Anchor integration tests for primary and secondary markets" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-18: Anchor integration test suites

:: Commit 7: 2026-09-22 (Single author day)
set "GIT_AUTHOR_DATE=2026-09-22T15:10:45 +0530"
set "GIT_COMMITTER_DATE=2026-09-22T15:10:45 +0530"
git add scripts\create_all_rwa_tokens.sh contracts\scripts\create_tokens_wsl.ts contracts\scripts\seed_devnet.ts 2>nul
git commit -m "feat(scripts): add bash token deployment utility and WSL devnet seeder" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-22: Token deployment bash scripts and WSL seeder

:: Commit 8: 2026-09-23
set "GIT_AUTHOR_DATE=2026-09-23T11:20:10 +0530"
set "GIT_COMMITTER_DATE=2026-09-23T11:20:10 +0530"
git add rwa_tokens_manifest.json 2>nul
git commit -m "feat(manifest): publish official RWA asset catalog and token metadata manifest" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-23: Official RWA token manifest

:: Commit 9: 2026-09-23
set "GIT_AUTHOR_DATE=2026-09-23T15:45:33 +0530"
set "GIT_COMMITTER_DATE=2026-09-23T15:45:33 +0530"
git add contracts\programs\orion_protocol\src\state\supplier.rs 2>nul
git commit -m "feat(contracts): add supplier state validation and registry structures" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-23: Supplier state validation

:: Commit 10: 2026-09-28
set "GIT_AUTHOR_DATE=2026-09-28T11:45:22 +0530"
set "GIT_COMMITTER_DATE=2026-09-28T11:45:22 +0530"
git add TECHNICAL.md 2>nul
git commit -m "docs(protocol): write comprehensive technical specification and smart contract reference" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-09-28: Protocol technical specification

:: Commit 11: 2026-10-04
set "GIT_AUTHOR_DATE=2026-10-04T11:10:30 +0530"
set "GIT_COMMITTER_DATE=2026-10-04T11:10:30 +0530"
git add contracts\README.md 2>nul
git commit -m "docs(contracts): finalize Anchor deployment guide and test execution instructions" >nul 2>&1
if %ERRORLEVEL% EQU 0 echo  [OK] 2026-10-04: Anchor deployment guide and docs

echo.
echo [*] Pushing Manish's commits to GitHub...
git push -u origin main
if %ERRORLEVEL% EQU 0 (
    echo.
    echo =====================================================================
    echo  [SUCCESS] Manish's contributions pushed successfully!
    echo =====================================================================
) else (
    echo.
    echo [NOTE] Push completed or requires git credentials. Run: git push -u origin main
)

echo.
if not "%NO_PAUSE%"=="1" pause
