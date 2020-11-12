Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7872AFBD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF20B86C8E;
	Thu, 12 Nov 2020 00:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9s5hx+TlLpfN; Thu, 12 Nov 2020 00:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51CE486C7C;
	Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24F1E1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 215E922BCC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UzPCTOPeoYZ4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A5002E11B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:10 +0000 (UTC)
IronPort-SDR: 9djISWubeZEcZuuyYJQea5QOLa0UfReH7TPwcCiYzWOlJduhq5edV9K11n5brXYJjH5+Dc90u7
 Z0gTQwcX0fzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170406224"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="170406224"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:06 -0800
IronPort-SDR: hMgD1N27/q0kpzT6LqFMGYFl3VwPE7aJjR3uoY2O2z+FGGgMWk7zfvsPUtOTI/QNMgq/14tBaP
 Z342imxbAm2g==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="309015615"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:05 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 16:43:23 -0800
Message-Id: <20201112004330.2896993-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 0/7] ice: implement display of
 stored flash versions
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

The devlink info interface supports the ability for drivers to report the
version of firmware that is stored (downloaded) to the device, but is not
yet active.

This series implements support for this in the ice driver, for most flash
versions. This includes the UNDI Option ROM, the Netlist module, and the
fw.bundle_id.

To support this, two major angles of refactor were necessary. First, the ice
driver's main driving loop for reporting versions is refactored to allow for
a context structure. This enabled more easily extending the available
information without having to permanently cache the firmware values in the
driver structures.

Second, the way that we read the firmware versions for most fields needed to
change. The existing methods of reading the flash values were based on
reading from sections of the initialized Shadow RAM. These values get loaded
when the device is booting up. Because of this, they were not capable of
being used to report the inactive versions stored within the non-running
binary sections we downloaded.

To support this, ice_read_flash_module is further abstracted to think in
terms of "active" and "inactive" banks, rather than focusing on "read from
the 1st or 2nd bank". Further, the function is extended to allow reading
arbitrary sizes beyond just one word at a time.

For each of the 3 major firmware components, the version function is
extended to allow requesting the flash bank to read from (active or
inactive). To handle this, the exact algorithm used in each function must be
changed.

For the main NVM version which includes the bundle_id, this is simple. The
location we read from is now the section within the NVM bank that is used to
initialize the Shadow RAM.

For the netlist module, we simply replace the module-based reads that
request the firmware to handle the low level details with direct calls to
read the netlist directly. This slightly changes the offsets we use because
the firmware interface strips out the type field at the start of the netlist
block.

For the UNDI Option ROM firmware things are not so simple. The existing
method for reading the Option ROM requires reading from the Boot
Configuration block. This area is populated with the running Option ROM
version field when the device is loading the firmware. There is no
equivalent for reading the inactive version. Instead of reading from this
section, a new algorithm based on scanning for the actual version block
data in the Option ROM binary is introduced. This data is encoded within a
packed structure that begins with the 4-byte '$CIV' ASCII string, and uses a
simple modulo 256 checksum for integrity. We scan the Option ROM section of
the flash for this data, rather than reading the copied value in the Boot
Configuration block.

With these changes, the ice driver will now report the stored versions for
many of the firmware components when an update has been initiated but the
device has not yet switched to the new bank. The major exception missing is
the management firmware version (fw.mgmt and the related sub fields). This
data is not encoded in a way that is easy to parse out from the inactive
image. The driver is normally informed of the firmware version as part of
its initial messaging over the Admin Queue. It may be theoretically possible
to determine where exactly within the firmware binary the version fields are
stored, but this is not implemented in this patch.

Jacob Keller (7):
  ice: introduce context struct for info report
  ice: refactor interface for ice_read_flash_module
  ice: allow reading inactive flash security revision
  ice: allow reading arbitrary size data with read_flash_module
  ice: display some stored NVM versions via devlink info
  ice: display stored netlist versions via devlink info
  ice: display stored UNDI firmware version via devlink info

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  27 -
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 247 +++++++--
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 509 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  14 +
 drivers/net/ethernet/intel/ice/ice_status.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  52 +-
 7 files changed, 609 insertions(+), 243 deletions(-)


base-commit: a96d90adbc085e947f2b02cd744dc32aab9d00ae
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
