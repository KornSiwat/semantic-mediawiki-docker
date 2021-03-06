# Semantic MediaWiki

## Installation

- Build and Start

  ```
  docker-compose up -d
  ```

- Setup MediaWiki via its web based GUI at http://localhost:8081

- Download and copy the `LocalSettings.php` to your machine

## Skin

- Activate Timeless Skin

  In `LocalSettings.php` append

  ```
  wfLoadSkin( 'Timeless' );

  ```

  and change $wgDefaultSkin to

  ```
  $wgDefaultSkin = "Timeless";
  ```

## Extentions

- Semantic Wiki

  - Activate Semantic Wiki Extension
    In `LocalSettings.php` append

  ```
  enableSemantics('your domain');
  ```

  Then run the following code

  ```
  php maintenance/update.php
  ```

- Visual Editor
  - Activate Visual Editor
    In `LocalSettings.php` append
  ```
  wfLoadExtension( 'VisualEditor' );
  ```
