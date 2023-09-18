Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2887A4109
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C46CB41820;
	Mon, 18 Sep 2023 06:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C46CB41820
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018475;
	bh=gBaqCM1iMa95PBHZE8/0L07JKP7V+Ds3RTyw1p0kYYc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ba/0XOUps9ZEC7Blq0YjPeAYNFE+SJ9cCd2hTpwX0ApbcGzfq7ZQ/T+HZWkcD6ZrB
	 ydCiY2EZSL68UH0fV80fgq/nbRUPnnmsTRY0bFB0q5rTlTWKsB9mFZU7BtnSBN9o4I
	 E/Ms62XV/pVpN3G52UR9iM8bkAbPO29trBYgnUPa47lAuVPNRYKLuiGq34cKqJ2PLu
	 sgj2oDCtApN/yRKJywdZKOg2S4DFla8szQo7A0MBGzYqtRQDC6CWScsO5KBm1eJUXZ
	 tqsB4siTNWh4ytFh1vvtGz7zNKPmYbCILVM3wDLNqQWSmghizor6rcHbNKhDRWVkqm
	 MH8kiipRcRWww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WPUBMaxdBUZ0; Mon, 18 Sep 2023 06:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FAA94180D;
	Mon, 18 Sep 2023 06:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FAA94180D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BADD1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1BC9611B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1BC9611B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9WV7kmmA5h-Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:27:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A0A0611B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:27:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A0A0611B4
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488453"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488453"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893349"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893349"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:27:40 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:33 +0000
Message-Id: <20230918062546.40419-1-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018467; x=1726554467;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MSrTiWCIELO8HXPgO6xkqFMTU+MDvG8u2XBd/c8fIxU=;
 b=i6k+PqsnNCNCBUBzmAwDxGyCvGR5hmtpMNqc5Mu3J3IkaQp/eZYXWISS
 7Nd3Z5xW15gjfMH/vZiDyS6s/kAcED+bWxqz6PiT+IFzlFwCtGoqthiV6
 0PyqnJoMoRgacQ2AS6Efc0cCN4mmLvYBAAfA7Rp4BXDPvGMfoiP94RuEH
 +t+wTWPnNkzNPYz+YP+QZqaz31ALNjwV0RqDxxFlnT0mNLGZe2YzMBD9T
 PP+clG0lLZegk1W1bVA09u9I4e4bx1Q8PbqSuBrDPfgcLyDoKv1UPWdqo
 QsJZukTsQGrtdmB9I4jkGbejhEVWc6W2c6SQC9qefWGm+b7Z3oGuj7jxp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i6k+Pqsn
Subject: [Intel-wired-lan] [PATCH iwl-next v3 00/13] Add E800 live migration
 driver
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series adds vfio live migration support for Intel E810 VF devices
based on the v2 migration protocol definition series discussed here[0].

Steps to test:
1. Bind one or more E810 VF devices to the module ice_vfio_pci.ko
2. Assign the VFs to the virtual machine and enable device live migration
3. Run a workload using IAVF inside the VM, for example, iperf.
4. Migrate the VM from the source node to a destination node.

Thanks,
Yahui
[0] https://lore.kernel.org/kvm/20220224142024.147653-1-yishaih@nvidia.com/

Change log:

v2 --> v3: link [2]
 - Add P2P support in vfio driver (Jason)
 - Remove source/destination check in vfio driver (Jason)
 - Restructure PF exported API with proper types and layering (Jason)
 - Change patchset email sender.
 - Reword commit message and comments to be more reviewer-friendly (Kevin)
 - Add s-o-b for Patch01 (Kevin)
 - Merge Patch08 into Patch04 and merge Patch13 into Patch06 (Kevin)
 - Remove uninit() in VF destroy stage for Patch 05 (Kevin)
 - change migration_active to migration_enabled (Kevin)
 - Add total_size in devstate to greatly simplify the various checks for
   Patch07 (Kevin)
 - Add magic and version in device state for Patch07 (Kevin)
 - Fix rx head init issue in Patch10 (Kevin)
 - Remove DMA access for Guest Memory at device resume stage and deprecate
   the approach to restore TX head in VF space, instead restore TX head in
   PF space and then switch context back to VF space which is transparent
   to Guest for Patch11 (Jason, Kevin)
 - Use non-interrupt mode instead of VF MSIX vector to restore TX head for
   Patch11 (Kevin)
 - Move VF pci mmio save/restore from vfio driver into PF driver
 - Add configuration match check at device resume stage (Kevin)
 - Remove sleep before stopping queue at device suspend stage (Kevin)
 - Let PF respond failure to VF if virtual channel messages logging failed (Kevin)
 - Add migration setup and description in cover letter

[2] https://lore.kernel.org/intel-wired-lan/20230621091112.44945-1-lingyu.liu@intel.com/

v1 --> v2: link [1]
 - clarified comments and commit message

[1] https://lore.kernel.org/intel-wired-lan/20230620100001.5331-1-lingyu.liu@intel.com/

---

Lingyu Liu (9):
  ice: Introduce VF state ICE_VF_STATE_REPLAYING_VC for migration
  ice: Add fundamental migration init and exit function
  ice: Log virtual channel messages in PF
  ice: Add device state save/restore function for migration
  ice: Fix VSI id in virtual channel message for migration
  ice: Save and restore RX Queue head
  ice: Save and restore TX Queue head
  ice: Add device suspend function for migration
  vfio/ice: Implement vfio_pci driver for E800 devices

Xu Ting (1):
  ice: Fix missing legacy 32byte RXDID in the supported bitmap

Yahui Cao (3):
  ice: Add function to get RX queue context
  ice: Add function to get and set TX queue context
  ice: Save and restore mmio registers

 MAINTAINERS                                   |    7 +
 drivers/net/ethernet/intel/ice/Makefile       |    3 +-
 drivers/net/ethernet/intel/ice/ice.h          |    3 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  484 +++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   11 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   23 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   15 +
 .../net/ethernet/intel/ice/ice_migration.c    | 1344 +++++++++++++++++
 .../intel/ice/ice_migration_private.h         |   44 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |    4 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   10 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  267 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   15 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   28 +-
 drivers/vfio/pci/Kconfig                      |    2 +
 drivers/vfio/pci/Makefile                     |    2 +
 drivers/vfio/pci/ice/Kconfig                  |   10 +
 drivers/vfio/pci/ice/Makefile                 |    4 +
 drivers/vfio/pci/ice/ice_vfio_pci.c           |  707 +++++++++
 include/linux/net/intel/ice_migration.h       |   42 +
 21 files changed, 2916 insertions(+), 112 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration_private.h
 create mode 100644 drivers/vfio/pci/ice/Kconfig
 create mode 100644 drivers/vfio/pci/ice/Makefile
 create mode 100644 drivers/vfio/pci/ice/ice_vfio_pci.c
 create mode 100644 include/linux/net/intel/ice_migration.h

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
