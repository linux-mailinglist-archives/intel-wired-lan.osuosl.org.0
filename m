Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F54AA0BE74
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 18:11:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A128B60843;
	Mon, 13 Jan 2025 17:11:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yjSOcylUbLyB; Mon, 13 Jan 2025 17:11:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90F7660729
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736788263;
	bh=c5qtBfSaVbNHDoZFKIEgZGHF+DAmc/YQbxrQ/lSNI5Q=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b70fIo9jRrLblohdQlTmWpZ25UHzX1iTLdW6Kj85n6ytAUA49aE6e9jqiDFOAFl00
	 J1bDwbnwsMQbnfdZKNbjgdUXgD/jjR9kGXgnMWX1ZUUxfxxHqOFTK6HsE8MB3oI6b6
	 zfq7BrKmSuzU9ZK2Cq+/mWbHkcH9JTr7Zy3ryEqP0bWudZbvP5CJ9oRDLQ5h5vA87+
	 DR5uq4IyZtQt/+eajpVBw/M2VSro8qB7U7K/rNOso+hxo8TIyP9g/185P94j4WkSzS
	 xad9PeYfG+7cM9tfa1pmStx1Bzz20/LrLPRX0Ocl5oG5OFkqpYSrjwETzTlXOfheqg
	 d2OOgn5d5Av9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90F7660729;
	Mon, 13 Jan 2025 17:11:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E0B83940
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB5EA60729
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AxqjnVm64ceD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 17:11:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D3163605AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3163605AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3163605AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:00 +0000 (UTC)
X-CSE-ConnectionGUID: NE3fzKb8RBCto8qW5pbqBg==
X-CSE-MsgGUID: Pq7cp1xjRFKw4w1+YN+snA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36748801"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36748801"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:10:58 -0800
X-CSE-ConnectionGUID: 0s/t8HvGTFCJsFPzeaMzBw==
X-CSE-MsgGUID: d2XKZX1qSwa49Bm73J7XWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104499532"
Received: from jdoman-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:10:50 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 pavan.chebbi@broadcom.com, yury.norov@gmail.com, darinzon@amazon.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 13 Jan 2025 10:10:36 -0700
Message-ID: <20250113171042.158123-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736788261; x=1768324261;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=15JdyYSaKi30v601K2OvHWk5bNjotLlY0cBEC/OW20I=;
 b=WDzqAvY2npTk6U56P7DyGsHKa/IDLQlARw+VZs/vzlcdXcRhOoSbqumK
 QtOTTArW5InpqLsHGEEFDlCG2LpdPjiPGzk2N72TCH5jOWnnZtjw9zYpU
 sOAkrYJinWkANl++kqiToMlx2Hn/Q/QsqSBB9r0udKEMfVb/cEZw27V0a
 bPimDo8CSBfQxuBuUM7IdCrPgSUuXqT34aDxvK+R/Kii5GCRWixMgLuCH
 Xv58O6EJvDAKb82wRq9nMqWUYKdimjX2+dS/2+gpf9UzbVfKO91hA4LZv
 5BuHU/EzkEyPbrZsfhuN9yJLmRnvE452cJchnrPcmajcoYISQfqanWcXr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WDzqAvY2
Subject: [Intel-wired-lan] [PATCH net-next v5 0/6] net: napi: add CPU
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
the ARFS rmaps. Patches 1 and 2 move the ARFS rmap management to CORE.
Patch 3 adds the IRQ affinity mask to napi_config and re-applies the mask
after reset. Patches 4-6 use the new API for bnxt, ice and idpf drivers.

Tested on bnxt, ice and idpf.

V5:
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

Ahmed Zaki (6):
  net: move ARFS rmap management to core
  net: napi: add internal ARFS rmap management
  net: napi: add CPU affinity to napi_config
  bnxt: use napi's irq affinity
  ice: use napi's irq affinity
  idpf: use napi's irq affinity

 drivers/net/ethernet/amazon/ena/ena_netdev.c |  38 +----
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    |  52 +------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h    |   2 -
 drivers/net/ethernet/intel/ice/ice.h         |   3 -
 drivers/net/ethernet/intel/ice/ice_arfs.c    |  17 +--
 drivers/net/ethernet/intel/ice/ice_base.c    |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |   6 -
 drivers/net/ethernet/intel/ice/ice_main.c    |  47 +-----
 drivers/net/ethernet/intel/idpf/idpf_lib.c   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c  |  22 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h  |   6 +-
 include/linux/cpu_rmap.h                     |   1 +
 include/linux/netdevice.h                    |  31 +++-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 151 ++++++++++++++++++-
 15 files changed, 205 insertions(+), 181 deletions(-)

-- 
2.43.0

