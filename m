Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AC3244D16
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 18:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FC8F2049B;
	Fri, 14 Aug 2020 16:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3T427d1DhTKT; Fri, 14 Aug 2020 16:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4CE5F24A2C;
	Fri, 14 Aug 2020 16:53:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15AE71BF396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 16:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F54B8767F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 16:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRQbInWt5Hst for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 16:53:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4104986E29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 16:53:16 +0000 (UTC)
IronPort-SDR: 0wIlb5RISU1MQo+zG2Hm+JKhQli2h9hoN/Q1DdIRQimd1zQg6Ns0bIRDXTaSSkC01yeGApLuhx
 IlW+QSUgYXgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="153688652"
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="153688652"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 09:53:15 -0700
IronPort-SDR: GE9owXr2xORI4kTiwfb2EiijMQn+J1uOQVEAMbM9VvHSOxsxjJ6vgAXW7l8oZqHiFHRyeg8Sxz
 VU3YuaHrKV3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="278455107"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga008.fm.intel.com with ESMTP; 14 Aug 2020 09:53:15 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Aug 2020 01:24:43 -0700
Message-Id: <20200814082457.7190-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue,V7, 00/14]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series introduces both the Intel Ethernet Common Module and the 
Intel Data Plane Function.  The patches also incorporate extended 
features and functionality added in the virtchnl.h file.
 
The format of the series flow is to add the data set, then introduce 
function stubs and finally introduce pieces in large cohesive subjects or
functionality. This is to allow for more in depth understanding and review
of the bigger picture as the series is reviewed.
 
Currently this is common layer (iecm) is initially only being used by 
only the idpf driver (PF driver for SmartNIC).  However, the plan is 
to eventually switch our iavf driver along with future drivers to use 
this common module.  The hope is to better enable code sharing going 
forward as well as support other developers writing drivers for our 
hardware

V3 -- Addresses comments from the original series.  This inncludes removing
      the iecm_ctlq_err in iecm_ctlq_api.h, the private flags and duplicated
      checks, and cleaning up the clamps in iecm_ethtool.c.  We also added
      the supported_coalesce_params flags in iecm_ethtool.c.  Finally, we
      got the headers cleaned up and addressed mismatching types from calls
      to cpu_to_le to match the types (this fixes C=2 W=1 errors that were
      reported).

V4 -- Missed static in idpf_main.c on idpf_probe

V5 -- updated location of documentation, refactored soft reset path to take
      memory allocation into account, refactored ethtool stats to not use
      VA_ARGS, *greatly* reduced use of iecm_status enum, aligned use of
      periods in debug statements, refactored to reduce line indentats.

V6 -- Missing local variable put into iecm_rx_can_reuse_page, and cleaned
      up spacing issue that no longer triggers checkpatch due to Linus'
      recent patch for column spacing.

V7 -- Cleaned up some checks the core is already doing, corrected the
      calculation for txq and rxq, Removed the fw version that had been
      missed in preveous version, dma_wmb call directly replacing a
      define to it, cleaned up the memory and header files that were not
      used, and cleaning up the self defining error codes.

Alan Brady (1):
  idpf: Introduce idpf driver
 
Alice Michael (14):
  virtchnl: Extend AVF ops
  iecm: Add framework set of header files
  iecm: Add TX/RX header files
  iecm: Common module introduction and function stubs
  iecm: Add basic netdevice functionality
  iecm: Implement mailbox functionality
  iecm: Implement virtchnl commands
  iecm: Implement vector allocation
  iecm: Init and allocate vport
  iecm: Deinit vport
  iecm: Add splitq TX/RX
  iecm: Add singleq TX/RX
  iecm: Add ethtool
  iecm: Add iecm to the kernel build system

 .../networking/device_drivers/intel/idpf.rst  |   47 +
 .../networking/device_drivers/intel/iecm.rst  |   93 +
 MAINTAINERS                                   |    3 +
 drivers/net/ethernet/intel/Kconfig            |   15 +
 drivers/net/ethernet/intel/Makefile           |    2 +
 drivers/net/ethernet/intel/idpf/Makefile      |   12 +
 drivers/net/ethernet/intel/idpf/idpf_dev.h    |   17 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  136 +
 drivers/net/ethernet/intel/idpf/idpf_reg.c    |  152 +
 drivers/net/ethernet/intel/iecm/Makefile      |   19 +
 .../net/ethernet/intel/iecm/iecm_controlq.c   |  669 +++
 .../ethernet/intel/iecm/iecm_controlq_setup.c |  177 +
 .../net/ethernet/intel/iecm/iecm_ethtool.c    | 1064 +++++
 drivers/net/ethernet/intel/iecm/iecm_lib.c    | 1093 +++++
 drivers/net/ethernet/intel/iecm/iecm_main.c   |   50 +
 drivers/net/ethernet/intel/iecm/iecm_osdep.c  |   28 +
 .../ethernet/intel/iecm/iecm_singleq_txrx.c   |  892 ++++
 drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 3961 +++++++++++++++++
 .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 2262 ++++++++++
 include/linux/net/intel/iecm.h                |  433 ++
 include/linux/net/intel/iecm_alloc.h          |   29 +
 include/linux/net/intel/iecm_controlq.h       |   95 +
 include/linux/net/intel/iecm_controlq_api.h   |  188 +
 include/linux/net/intel/iecm_lan_pf_regs.h    |  120 +
 include/linux/net/intel/iecm_lan_txrx.h       |  636 +++
 include/linux/net/intel/iecm_osdep.h          |   24 +
 include/linux/net/intel/iecm_txrx.h           |  581 +++
 include/linux/net/intel/iecm_type.h           |   47 +
 29 files changed, 12855 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/intel/idpf.rst
 create mode 100644 Documentation/networking/device_drivers/intel/iecm.rst
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_reg.c
 create mode 100644 drivers/net/ethernet/intel/iecm/Makefile
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_ethtool.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_lib.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_main.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_osdep.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_txrx.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
 create mode 100644 include/linux/net/intel/iecm.h
 create mode 100644 include/linux/net/intel/iecm_alloc.h
 create mode 100644 include/linux/net/intel/iecm_controlq.h
 create mode 100644 include/linux/net/intel/iecm_controlq_api.h
 create mode 100644 include/linux/net/intel/iecm_lan_pf_regs.h
 create mode 100644 include/linux/net/intel/iecm_lan_txrx.h
 create mode 100644 include/linux/net/intel/iecm_osdep.h
 create mode 100644 include/linux/net/intel/iecm_txrx.h
 create mode 100644 include/linux/net/intel/iecm_type.h

-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
