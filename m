Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E547F2437
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 03:49:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C3D780C53;
	Tue, 21 Nov 2023 02:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C3D780C53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700534993;
	bh=0n+2CDaam81vYE0230qdG00pFvo95es8XkpmzElQ5fQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AvYTQgPclwid0H2og+eU5eNPtI+mSwzHyc11czwEmGFhkOL+VvSEv/ripsA59406Y
	 p/RTOVSgPtl8uoH1prAKLly+QHnnmJ9W59GJuoHPMSS4G44WH+XhaOzmicPesOgJo9
	 UmsMNtIDLg/GgsCB1YyXD0D1kt7KIwfksbIqM8+C5wYRtiHL5pwsRLkgpn3N3qihZt
	 ZoJp9sl/AWndjUcnctWWpS3nm0YwVwQz1I2Gjgq4XVSfEtTYJUvgSrt52OrWgLX2vQ
	 EU0RTRvzP/+nBOGaDHUfTRoAIfZpTHQnFHg1PEomzFMQ458ylFtgyJnmOGvEFhaRqV
	 bG/zu+uytbmlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kehSBIayPYwN; Tue, 21 Nov 2023 02:49:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B42080B82;
	Tue, 21 Nov 2023 02:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B42080B82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A98711BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 890CF415EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:49:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 890CF415EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i_QvbgYTVH44 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:49:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B0AF41568
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B0AF41568
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458245827"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458245827"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 18:49:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832488158"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="832488158"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.85])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2023 18:49:39 -0800
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 02:50:59 +0000
Message-Id: <20231121025111.257597-1-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700534986; x=1732070986;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fdaQz0ZM4OtUE45j2+h6jhkmPo/THh9DldmSVo5IyKs=;
 b=eVLVW35fJfboGegiFs5tEpYMWTg5gpMApbp1PufgsDLwF02r0Ys9ptid
 ZZ0x5MypAnU4lQPCbfci2g/SPYtsNW9OsJUv5LLvhu28W9DuACb5Uq87B
 Iqewjv2SfcXoPz+41ZWVTm3udHr3RK0Ep9KlpbUUFf3yTV+n/5eECAu+w
 q/xToU6sTYHKZq+Asnd+9eqxmoxPFr7R4sc+jb1kJUxm5vSSXK6OkhUuz
 f3xP0gOose5NYwDFlamQj8XYNbNle9LU5sChK+gBlkpbaSlu9w3trxZgz
 SEeEE/BiKHdJzHHE8m7+EFR2qphsrnxGQd0zoC0zN6g9LEUak+HdWho01
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eVLVW35f
Subject: [Intel-wired-lan] [PATCH iwl-next v4 00/12] Add E800 live migration
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
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series adds vfio live migration support for Intel E810 VF devices
based on the v2 migration protocol definition series discussed here[0].

Steps to test:
1. Bind one or more E810 VF devices to the module ice-vfio-pci.ko
2. Assign the VFs to the virtual machine and enable device live migration
3. Run a workload using IAVF inside the VM, for example, iperf.
4. Migrate the VM from the source node to a destination node.

The series is also available for review here[1].

Thanks,
Yahui
[0] https://lore.kernel.org/kvm/20220224142024.147653-1-yishaih@nvidia.com/
[1] https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/linux.git/log/?h=ice_live_migration

Change log:

v4:
 - Remove unnecessary iomap from vfio variant driver
 - Change Kconfig to select VFIO_PCI_CORE for ICE_VFIO_PCI module (Alex)
 - Replace restore state with load state for naming convention
 - Remove RXDID Patch
 - Fix missed comments in Patch03
 - Remove "so" at the beginning of the sentence and fix other grammar issue.
 - Remove double init and change return logic for Patch 10
 - Change ice_migration_unlog_vf_msg comments for Patch04
 - Add r-b from Michal to Patch04 of v4
 - Change ice_migration_is_loggable_msg return value type into bool type for Patch05
 - Change naming from dirtied to dirty for Patch11
 - Use total_length to pass parameter to save/load function instead of macro for Patch12
 - Refactor timeout logic for Patch09
 - Change migration_enabled from bool into u8:1 type for Patch04
 - Fix 80 max line length limit issue and compilation warning 
 - Add r-b from Igor to all the patches of v4
 - Fix incorrect type in assignment of __le16/32 for Patch06
 - Change product name to from E800 to E810

v3: https://lore.kernel.org/intel-wired-lan/20230918062546.40419-1-yahui.cao@intel.com/
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

v2: https://lore.kernel.org/intel-wired-lan/20230621091112.44945-1-lingyu.liu@intel.com/
 - clarified comments and commit message

v1: https://lore.kernel.org/intel-wired-lan/20230620100001.5331-1-lingyu.liu@intel.com/

---


Lingyu Liu (9):
  ice: Introduce VF state ICE_VF_STATE_REPLAYING_VC for migration
  ice: Add fundamental migration init and exit function
  ice: Log virtual channel messages in PF
  ice: Add device state save/load function for migration
  ice: Fix VSI id in virtual channel message for migration
  ice: Save and load RX Queue head
  ice: Save and load TX Queue head
  ice: Add device suspend function for migration
  vfio/ice: Implement vfio_pci driver for E800 devices

Yahui Cao (3):
  ice: Add function to get RX queue context
  ice: Add function to get and set TX queue context
  ice: Save and load mmio registers

 MAINTAINERS                                   |    7 +
 drivers/net/ethernet/intel/ice/Makefile       |    1 +
 drivers/net/ethernet/intel/ice/ice.h          |    3 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  484 +++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   11 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   23 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   15 +
 .../net/ethernet/intel/ice/ice_migration.c    | 1378 +++++++++++++++++
 .../intel/ice/ice_migration_private.h         |   49 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |    4 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   11 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  256 ++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   15 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   28 +-
 drivers/vfio/pci/Kconfig                      |    2 +
 drivers/vfio/pci/Makefile                     |    2 +
 drivers/vfio/pci/ice/Kconfig                  |   10 +
 drivers/vfio/pci/ice/Makefile                 |    4 +
 drivers/vfio/pci/ice/ice_vfio_pci.c           |  707 +++++++++
 include/linux/net/intel/ice_migration.h       |   48 +
 21 files changed, 2962 insertions(+), 99 deletions(-)
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
