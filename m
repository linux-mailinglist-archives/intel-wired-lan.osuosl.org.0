Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C347182695
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A54B88A9D;
	Thu, 12 Mar 2020 01:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDrFfb1lOFdP; Thu, 12 Mar 2020 01:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF23288A98;
	Thu, 12 Mar 2020 01:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECA811BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E34668594B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJmGJExFPsOQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAFC58589C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:27:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242867030"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 18:27:28 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:27:17 -0700
Message-Id: <20200312012726.973301-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 0/9] ice devlink support
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

## Changes since v1 ##

* added a patch to promote ``fw.bundle_id`` to a generic version
* used ``fw.bundle_id`` instead of ``fw.bundle``

## Changes since the RFC ##

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



Jacob Keller (8):
  ice: use __le16 types for explicitly Little Endian values
  ice: create function to read a section of the NVM and Shadow RAM
  ice: store NVM version info in extracted format
  ice: discover and store size of available flash
  ice: enable initial devlink support
  devlink: promote "fw.bundle_id" to a generic info version
  ice: add basic handler for devlink .info_get
  ice: add board identifier info to devlink .info_get

Jesse Brandeburg (1):
  ice: implement full NVM read from ETHTOOL_GEEPROM

 .../networking/devlink/devlink-info.rst       |   5 +
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
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |   2 +-
 include/net/devlink.h                         |   2 +
 18 files changed, 817 insertions(+), 301 deletions(-)
 create mode 100644 Documentation/networking/devlink/ice.rst
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.h

-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
