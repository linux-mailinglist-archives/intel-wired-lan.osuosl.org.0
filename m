Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729B81823E3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2020 22:33:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0032C893F7;
	Wed, 11 Mar 2020 21:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zusuIF-+7KXI; Wed, 11 Mar 2020 21:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2E47883F8;
	Wed, 11 Mar 2020 21:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72F7E1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6863E228B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMVkuf5UhEt9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2020 21:33:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 19E64226B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 14:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,542,1574150400"; d="scan'208";a="242812423"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 14:33:23 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 14:33:11 -0700
Message-Id: <20200311213319.783841-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/8] ice devlink support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement basic support for the devlink interface in the ice driver.
Additionally pave some necessary changes for adding a devlink region that
exposes the NVM contents.

This series first contains 5 patches for enabling and implementing full NVM
read access via the ETHTOOL_GEEPROM interface. This includes some cleanup of
endian-types, a new function for reading from the NVM and Shadow RAM as a
flat addressable space, a function to calculate the available flash size
during load, and a change to how some of the NVM version fields are stored
in the ice_nvm_info structure.

Following this is 3 patches for implementing devlink support. First, one
patch which implements the basic framework and introduces the ice_devlink.c
file. Second, a patch to implement basic .info_get support. Finally, a
patch which reads the device PBA identifier and reports it as the `board.id`
value in the .info_get response.

This series builds on previous reviews for patches sent as RFC and is
intended to pave the way for the devlink region changes to support creating
snapshots from userspace and reading from a region without a snapshot.

Previous RFC series and discussion can be found at the following locations

* v1 https://lore.kernel.org/netdev/20200130225913.1671982-2-jacob.e.keller@intel.com/
* v2 https://lore.kernel.org/netdev/20200214232223.3442651-1-jacob.e.keller@intel.com/

This series only contains the ice driver changes for the basic devlink
interface. I am working on updating the devlink core proposals and will send
them to the netdev list after this has been merged.

Once again, thank you for your continued review and feedback.

## Changes since the v2 RFC ##

Removed patches:
* remove "ice: rename variables used for Option ROM version", as this is
  superseded by the patch to change now NVM version data is stored.

Patches without change:
* "ice: use __le16 types for explicitly Little Endian values"
* "ice: create function to read a section of the NVM and Shadow RAM"

New patches:
* "ice: store NVM version info in extracted format"
  a patch which modifies how the NVM version information is stored
* "ice: discover and store size of available flash"
  a patch to discover and save the available flash size during load

Changes in "ice: implement full NVM read from ETHTOOL_GEEPROM"
* use the new flash_size field in ice_get_eeprom_len, enabling a complete
  dump of flash contents, instead of only the initial 64Kb
* remove the unnecessary EINVAL check on return value from
  ice_read_flat_nvm. Now that we report the proper flash size, this error
  code is unexpected, and should be treated as an error.
* Use a "goto release" to ensure that the ice_release_nvm() function is
  called.

Changes in "ice: enable initial devlink support"
* Update copyright year on ice_devlink.c to 2020
* make ice_devlink_ops static
* Use "Return:" instead of "@returns" in kernel-doc comments
* Move the call to devlink_port_type_eth_set into ice_cfg_netdev, after the
  call to register_netdev().

Changes in "ice: add basic handler for devlink .info_get"
* convert to a loop over structured data, similar to the nfp driver
* change ``fw.mgmt.bundle`` to ``fw.mgmt.build``
* change ``fw.undi.orom`` to just ``fw.undi``
* change ``nvm.psid`` to ``fw.psid.api``
* change ``nvm.bundle`` to ``fw.bundle``
* add ``fw.app.name`` and ``fw.app`` representing the name and version of
  the active DDP package
* use lowercase %08x instead of %08X for ``fw.bundle``

Changes in "ice: add board identifier info to devlink .info_get"
* modified to use the new structured format for adding new versions


Jacob Keller (7):
  ice: use __le16 types for explicitly Little Endian values
  ice: create function to read a section of the NVM and Shadow RAM
  ice: store NVM version info in extracted format
  ice: discover and store size of available flash
  ice: enable initial devlink support
  ice: add basic handler for devlink .info_get
  ice: add board identifier info to devlink .info_get

Jesse Brandeburg (1):
  ice: implement full NVM read from ETHTOOL_GEEPROM

 Documentation/networking/devlink/ice.rst      |  71 +++
 Documentation/networking/devlink/index.rst    |   1 +
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |   4 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  89 ----
 drivers/net/ethernet/intel/ice/ice_common.h   |   9 -
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 320 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h  |  14 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  46 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  21 +-
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 484 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  12 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  32 +-
 15 files changed, 809 insertions(+), 300 deletions(-)
 create mode 100644 Documentation/networking/devlink/ice.rst
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.h

-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
