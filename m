Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE4FA15A45
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2025 01:33:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E91A042471;
	Sat, 18 Jan 2025 00:33:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D_thY4dpfywJ; Sat, 18 Jan 2025 00:33:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 571574245E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737160433;
	bh=ez0OFrtMJ/FEO7JHJYMWkm4obTnmXhSKi7vTQFaMRLI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RZ6qJb0L13kKE6XKlCL0I6oxTmG45encwc/UySfC7D3lSxF0DPex3Z8RlIM2o/GK9
	 oHxnPxEEkw+q1nklACdGfSTp9iN9RAEq9DEs1IoOIZddzU3zPXUOI+40fGPwr6pKW1
	 X53W7Y/ST/WNHL6a8bvbOlN2XNVtsjQJAXJCZTW5N43Fu65xW2tH6t+HXyed4wMfFo
	 nJ+C7H+CGWquKe51XGYhYwgHdZQTbhPBgf1Ar9eDfpn0s+Jzf7lV3lZlR5AVeBIZgk
	 Dz0uOAY6Lrs0GeWyZWCMBvvfJIwrrcn3DzcHC6fUAH5W57sxbFqB9NUe8NjNaIa0q5
	 5ZKMOFEn8Ujig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 571574245E;
	Sat, 18 Jan 2025 00:33:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05FE7B89
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4C204028F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:33:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8HFd5kefj2YA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jan 2025 00:33:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6AB4E403C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AB4E403C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AB4E403C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:33:49 +0000 (UTC)
X-CSE-ConnectionGUID: UdxoXoTOQ0iOd/US2nmNkA==
X-CSE-MsgGUID: tnqtjrd5R3G6whZt52i6fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37762718"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="37762718"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 16:33:48 -0800
X-CSE-ConnectionGUID: AnicBz1JQsyuNAYJese8rQ==
X-CSE-MsgGUID: /5mZsn8qTV+25ZcqOniMRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106410810"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.139])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 16:33:44 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri, 17 Jan 2025 17:33:30 -0700
Message-ID: <20250118003335.155379-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737160429; x=1768696429;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2sVubBAr1NA9XsbxSTZAyvnkOzqseyoOfwD9nEUqrII=;
 b=Ok2GiFlbMfpzeK0+Y86BI+VCj5zqGnfjzcQibnIYI3PHDtZsqj9WOp3A
 d/jAs9qgoHb9Nmb+k5poCQ0il39nYPVTp7g48oFoGuREgHOfEZngQb96/
 WzTlDfxWV4GSzcxRu5ThTVud8vLvyEyTTQo8fKKbCNjLdMFK5CBDsyt07
 gDq7C3Qjnxo6k9JrA6DB7mYc6ZbwPH09D8VXbyw4i3jIbkz1NvVFk4Ctl
 2kmbgh9QZBUcRpkU1DChcSGjUR00LtB9E+fmD08oOJZjLNflLkHdroqS0
 1d/wX+D1CB0t+GSrwIzj/czCBUUgZoUo+WLGj+QXmJ/y40QrXrgDRIUt0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ok2GiFlb
Subject: [Intel-wired-lan] [PATCH net-next v6 0/5] net: napi: add CPU
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
V6:
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

 drivers/net/ethernet/amazon/ena/ena_netdev.c |  43 +----
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    |  54 +-----
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
 include/linux/netdevice.h                    |  27 ++-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 167 ++++++++++++++++++-
 15 files changed, 215 insertions(+), 190 deletions(-)

-- 
2.43.0

