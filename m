Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7019F6BAB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E92C4175E;
	Wed, 18 Dec 2024 16:59:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UO0Tt5XpScl4; Wed, 18 Dec 2024 16:59:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8B55417A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734541151;
	bh=51ZcetU3sjt+iT9dGDjNzvzLpOemzZnW97YMcgtI9+U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b79c1JANiXFUxd5gIANc0tX89QbqAkQ2uhk08INiA5QPC1VFxKXKgaUlNMhuQKjnW
	 mvhfSg2zHrEvePLyEHDfijKfx6l2PEFxhNWg5Qx9SfZQE6fyW1oatT4zRg2hahTljT
	 3hK5mSJe7CTjSBTNOxnOqpHnDr5o/KyNbR6/8iOv7fPvxoKT1j+MXrr6L+D8QJA+jp
	 6j92PA/YiUFnRDmcFJWwlxV5nrr57lhezngc+oft8abo2jYTcfNlcegawfN74qUvzv
	 +rPqwxq1qotf2hnXWDRurKHvomfE6jeZl06MnJ4BiDkT9s9S+p1/VuRDa7oegofQuc
	 snFCvdcRqD5Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8B55417A1;
	Wed, 18 Dec 2024 16:59:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 93310C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81699614C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UZX3oDKq_f53 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:59:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63ACC6140D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63ACC6140D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63ACC6140D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:07 +0000 (UTC)
X-CSE-ConnectionGUID: CGrnIAkJQ5mJpSK88wKLRQ==
X-CSE-MsgGUID: iAFz8NjRS8mWIktRzzfhww==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46415478"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46415478"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:06 -0800
X-CSE-ConnectionGUID: kI4oOvCkQ5qYX1e65ntjOA==
X-CSE-MsgGUID: 5dKS172oQIWd9MwWJ3gi4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102531559"
Received: from ldmartin-desk2.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:00 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Wed, 18 Dec 2024 09:58:35 -0700
Message-ID: <20241218165843.744647-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734541148; x=1766077148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F2ReL54suNLF8b/FnV23UbubkmG90RPdFCGOxZvcdO8=;
 b=bdfaKEcokM/zY7qTbv5TPsjsg/3/NjjJfT170P8gquhrE3IJNyfOc49G
 qOYIO3s20FXrjUmOjNqjYdcMe3zMaqXluVfpihL1hH9H4RXPO7q45QQw8
 h0oBAOvNp+O+YowpGutkwcNWqni915Wm8N76jFVL3ncDHXaO25g5Dol0K
 UDFAysW+n/ZWeoxhIUgJGPPvHuMMtz4pTf9fVt8AFYDX3m11iD7AksoAU
 3mwmY3ulfEZEOHg+F2ipjYq6ooDj/CrLbfzNA/Di1aRpf46+XxDyTVjHl
 5ydolNuAqaHyFSrcDR2elSf1uzV2LUlQACrxm317GXCwGEYB6ivjqytJX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bdfaKEco
Subject: [Intel-wired-lan] [PATCH net-next v2 0/8] net: napi: add CPU
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

Move the IRQ affinity management to the napi struct. All drivers that are
already using netif_napi_set_irq() are modified to the new API. Except
mlx5 because it is implementing IRQ pools and moving to the new API does
not seem trivial.

Tested on bnxt, ice and idpf.
---
Opens: is cpu_online_mask the best default mask? drivers do this differently 

v2:
    - Also move the ARFS IRQ affinity management from drivers to core. Via
      netif_napi_set_irq(), drivers can ask the core to add the IRQ to the
      ARFS rmap (already allocated by the driver).

RFC -> v1:
    - https://lore.kernel.org/netdev/20241210002626.366878-1-ahmed.zaki@intel.com/
    - move static inline affinity functions to net/dev/core.c
    - add the new napi->irq_flags (patch 1)
    - add code changes to bnxt, mlx4 and ice.

Ahmed Zaki (8):
  net: napi: add irq_flags to napi struct
  net: allow ARFS rmap management in core
  lib: cpu_rmap: allow passing a notifier callback
  net: napi: add CPU affinity to napi->config
  bnxt: use napi's irq affinity
  ice: use napi's irq affinity
  idpf: use napi's irq affinity
  mlx4: use napi's irq affinity

 drivers/net/ethernet/amazon/ena/ena_netdev.c  | 21 ++---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     | 51 +++--------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h     |  2 -
 drivers/net/ethernet/broadcom/tg3.c           |  2 +-
 drivers/net/ethernet/cisco/enic/enic_main.c   |  3 +-
 drivers/net/ethernet/google/gve/gve_utils.c   |  2 +-
 .../net/ethernet/hisilicon/hns3/hns3_enet.c   |  2 +-
 drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice.h          |  3 -
 drivers/net/ethernet/intel/ice/ice_arfs.c     | 10 +--
 drivers/net/ethernet/intel/ice/ice_base.c     |  7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 14 +--
 drivers/net/ethernet/intel/ice/ice_main.c     | 44 ----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 19 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 +-
 drivers/net/ethernet/mellanox/mlx4/en_cq.c    |  8 +-
 .../net/ethernet/mellanox/mlx4/en_netdev.c    | 33 +------
 drivers/net/ethernet/mellanox/mlx4/eq.c       | 24 +----
 drivers/net/ethernet/mellanox/mlx4/main.c     | 42 +--------
 drivers/net/ethernet/mellanox/mlx4/mlx4.h     |  1 -
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  1 -
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
 .../net/ethernet/mellanox/mlx5/core/pci_irq.c |  2 +-
 drivers/net/ethernet/meta/fbnic/fbnic_txrx.c  |  3 +-
 drivers/net/ethernet/qlogic/qede/qede_main.c  | 28 +++---
 drivers/net/ethernet/sfc/falcon/efx.c         |  9 ++
 drivers/net/ethernet/sfc/falcon/nic.c         | 10 ---
 drivers/net/ethernet/sfc/nic.c                |  2 +-
 drivers/net/ethernet/sfc/siena/efx_channels.c |  9 ++
 drivers/net/ethernet/sfc/siena/nic.c          | 10 ---
 include/linux/cpu_rmap.h                      | 13 ++-
 include/linux/netdevice.h                     | 23 ++++-
 lib/cpu_rmap.c                                | 20 ++---
 net/core/dev.c                                | 87 ++++++++++++++++++-
 35 files changed, 215 insertions(+), 302 deletions(-)

-- 
2.43.0

