@echo off
rem Удаление файла repo.lock
if exist crx-quickstart\repository\segmentstore\repo.lock (
    del /f /q crx-quickstart\repository\segmentstore\repo.lock
    echo Deleted: crx-quickstart\repository\segmentstore\repo.lock
) else (
    echo File not found: crx-quickstart\repository\segmentstore\repo.lock
)

rem Удаление файла cache.lock
if exist crx-quickstart\launchpad\felix\cache.lock (
    del /f /q crx-quickstart\launchpad\felix\cache.lock
    echo Deleted: crx-quickstart\launchpad\felix\cache.lock
) else (
    echo File not found: crx-quickstart\launchpad\felix\cache.lock
)

rem Удаление директории index
if exist crx-quickstart\repository\index (
    rmdir /s /q crx-quickstart\repository\index
    echo Deleted directory: crx-quickstart\repository\index
) else (
    echo Directory not found: crx-quickstart\repository\index
)

rem Удаление директории org/apache/sling/jcr/repoinit
if exist crx-quickstart\launchpad\config\org\apache\sling\jcr\repoinit (
    rmdir /s /q crx-quickstart\launchpad\config\org\apache\sling\jcr\repoinit
    echo Deleted directory: crx-quickstart\launchpad\config\org\apache\sling\jcr\repoinit
) else (
    echo Directory not found: crx-quickstart\launchpad\config\org\apache\sling\jcr\repoinit
)

echo Cleanup complete.
pause