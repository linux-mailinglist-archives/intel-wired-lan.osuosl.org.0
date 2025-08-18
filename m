Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F876B2B334
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 23:08:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C4D160665;
	Mon, 18 Aug 2025 21:08:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMEyD30DZkgm; Mon, 18 Aug 2025 21:08:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50F06605D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755551283;
	bh=FI+a2Bcje3P/U6HmuLBkuq+O2+fGYHQ18sUDm4j+BFo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xPm4hUk5MPBA8HS20ZWxFfFDjF8pNKC9zsWBR3acdKpUGHhO6oAOZK+Iyyq1DY7k4
	 kb5Cuq8jNFxFjxwEqBMPFGG8bf5OplQpbYjtrGD3OspVAnuNmv2mz9k4uoEogaxLzJ
	 97TV19N4yLliZXFoIbaa8MWld3BcBybYNX6a+1SXqDR7N2n0IHeqJWzr2VN6iDFP5q
	 gw5ZIBz5abqsmTqno6SbwIdkO24GwpUnYRVq0Y1Y+PxyRiGD9G9OlEGGsIMwd6zAh3
	 Ca4lufR2AXmUBPSM7c/JVjaibgXIbpJs9G+z8XOT6jT8pLnK7kvbRhiI+kc8D2Wtnw
	 3c1fDZfMZ3CrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50F06605D1;
	Mon, 18 Aug 2025 21:08:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E07819E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 21:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 140B460665
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 21:08:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UKivv1s5M9P1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 21:08:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B92C605D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B92C605D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B92C605D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 21:08:01 +0000 (UTC)
X-CSE-ConnectionGUID: Npw7TEF8R6ucNWjTiJUBfg==
X-CSE-MsgGUID: Tz/R6mm4TKyZLG6vz4bPwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57892554"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57892554"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 14:08:01 -0700
X-CSE-ConnectionGUID: 87ucn6oTTyqlQ/Wq7d3Cqg==
X-CSE-MsgGUID: 1+PSW9u8Qa+xuXe05BxjGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="167627281"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by orviesa007.jf.intel.com with ESMTP; 18 Aug 2025 14:08:01 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Mon, 18 Aug 2025 09:22:55 -0400
Message-ID: <20250818132257.21720-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755551281; x=1787087281;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dTcXqaLAn/ivq2WqxAkd66j1Osdw8t9dmPEM8a0aQ2g=;
 b=QZduVp4JJYHgX500kx29Rnu0nr3H5wdbmGegwhCVNFaPEtbGOanfXye2
 mUmYBjrLSwPmvlqkLttf1jrXQ2HG8nFaTyvDaa2TfQNxz1qroNtf/+yza
 iqNl6fj3TEWvIdFoxf59R9sI5UlEUEjaSZf40T9+YSfaFwtSVJ4EJ+TO7
 IlGhQvQPZDDqEFRQTWLkUoE/vm2fTy4gdc9ZSQ3OTw+ORelbXAdiAhXRW
 DX+/ICDYL/K7yN/rXAKpEwmwZkccNQfbtLmxRARJy3Xw7AI2hIBm8dlwW
 iDJYxkZpride6NMrVUvPsdW3NW29q32z15OC/g3+fzfZt2wWPySYP86uN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QZduVp4J
Subject: [Intel-wired-lan] [PATCH iwl-next v7 0/2] ice: add E830 Earliest
 TxTime First (ETF) offload support
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

This patch series introduces support for Earliest TxTime First (ETF)
hardware offload on Intel E830 network devices. ETF allows applications
to specify when packets should be transmitted, enabling precise timing
control for time-sensitive networking applications.

The implementation consists of two patches:

1. A preparatory patch that moves queue pair enable/disable functions
   from ice_xsk.c to ice_base.c for reuse by the ETF implementation.

2. The main ETF implementation that adds comprehensive support for
   hardware-accelerated timestamp-based packet transmission.

Key Features

- Hardware offload for Earliest TxTime First (ETF) Qdisc
- Per-queue configuration via tc-etf(8) 
- Support for up to 2048 Tx queues with ETF capability
- Timestamp ring mechanism for precise transmission timing
- Dynamic enable/disable of ETF on individual queues

Hardware Details

E830 introduces a new Tx flow mechanism using a dedicated timestamp ring
alongside the standard Tx ring. The timestamp ring contains descriptors
that specify when hardware should transmit packets. Due to hardware
limitations, additional timestamp descriptors are reserved when wrapping
around the ring to prevent malicious driver detection events.

Configuration

ETF is configured per-queue using the standard tc-etf Qdisc (see
tc-etf(8)).

---
Changelog
v6->v7:
 - Move tstamp_ring related member variables (tail, count, next_to_use,
   desc) from ice_tx_ring to ice_tstamp_ring,
 - Ignore ice_qp_dis() return value, and always attempt to enable the queue
   via ice_qp_ena()
v5->v6:
 - Fixed resource leak in error path
 - Added input validation
 - Update error handling logic for disable failures
 - Move ice_qp_* functions to preparatory patch, and add coverletter
 - Address code style issues (u32 vs u16, code flattening)
 - Propagate error status from ice_set_txq_ctx_vmvf
 - Removed unnecessary RDMA compatibility checks
v4->v5:
 - Fix ! vs ~ issue reported by Smatch:
   ice_txrx.c:192 ice_free_tx_tstamp_ring() warn: potential ! vs ~ typo
v3->v4:
 - Move ice_tstamp_ring to a member of ice_tx_ring (Maciej).
  - Add struct ice_tstamp_ring for timestamp ring management.
  - Move tstsmp ring fast patch variables to ice_tx_ring
    (i.e. tstamp_[next_to_use|count|tail|desc]).
  - Allocate/configure Tx Time on a per Tx ring basis using
    ice_qp_[ena|dis], add txtime_txqs bitmap and ice_is_txtime_ena()
    helper function, update all Tx ring and tstamp inrg allocation and
    configuration flows.
 - Update commit message related to updated implementation/design.
v2->v3:
 - Fix const compiler warning.
 - Fix spelling error in function header.
 - Fix Changelog version number.
v1->v2:
 - Resolve patch apply issue.
 - Fixes RCT, zero struct initialization, move bailout condition to top
   of function, removed unnecessary newlines, and added use of
   str_enable_disable.
v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250227111333.30675-1-paul.greenwalt@intel.com/

Paul Greenwalt (2):
  ice: move ice_qp_[ena|dis] for reuse
  ice: add E830 Earliest TxTime First Offload support

 drivers/net/ethernet/intel/ice/ice.h          |  33 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  35 ++
 drivers/net/ethernet/intel/ice/ice_base.c     | 390 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_base.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  78 ++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  41 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 109 ++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 173 +++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  15 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 153 +------
 drivers/net/ethernet/intel/ice/ice_xsk.h      |  22 +
 17 files changed, 895 insertions(+), 197 deletions(-)

-- 
2.47.0

