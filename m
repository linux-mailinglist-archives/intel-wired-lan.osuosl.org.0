Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLIHI4ur2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D20763D38E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF22F60A45;
	Fri, 10 Apr 2026 07:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5lk8hpA1Jr2O; Fri, 10 Apr 2026 07:49:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FF0B608A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807367;
	bh=3h3p97+NDQ7+qgwRltDQuCV3w/p6aEYOdL+cDgPr3xE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rjDQO7cTtP2zdQlLx3Yh8f7VHQZNfB0cRwCw/NQlCBkxWP75nd/tY2VVBmiXPNOv+
	 b77Lks6nz0/YSbBdITlfcWgaq2zqQTiC0K8HCxI7seEwYMR97XUgMiI96TjTZhc0vK
	 j+wcP1mRglf/VDqfELNC68+mugAwYsagWoOd4jQiUtXa4Ec9aH2HLJ0m9WbW+/d3Rz
	 CBVO9mNTYkBWsKSFo+J5bMjJ7HQybXYswsnKsJi050ZbdFPPnFF2iqT5aKEUNHsK6B
	 c62xRpX1qoob4oYiRM0WNc3Zp/zapgvvMj9SR2OrcXOc4r/0X5BiMo+yw/L9myk6H1
	 JGDSdjLwDnCrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FF0B608A5;
	Fri, 10 Apr 2026 07:49:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DA981F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F8CD81A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ltIqxhzhyPyX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 275B2816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 275B2816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 275B2816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:24 +0000 (UTC)
X-CSE-ConnectionGUID: q7DT7pvsTM2mEilvXdU9Gw==
X-CSE-MsgGUID: G5hUpqkKQw+/JqjBMvrzQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007917"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007917"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:24 -0700
X-CSE-ConnectionGUID: WZwY2/85SbeenjuPVjA8Jg==
X-CSE-MsgGUID: Miag2Z7hTAqqT/WnyX1mIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941842"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:23 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 10 Apr 2026 09:49:11 +0200
Message-ID: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807365; x=1807343365;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=buWg/nB8AnUQvbl+9LgNQcCODOBB+fgL61OAveIbTH8=;
 b=hTP9P0+Rc2qPIJFvvrRri1LitrG4UZ7Vp2nSl88OiLP0DKQS8V1Cd4s3
 p40Sl5dGVxPoR1LIdrdTgJS5f31Rlv3TdZSQpJaxbohGWjyAIW/8nL2fF
 /MQiFJyWTj0AWMzgdP17NerlVHCfvJ0TRnqa9dc6xYHBudWTI0EWDvj5e
 koyVsvYZc7UmoYko4ffUXD4BcKysDnb6oryPZXesIFIF+BdRMMuv3kzqm
 oTG/vzfQLWc9VkmFGotx3rrXGH/YyHXAH9MviQn9eTjqFpHsfGFvMyZ1y
 8acF39l9eD+eI8FOesf+2rZD3JmqJyJEABHeH+dWW0ypmPiKu1InaawnR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hTP9P0+R
Subject: [Intel-wired-lan] [PATCH iwl-next 0/10] ice: misc cleanups and
 improvements
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: D20763D38E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Ten independent patches for net-next. DCB fix for the 3-bit max-TC
wrap, ethtool link-type coverage gaps, OICR rate bump, and the usual
code quality sweep - log messages, struct layout, helper refactoring.
None touch the data path.

---
Aleksandr Loktionov (7):
  ice: add PORT_AUI and PORT_NONE ethtool port type reporting
  ice: improve Add/Update VSI error messages in ice_vsi_init()
  ice: increase OICR interrupt moderation rate to 20K interrupts/sec
  ice: emit user-visible info message for non-contiguous ETS TC config
  ice: move ice_phy_get_speed_eth56g() from ice_ptp_hw.c to ice_common.c
  ice: use inline helpers instead of memcmp() for IPv6 mask checks in ice_ethtool_fdir
  ice: promote Tx FIFO drain timeout message from dev_dbg to dev_warn

Dave Ertman (1):
  ice: translate FW to SW for max num TCs encoding

Jacob Keller (1):
  ice: reorder ice_flash_info fields to eliminate padding

Paul Greenwalt (1):
  ice: allow setting advertised speed and duplex for all media types

 drivers/net/ethernet/intel/ice/ice_common.c       | 45 +++++
 drivers/net/ethernet/intel/ice/ice_common.h       |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c          |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c      |  2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c      | 30 ++++--
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 41 ++---
 drivers/net/ethernet/intel/ice/ice_lib.c          |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c         |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c          |  6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c       | 45 -----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h       | 13 --
 drivers/net/ethernet/intel/ice/ice_type.h         | 15 +-
 11 files changed, 132 insertions(+), 57 deletions(-)
