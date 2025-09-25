Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C188B9E57F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 11:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05F41824DD;
	Thu, 25 Sep 2025 09:30:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uR_3Vx74VMbd; Thu, 25 Sep 2025 09:30:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6933E82684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758792627;
	bh=f8DMhyOvL5Vni6dMgtXxMQ8txzg5QHdM+InHwLRZAwY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l7lT7oDcFVUapKurIM2E2CDCP0nno808Kog3MeHJweY4hn9N4nGRyVa/6PgdgTSFO
	 6MePiTDQwLEVJVi1aXJALs5SWvPTJJ7+/Aruh+R+vS096NpkTwaJnvkpcSYVvhmVwO
	 gIxjYiJpX541oQa+4rINTBrGAkZNJ9LQoMXydDdyeOMBQmiz2FKT4P3G0cPQ9Tja5t
	 L+SqlguTN8I+ZzIWMkzvvIclL0e486vHiibuF4lzmVWE2NGKyyfJf4WuzdQVBigTNV
	 jWGW9Mf3ZGJjpipqy/DpKC7pylN4k5PT+0CmUkR44RClaOCnmHgjELOX9BU+7HW+KG
	 AADLAXW9wZHfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6933E82684;
	Thu, 25 Sep 2025 09:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 24BAC177
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1632640BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CjuCu2zhSoiS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:30:25 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Sep 2025 09:30:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 03CDA40BE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03CDA40BE3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03CDA40BE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:24 +0000 (UTC)
X-CSE-ConnectionGUID: PWHIuZe2QWS4Ta3MdvoZgA==
X-CSE-MsgGUID: at/eVQgmSASAG68OIc038A==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71724546"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="71724546"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 02:23:17 -0700
X-CSE-ConnectionGUID: JMsNwcIMS1GAmsC9Bet67A==
X-CSE-MsgGUID: fuM4GIUNSjmXLbCcs8nfFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="214411791"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 02:23:15 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 jacob.e.keller@intel.com, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com, Michal Kubiak <michal.kubiak@intel.com>
Date: Thu, 25 Sep 2025 11:22:50 +0200
Message-ID: <20250925092253.1306476-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758792625; x=1790328625;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hziz8ecxwUxtmhqfVmrk5zyNrYYPEepYYr8bU3ObER8=;
 b=N+n87/yUfKCgxKtH+A5FT8uSmGE2SPX0kzpBKHbqveXNXVlNIKGhppxn
 GYGnWFpzHmYbPecZrggtKBANGZ8H2vFzPQi/h10I2qYmO5xPyvNcYvvOL
 K08fbYLhWHCFaQcVsXHsTDn/Np4a7jzXMy0xO1kCNG+LeJ3IfS/K8proX
 br+rvm/1l39K0ePk6VFdMDDWoVl3LnzXRW6Ul5d7Ifm35HIbI9yt1rpHL
 ikDs4eVL67VVQLEsEMOMdeNIRrGf/AbuDt+1HhhrBK4bFZoOP1zdWIf5O
 5RstNI793Oj8WHLOdSpAN/qEnxWZ8/aDA9Jsnjh1ZplkOlY2x1+DAVqgj
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N+n87/yU
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: convert Rx path to
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

Thanks,
Michal

---

v3:
 - Fix the offset calculation for XDP_TX buffers in patch #3 (Larysa).
 - Remove more dead code (Olek).
 - Remove all hardcodes introduced in the patch #2 (Olek).
 - Add an explanation about the performance drop for small MTU on XDP_DROP
   action in the commit message for the patch #3.

v2:
 - Fix the traffic hang issue on iperf3 testing while MTU=9K is set (Jake).
 - Fix crashes on MTU=9K and iperf3 testing (Jake).
 - Improve the logic in the Rx path after it was integrated with libeth (Jake & Olek).
 - Remove unused variables and structure members (Jake).
 - Extract the fix for using a bad allocation counter to a separate patch targeted to "net"
   (Paul).

v2: https://lore.kernel.org/intel-wired-lan/20250808155659.1053560-1-michal.kubiak@intel.com/
v1: https://lore.kernel.org/intel-wired-lan/20250704161859.871152-1-michal.kubiak@intel.com/

Michal Kubiak (3):
  ice: remove legacy Rx and construct SKB
  ice: drop page splitting and recycling
  ice: switch to Page Pool

 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |   3 +-
 drivers/net/ethernet/intel/ice/ice_base.c     | 123 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  21 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 647 +++---------------
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 125 +---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 146 +---
 drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
 drivers/net/ethernet/intel/ice/virt/queues.c  |   5 +-
 13 files changed, 212 insertions(+), 962 deletions(-)

-- 
2.45.2

