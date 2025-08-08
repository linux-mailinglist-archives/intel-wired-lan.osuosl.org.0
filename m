Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C475CB1EC94
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 17:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5D4460DC3;
	Fri,  8 Aug 2025 15:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yJZt3S9PCPbS; Fri,  8 Aug 2025 15:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B801060D9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754668642;
	bh=V9w7jIgIE2GuGqH3zsFd3LZ0hV0Tp219hn6Iux9uft0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pMgHiKS/e90g9wb6840kX6S2OS3dLEy7AxmgOseZg2x+hXVRCC5G7ylgSjYrIQkl2
	 Oogtff4R/kmS8oSHCtF4LrtR8GXVc6LjmyXY36I6YUh3EXm/YSSGDhsuljPOHV1qYJ
	 BsjV4AvKOoFqIfSs+vdmiZgY+jA13+54BxzmKXr0xrg/z9dAeoNVhbNrtppU2kg/XO
	 qhPT8omAdkXdpXjYdhPlcUnvqv+pK9jzcXUpNxEb9ydxbdwIEPlqjlPC2lmq+axgPa
	 o2s/8kv+UJgDWmKfS1qFMg6KFRJ6Zs7myaMpyb3lPJivEJEPowdwSXkkEQAUmlntrg
	 Y5JmHYQ+P7ySA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B801060D9B;
	Fri,  8 Aug 2025 15:57:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 11A0C9CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0318740593
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vtJVLaj8ksyq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 15:57:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2D6C14064D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D6C14064D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D6C14064D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:57:20 +0000 (UTC)
X-CSE-ConnectionGUID: RtF0WpZ/Ty2pHIptyQQeDg==
X-CSE-MsgGUID: XY96tJWQR2WmiDXGDnP0Zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="68099704"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="68099704"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 08:57:19 -0700
X-CSE-ConnectionGUID: hB66SZHVQGS+AmF2Q0kn8w==
X-CSE-MsgGUID: eXGzo5EITFKPFtRyqS7vdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169559875"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 08:57:16 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 jacob.e.keller@intel.com, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com, Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  8 Aug 2025 17:56:56 +0200
Message-ID: <20250808155659.1053560-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754668640; x=1786204640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cecSysv4GaVxekLvn8V684XwCGqf2shWl6eqL0HBOFE=;
 b=biebfg3bNAApHwnEYpjgfZ9g5pPJLyxnLeUSoNoNK+fsi6BFhSyk5/30
 cWG9/l1RqYLb31KMsCmOo/zv9Tz/bTGMeyaphCM6pEZ2woYGHhy7cP3WS
 08M3Z8GgZC1kNdR+Z5mhu/HQI/mPcfKcYQa7n8pmd+5cdsYdosvrcl7G0
 8PRBjzheGYiD1RuxcQt03G7p64wMX+E486r7yJP9yDTJYTAHKIJGNe+Z/
 sslZ0XcLSYjamQf0QJ87zyiB0AROHBAzUm/q9xJG2AS4iLj45JGGbcyGO
 rWpKRqUoRuqHrxm6AC5R0VekJOWKVtPLp0xLD2N3tjfErVHomFKmt3gIm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=biebfg3b
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] ice: convert Rx path to
 Page Pool
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

---

v2:
 - Fix the traffic hang issue on iperf3 testing while MTU=9K is set (Jake).
 - Fix crashes on MTU=9K and iperf3 testing (Jake).
 - Improve the logic in the Rx path after it was integrated with libeth (Jake & Olek).
 - Remove unused variables and structure members (Jake).
 - Extract the fix for using a bad allocation counter to a separate patch targeted to "net"
   (Paul).


v1: https://lore.kernel.org/intel-wired-lan/20250704161859.871152-1-michal.kubiak@intel.com/

Michal Kubiak (3):
  ice: remove legacy Rx and construct SKB
  ice: drop page splitting and recycling
  ice: switch to Page Pool

 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |   3 +-
 drivers/net/ethernet/intel/ice/ice_base.c     | 124 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  21 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 645 +++---------------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  41 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   5 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 146 +---
 drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
 13 files changed, 215 insertions(+), 874 deletions(-)

-- 
2.45.2

