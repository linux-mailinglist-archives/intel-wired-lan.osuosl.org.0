Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5372BA27DFF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 23:06:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03B92402E8;
	Tue,  4 Feb 2025 22:06:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K2gIFwgVrMXi; Tue,  4 Feb 2025 22:06:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FCFA4090B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738706800;
	bh=pYoqbUukB/o9i7JV5i4+XsDuIeLAbSjx4eZKKVup0W8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5HPfFIlF1DkAh9oizAN/hcZWuP3keojrKy4l2dtSaEsUIma1a7oDjPiNMpV4lPXUZ
	 mcPQ4IeapaRFU40JuchR75rs8F5lHMu3ynxBSNIyPioVPPm9r/9LytLO8e2u6bNSA/
	 6y8I748h4eAW1UKkNrEjXf0EyUjMDaWWlPyy4CuqOzxBkyhWBDYPDeLKVnng4/C4DG
	 eXuRrym9p0rlJU6ojmKzIrZMnxzsmuNzPxgKYdEgHjaBQ9lTaaqFKGV0xi1EKKJy99
	 qjEzzYWEGeWRL8fHTF/cqD0LFnGAO1n1cUcKONtvUyRcfumIK5z28HF5FFCwo2hAeH
	 lgXEG5FNU3uzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FCFA4090B;
	Tue,  4 Feb 2025 22:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EB2F12A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C76880D0A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:06:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2XYjCOeiNLTN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 22:06:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 163F780CCB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 163F780CCB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 163F780CCB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:06:36 +0000 (UTC)
X-CSE-ConnectionGUID: 0BQuPJQlQLeAwQVF+xXPew==
X-CSE-MsgGUID: dTwFH8NBTl6dakxCXAgDeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43003370"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="43003370"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:06:36 -0800
X-CSE-ConnectionGUID: gDBmcFePT/igTwICSYS2GA==
X-CSE-MsgGUID: 9FE2diyoSFiTRbv7s6za2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114771261"
Received: from dwoodwor-mobl2.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.39])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:06:30 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Tue,  4 Feb 2025 15:06:17 -0700
Message-ID: <20250204220622.156061-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738706797; x=1770242797;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a/CitE48ivMMjOFdZfilEb8WarjRDAAXO/Eqizt7faA=;
 b=lvah/vP90WsaPeR2eI4qpGfYVgGaXAoWjUVws4QTjuzZs5yqNAM4yXPG
 ddotFS6qFzerqY5IvelO83kEyJMJCcNlgflJGBukueaq6SFkMCta0pQcr
 hGRdgNqBqnowMsSDUD9wjWqvV/fqPq4YTEXMZ01lEqKvYWO+aoyTFso5y
 y+ttkE00xBBLQuFF1tNnSCS4sdDwdcPyz8S/KLTy2RryE5JyFfXzxvtll
 ZlzO4I7gvE1kcNQr2R7bYpQB1VyilVQ4fdwTf2KUE9P2vdAze9K1YOHm4
 kZnzR8SUp2xKk2fR25F2DeZ0j3d6CK1MPeWHcEgbo6oX3f46QIanFIqWo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lvah/vP9
Subject: [Intel-wired-lan] [PATCH net-next v7 0/5] net: napi: add CPU
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
the ARFS rmaps. The first patch  moves the ARFS rmap management to CORE.
The second patch adds the IRQ affinity mask to napi_config and re-applies
the mask after reset. Patches 3-5 use the new API for bnxt, ice and idpf
drivers.

Tested on bnxt, ice and idpf.

V7:
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
  net: move ARFS rmap management to core
  net: napi: add CPU affinity to napi_config
  bnxt: use napi's irq affinity
  ice: use napi's irq affinity
  idpf: use napi's irq affinity

 Documentation/networking/scaling.rst         |   6 +-
 drivers/net/ethernet/amazon/ena/ena_netdev.c |  43 +----
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    |  54 +------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h    |   2 -
 drivers/net/ethernet/intel/ice/ice.h         |   3 -
 drivers/net/ethernet/intel/ice/ice_arfs.c    |  17 +-
 drivers/net/ethernet/intel/ice/ice_base.c    |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |   6 -
 drivers/net/ethernet/intel/ice/ice_main.c    |  47 +-----
 drivers/net/ethernet/intel/idpf/idpf_lib.c   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c  |  22 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h  |   6 +-
 include/linux/cpu_rmap.h                     |   1 +
 include/linux/netdevice.h                    |  25 ++-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 160 ++++++++++++++++++-
 16 files changed, 210 insertions(+), 192 deletions(-)

-- 
2.43.0

