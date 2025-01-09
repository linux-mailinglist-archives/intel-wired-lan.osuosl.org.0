Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 881BFA0837F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 00:31:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 469ED40893;
	Thu,  9 Jan 2025 23:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PivCfkbg-Esk; Thu,  9 Jan 2025 23:31:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF2D840894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736465486;
	bh=NzcAWl2nYnPKzNp0/uEYn8tK7rC4SfxqEd3A89KAPzk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BL35FwuFeIyi8P4oSWMOrN4g0F1viPBGM5cLJ85aClMaaqXP24EkotGMGQV7B8o0t
	 xpcWLglt0Df6mollR80pJixLUZCAcObPLQHDW6PCBu/IxTL00AtdW9pfOuAAua+MUR
	 /jAGonDrWs0HBWD23RQGVShcgcaWT9qRcVeo9qfTxt9VuBNESd+42NxP8lFh5M/h5E
	 8D5pSbskjh+Uc+PcGnUdKZyg7tsoVDSokPKqvLP4U4w8uiAD4vuXUv24Y/lhzW++hF
	 bDRZruVRZrJW4QrxZIGM6EYpSi+pQuDqdW6QzDAJ7NqtWhs+O/dSKn/wRpkz6Zm1y+
	 FuZV7+mj1n9RA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF2D840894;
	Thu,  9 Jan 2025 23:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4338D940
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B9DD83388
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXrcosrrH1jb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 23:31:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2255833DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2255833DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2255833DB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:22 +0000 (UTC)
X-CSE-ConnectionGUID: Zr3aIvqeS6qNLxSIo973Jw==
X-CSE-MsgGUID: zuEiEruNRW2w/MD+nARHHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47245101"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="47245101"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:22 -0800
X-CSE-ConnectionGUID: t1IqzDLVRfy/oDErVC9tcA==
X-CSE-MsgGUID: 40EVSXihQJWJNjBwZdsZHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="134398933"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.128])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:15 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu,  9 Jan 2025 16:31:01 -0700
Message-ID: <20250109233107.17519-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736465483; x=1768001483;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gwKLjM9Um+c1EtV0m7N+KQ5yVfvCVeVP8yakpHm8yRs=;
 b=GnbD9SZ5i+z24s8IkQmHq9GUU28WUNzHrO/ec3YXAPyFKPLo4+92dD9G
 XB0J8u3d8hF1AH+6TaefALyHcFY8K7FZUrGGhuRCg7UaV9UQT74YYKbWw
 xgKTFddbMq4iiLiXXI8w7AQS9ry4kguS1Zb15Xd3eH0PPnb2+mnTS2ZGB
 wcqED12hBfhnmV/dubVsnw1VHRm9dboErT8G8OmvUhYbV4nXbG4qMFUA/
 vkzKqP39Mum4f5OIA96eqR4gRvQN6abpaFDdsnPbDdnQvNTo6AInZdgUv
 62mz5HF/78mvjNdLolRD/6YDsxYcdxuXcoqzCLCkk2zkOJ9BZZO/JoI5k
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GnbD9SZ5
Subject: [Intel-wired-lan] [PATCH net-next v4 0/6] net: napi: add CPU
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
after reset. However, since there can only be one IRQ affinity notifier
for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
management in the core (which also registers separate IRQ affinity
notifiers).   

Move the IRQ affinity management to the napi struct. This way we can have
a unified IRQ notifier to re-apply the user-set affinity and also manage
the ARFS rmaps. Patches 1 and 2 move the ARFS rmap management to CORE.
Patch 3 adds the IRQ affinity mask to napi_config and re-applies the mask
after reset. Patches 4-6 use the new API for bnxt, ice and idpf drivers.

Tested on bnxt, ice and idpf.
v4:
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
 include/linux/netdevice.h                    |  23 ++-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 145 ++++++++++++++++++-
 15 files changed, 191 insertions(+), 181 deletions(-)

-- 
2.43.0

