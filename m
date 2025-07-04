Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31058AF97EB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 18:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A8BD61044;
	Fri,  4 Jul 2025 16:19:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C6095__Z06bA; Fri,  4 Jul 2025 16:19:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05C8961062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751645971;
	bh=sUGRuN3hkpJF7sWLAycb2gnut1HcmtLp1Yq1ml4Xyok=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7YlCELVu+/Dl5o3n29cGyXgMWXcQC95+V5oTOYVxuGSQAUdII7x5Uns1xiiyY+zDc
	 99n1q33J9WgHAdJTUnBKExC2EBYkZqgJUhrUFrV81f6Wp+o8rY4t+abBs9MbIQRM0A
	 NS2b9x6Pz2eTvV6p87vxhFtoQeJxa9e5EV958cvT4ZvDdHhqU8uJ/OqqnTfJoWxOym
	 NfgWwOsN/9I70GLBYQaxLi/slxnr6phuFyht7GVzg3viIwjFKBpWd9Z00PL7PJuYxs
	 3LnHHUZFY5S5QHqp2RcuI+MYPOlSXMnABaMSPeTqiC8BoaDuYC7M4wXvIQPjYLmF2V
	 ilEcg4bviX6+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05C8961062;
	Fri,  4 Jul 2025 16:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BBC617AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 16:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2E5383F62
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 16:19:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWxVpPv-eLHo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 16:19:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B7E2D83F67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7E2D83F67
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7E2D83F67
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 16:19:28 +0000 (UTC)
X-CSE-ConnectionGUID: 5YhVL79oQgS6hrpC58nSIw==
X-CSE-MsgGUID: SaAzK7pORr2sJbyDtuKb+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="64672737"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="64672737"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 09:19:28 -0700
X-CSE-ConnectionGUID: M1rhPqLISli6My58NF8L5Q==
X-CSE-MsgGUID: ruTuhw9YT1S4DgcKXgABIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="154094638"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 09:19:26 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  4 Jul 2025 18:18:56 +0200
Message-ID: <20250704161859.871152-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751645968; x=1783181968;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YdGfM372ecG5V/q2Nbx/zOdGtXzYtVGMC0tA7lzqA6Y=;
 b=i4Kp2xhetRzs5s3IxeR6hiLsgNmvyPzjCOigfwZ01+CzHp1t5DD4sa2h
 PfybapzI+/5xhhns5ZBL9O6bjvccgXhgiXJGwYefkG3OWrIW9RuAa3xeQ
 6vI6vJM88yj7WwaBqwzuh/GbB7+C+u3+oLRfUH7ZcWeR3f3T5lZy3tANX
 g1xhYbH6s9PijetVkW90Y1DihcNafLgMAg175JyDI1WF3LLau4BUAoe8S
 Nzeh10H5uyhK7QpyVcoXUPRZ4/LqGw3AbOz4qG6Wc8PpWtivTcIDTyOXI
 qTpbxY9Xy6t9aAkWNzJ3NfHeuJaLtiqIcrDUfq9XKjPHZZfRFbytSlHni
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i4Kp2xhe
Subject: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to Page
 Pool
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

This series modernizes the Rx path in the ice driver by removing legacy
code and switching to the Page Pool API. The changes follow the same
direction as previously done for the iavf driver, and aim to simplify
buffer management, improve maintainability, and prepare for future
infrastructure reuse.

An important motivation for this work was addressing reports of poor
performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
incurred significant overhead due to per-frame DMA mapping, which
limited throughput in virtualized environments. This series eliminates
those bottlenecks by adopting Page Pool and bi-directional DMA mapping.

The first patch removes the legacy Rx path, which relied on manual skb
allocation and header copying. This path has become obsolete due to the
availability of build_skb() and the increasing complexity of supporting
features like XDP and multi-buffer.

The second patch drops the page splitting and recycling logic. While
once used to optimize memory usage, this logic introduced significant
complexity and hotpath overhead. Removing it simplifies the Rx flow and
sets the stage for Page Pool adoption.

The final patch switches the driver to use the Page Pool and libeth
APIs. It also updates the XDP implementation to use libeth_xdp helpers
and optimizes XDP_TX by avoiding per-frame DMA mapping. This results in
a significant performance improvement in virtualized environments with
IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,
performance remains on par with the previous implementation.

This conversion also aligns with the broader effort to modularize and
unify XDP support across Intel Ethernet drivers.

Tested on various workloads including netperf and XDP modes (PASS, DROP,
TX) with and without IOMMU. No regressions observed.

Last but not least, it is suspected that this series may also help
mitigate the memory consumption issues recently reported in the driver.
For further details, see:

https://lore.kernel.org/intel-wired-lan/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com/

Thanks,
Michal

Michal Kubiak (3):
  ice: remove legacy Rx and construct SKB
  ice: drop page splitting and recycling
  ice: switch to Page Pool

 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |   3 +-
 drivers/net/ethernet/intel/ice/ice_base.c     | 122 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  21 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 645 +++---------------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  37 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   7 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   5 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 120 +---
 drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
 13 files changed, 205 insertions(+), 850 deletions(-)

-- 
2.45.2

