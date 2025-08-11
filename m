Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D64B21229
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2460D415EA;
	Mon, 11 Aug 2025 16:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iafgYvfL0rf0; Mon, 11 Aug 2025 16:36:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B118541546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754930196;
	bh=TEg7fDvaMBW8+L0r8CgXjFSynYvBdfbkKLWEnNhiMxI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9Y/POP7KbFA+e6Jx5HqY2zupBa2CiCFjA/zUaoPTspuHjj7AKfQ5fQ47W7B5AmYu7
	 +lTQtgxIdpR4I9fzR4QZ9CHNbWvuJ6x9oSSZKofk++cGjHs1IrBDumRk99hylsz1Cc
	 jYc7DfFMUszKznpwLOY09FjieYVy/5ibQCW6n++QvGp4nKGLLnPKLEswR9AMw0HUA+
	 l7eXrMkwXFhrUMDeZgMBSTQsCpHpWsbgcvjasHx19vvLdUa59Af+FX2rw3G9vBK0GH
	 ZfOW32FGhuzNzV0Vr/02kNdQHt+rlFgaGAgAL/uDjtr/1T5AW9Rw1+AqCweO3as+Zq
	 Emd8yI+MS3cpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B118541546;
	Mon, 11 Aug 2025 16:36:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 985C9138
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E60A61478
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:36:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1tgRWTT9FOzx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:36:33 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 11 Aug 2025 16:36:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7EA9A61371
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EA9A61371
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EA9A61371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:36:33 +0000 (UTC)
X-CSE-ConnectionGUID: Qak21CUzQXG5PSm5k42ekg==
X-CSE-MsgGUID: 1kpqsja/SAecTG8AbKNLtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56395920"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56395920"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:29:25 -0700
X-CSE-ConnectionGUID: E0XUox6nRAG/9zCmXZtd9A==
X-CSE-MsgGUID: UavgiCbnSRqYkFbLFNi3oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170161872"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by orviesa003.jf.intel.com with ESMTP; 11 Aug 2025 09:29:26 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Mon, 11 Aug 2025 04:44:04 -0400
Message-ID: <20250811084406.211660-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754930193; x=1786466193;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w8aLrfvcRyl5du40CZDjKt0KFYSVp08xAZJY0fSLHCQ=;
 b=KLoAQn3aj990ZW1B+TSaMJ1oJaHWfXHhmQeAsZcW5IgJhIIosoxfke60
 RTRjcqjRNcxsYNAtaMqoVlSRZnei+sL4lj9JkPTSH1aE86Za7PtQNPgVh
 bWZ1pFCOJLilSCAZl0rYgU8eqxZAjUA4v8jPTNCbzhDQYKhwqrN8PMKOY
 UFnr/jHOA3wpf+3lz4z5oytAdm12PDhEZ3HOl+EzdXKY2lGRnrxTZ4/O3
 6SKUsBrlbEmlSwtV3J4ni38MPhOeq99TKSiSLLGJXRZ++IEmUDXAc9Y0o
 fV63E4Q5dyHCpkNm0XBPYMJ5X8CKmtC3100/0CzU/ldBfwO3pBVjmUFmT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KLoAQn3a
Subject: [Intel-wired-lan] [PATCH 0/2] ice: add E830 Earliest TxTime First
 (ETF) offload support
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
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 ++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 171 +++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  28 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 153 +------
 drivers/net/ethernet/intel/ice/ice_xsk.h      |  22 +
 17 files changed, 903 insertions(+), 204 deletions(-)

-- 
2.47.0

