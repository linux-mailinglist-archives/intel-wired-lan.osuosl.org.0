Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE45BA430AA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 00:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B8D640B82;
	Mon, 24 Feb 2025 23:22:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 96DRkH8ayFff; Mon, 24 Feb 2025 23:22:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAB1F4094B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740439366;
	bh=5hkC9bc+qhCnpPczs6VceScZYN+wh0wAWO7uy2x5gvA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xxji8jo5lL2o5m616MZOTk9z+e2v3q+Y4KvjiS0RHK27tp/4t1zkTFDBnc/TsISyH
	 L0L+Q+ZF5bnqbNOwoc2qTbvpEoHNl0MzhvJujkM+7npyynTO+ElLdH30MGCY+YXJzg
	 hKGcAGmsG4BVs//HDsTS1dQWFgm34sPauOiJglumTALcxmq+JFZGuEDDAz1Of0DxoN
	 4JDUB2tKr4NxjF8Zg5G8NtF7Re/JqvcrwWH/i06m/SeuivnpFELqMvphHsI4um92xz
	 OF/CwJegMODVcWidvJouIe78+mFhMpRSzLrlBm8vbx1XZxMOthjJATEAvoD9yVtDng
	 90R1PeRAZ37yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAB1F4094B;
	Mon, 24 Feb 2025 23:22:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 599881531
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C8EA40B3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gEt7SBvDxDgS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 23:22:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F523408A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F523408A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F523408A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:40 +0000 (UTC)
X-CSE-ConnectionGUID: 1e4Q+uxZTbOz/sYZpSoisQ==
X-CSE-MsgGUID: 4p/gbFduT1m29zsMkpl7zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40406604"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40406604"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:40 -0800
X-CSE-ConnectionGUID: U3J2lRS1QZayrRBspD0s4g==
X-CSE-MsgGUID: CuyWXZYER6m5X/tbWHtehA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="115997747"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.43])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:34 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Feb 2025 16:22:21 -0700
Message-ID: <20250224232228.990783-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740439361; x=1771975361;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6w+UArCyON/1seBfb1skkQg/fUan9OUwJT9DM7ke5Qo=;
 b=idoiG1OZwcdr8diuKeOce6JPA/E+uiiZtM8JgioDtk4gu63R4BWDnuEA
 I0e5EebSwnys0rm9fQOBAykOM9sv/nJ0Eh8GXZj58rnqGlbPo2Gw1TIdq
 o4mD6hC0MRNoHZaaWWtMml7guiio2gPIIs6r/yoeEJufVYrf9ymeW6d4T
 cM19bps1txszP49ObZ2bFIugFsnZG+CVvvu2xnQUc7GgCSQM8aOtd5hs8
 seUu+lzog5MDj9KvPUSEjwJjmUd7EF4rFKZCDtoloYfBqUUdzJuOtBZCp
 W3+CXPyz+GsWWMowoVJ2CpsXasWEbXyn86RVryxEi5nSI15T0XKe/uFEU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=idoiG1OZ
Subject: [Intel-wired-lan] [PATCH net-next v9 0/6] net: napi: add CPU
 affinity to napi->config
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
after reset. However, since there can be only one IRQ affinity notifier
for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
management in the core (which also registers separate IRQ affinity
notifiers).   

Move the IRQ affinity management to the napi struct. This way we can have
a unified IRQ notifier to re-apply the user-set affinity and also manage
the ARFS rmaps.

The first patch moves the aRFS rmap management to CORE. It also adds the
IRQ affinity mask to napi_config and re-applies the mask after reset.
Patches 2, 4 and 5 use the new API for ena, ice and idpf drivers.

ICE does not always delete the NAPIs before releasing the IRQs. The third
patch makes sure the driver removes the IRQ number along with the queue
when the NAPIs are disabled. Without this, the next patches in this series
would free the IRQ before releasing the IRQ notifier (which generates
warnings).

Tested on ice and idpf.

V9:
    - Merge all core changes in the first patch, then followed by drivers
      changes. (Jakub)
    - Refactor netif_napi_set_irq_locked() to show differences between
      irq_affinity_auto only vs rx_cpu_rmap_auto = true. (Jakub)
    - Move default affinity setting to netif_set_affinity_auto (Jakub).
    - Add a py selftest for IRQ affinity. (Jakub)
    - Remove bnxt changes since it recently added TPH (commit c214410c47d6
      "bnxt_en: Add TPH support in BNXT driver"). This required the driver
      to have custom IRQ affinity function. For the core to support this,
      we may need to extend the API in this series to allow drivers to
      provide their own callbacks when calling netif_napi_set_irq().

V8:
    - https://lore.kernel.org/netdev/20250211210657.428439-1-ahmed.zaki@intel.com/
    - Add a new patch in "ice" that releases the IRQs and their notifiers
      when clearing the NAPI queues (pls read 3rd paragraph above).
    - Add a new NAPI flag "NAPI_STATE_HAS_NOTIFIER" that simplifies the
      code for IRQ notifier detection (Patch 2).
    - Move the IRQ notifier auto-removal to napi_delete() instead of
      napi_disable(). This is the reason for the new ice patch. (Jakub)
    - Add a WARN_ON_ONCE(!napi->config) in netif_napi_set_irq_locked().
      This would detect drivers that asked for irq_affinity_auto but did
      not use napi_add_config(). (Patch 3) (Joe)
    - Rename netif_enable_irq_affinity() to netif_set_affinity_auto()
      (Patch 3) (Jakub).
V7:
    - https://lore.kernel.org/netdev/20250204220622.156061-1-ahmed.zaki@intel.com/
    - P1: add documentation for netif_enable_cpu_rmap()
    - P1: move a couple of "if (rx_cpu_rmap_auto)" from patch 1 to patch 2
      where they are really needed.
    - P1: remove a defensive "if (!rmap)"
    - p1: In netif_disable_cpu_rmap(), remove the for loop that frees
          notifiers since this is already done in napi_disable_locked().
          Also rename it to netif_del_cpu_rmap().
    - P1 and P2: simplify the if conditions in netif_napi_set_irq_locked()
    - Other nits

V6:
    - https://lore.kernel.org/netdev/20250118003335.155379-1-ahmed.zaki@intel.com/
    - Modifications to have less #ifdef CONFIG_RF_ACCL guards
    - Remove rmap entry in napi_disable
    - Rebase on rc7 and use netif_napi_set_irq_locked()
    - Assume IRQ can be -1 and free resources if an old valid IRQ was
      associated with the napi. For this, I had to merge the first 2
      patches to use the new rmap API.

V5:
    - https://lore.kernel.org/netdev/20250113171042.158123-1-ahmed.zaki@intel.com/
    - Add kernel doc for new netdev flags (Simon).
    - Remove defensive (if !napi) check in napi_irq_cpu_rmap_add()
      (patch 2) since caller is already dereferencing the pointer (Simon).
    - Fix build error when CONFIG_ARFS_ACCEL is not defined (patch 3).

v4:
    - https://lore.kernel.org/netdev/20250109233107.17519-1-ahmed.zaki@intel.com/
    - Better introduction in the cover letter.
    - Fix Kernel build errors in ena_init_rx_cpu_rmap() (Patch 1)
    - Fix kernel test robot warnings reported by Dan Carpenter:
      https://lore.kernel.org/all/202501050625.nY1c97EX-lkp@intel.com/
    - Remove unrelated empty line in patch 4 (Kalesh Anakkur Purayil)
    - Fix a memleak (rmap was not freed) by calling cpu_rmap_put() in
      netif_napi_affinity_release() (patch 2).

v3:
    - https://lore.kernel.org/netdev/20250104004314.208259-1-ahmed.zaki@intel.com/
    - Assign one cpu per mask starting from local NUMA node (Shay Drori).
    - Keep the new ARFS and Affinity flags per nedev (Jakub).

v2:
    - https://lore.kernel.org/netdev/202412190454.nwvp3hU2-lkp@intel.com/T/
    - Also move the ARFS IRQ affinity management from drivers to core. Via
      netif_napi_set_irq(), drivers can ask the core to add the IRQ to the
      ARFS rmap (already allocated by the driver).

RFC -> v1:
    - https://lore.kernel.org/netdev/20241210002626.366878-1-ahmed.zaki@intel.com/
    - move static inline affinity functions to net/dev/core.c
    - add the new napi->irq_flags (patch 1)
    - add code changes to bnxt, mlx4 and ice.

Ahmed Zaki (5):
  net: move aRFS rmap management and CPU affinity to core
  net: ena: use napi's aRFS rmap notifers
  ice: clear NAPI's IRQ numbers in ice_vsi_clear_napi_queues()
  ice: use napi's irq affinity and rmap IRQ notifiers
  idpf: use napi's irq affinity

Jakub Kicinski (1):
  selftests: drv-net: add tests for napi IRQ affinity notifiers

 Documentation/networking/scaling.rst          |   6 +-
 drivers/net/ethernet/amazon/ena/ena_netdev.c  |  43 +----
 drivers/net/ethernet/intel/ice/ice.h          |   3 -
 drivers/net/ethernet/intel/ice/ice_arfs.c     |  33 +---
 drivers/net/ethernet/intel/ice/ice_arfs.h     |   2 -
 drivers/net/ethernet/intel/ice/ice_base.c     |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  16 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  47 +----
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  22 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   6 +-
 include/linux/cpu_rmap.h                      |   1 +
 include/linux/netdevice.h                     |  24 ++-
 lib/cpu_rmap.c                                |   2 +-
 net/core/dev.c                                | 169 ++++++++++++++++++
 .../testing/selftests/drivers/net/hw/Makefile |   4 +
 tools/testing/selftests/drivers/net/hw/irq.py |  99 ++++++++++
 .../selftests/drivers/net/hw/xdp_dummy.bpf.c  |  13 ++
 .../selftests/drivers/net/lib/py/env.py       |   8 +-
 19 files changed, 343 insertions(+), 163 deletions(-)
 create mode 100755 tools/testing/selftests/drivers/net/hw/irq.py
 create mode 100644 tools/testing/selftests/drivers/net/hw/xdp_dummy.bpf.c

-- 
2.43.0

