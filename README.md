# Semantic MediaWiki With Timeless Skin

## Installation

- Build and Start

  ```
  docker-compose up -d
  ```

- Setup MediaWiki via its web based GUI at http://localhost:8081

- Download and copy the `LocalSettings.php` to your machine

- Activate Timeless Skin

  In `LocalSettings.php` append

  ```
  wfLoadSkin( 'Timeless' );

  ```

  and change $wgDefaultSkin to

  ```
  $wgDefaultSkin = "Timeless";
  ```

- Activate Semantic Wiki Extension

  In `LocalSettings.php` append

  ```
  enableSemantics('your domain');
  ```
