Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGM/JCJU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A21A3BCA01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C18B40E98;
	Wed,  8 Apr 2026 13:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QEt86tL10-xP; Wed,  8 Apr 2026 13:12:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23A9640EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653920;
	bh=CD5qVWFevM9JR+zvZfHN09AJOIckfXCJgVIsVxsDYFk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OkATxMbrPGhI+R+1M1m2l9p7woyjgIIe1pKOkG2VOCBZPvQYTh8jUR93TL2NWOJAK
	 QUhfcxsHjhCBxyTlzWQ41vp/PztAQET43JhAYzA9n7ve+g1ndCH45gNLeL2FTe75au
	 RBPTzyhyOYdZNUT2w6D5MeRFzg+EyLF6uf/uKz2z77PrW5BImnbiaBpkYpS07tdDHb
	 cOgRgpGubryIM9NoFimTDPxb2pmv1/IUIxnjH08OV8WJyZBHSPMWgCtnFPoUv7CXj7
	 iqVHIRhGnmv24IB495AsP9XW0ckvfhf/wnBzx1ykg2Npu+xj8RUwtAzhu3nG9+DDT2
	 2OIpnQwh+qvYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23A9640EBE;
	Wed,  8 Apr 2026 13:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 76F6F2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D1DA608B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqwY-mTnX1l1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:11:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F35260856
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F35260856
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F35260856
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:57 +0000 (UTC)
X-CSE-ConnectionGUID: 1BTlEtFxRdi2ka8fv3TW/Q==
X-CSE-MsgGUID: 2MNcWf4AQb6VCsJdhiU4xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087223"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087223"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:11:57 -0700
X-CSE-ConnectionGUID: 8xNg/nTORjGkvOQPG9kPaA==
X-CSE-MsgGUID: RYZ4mSObT7myxSFQlZguuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228714940"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:11:56 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:11:48 +0200
Message-ID: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653918; x=1807189918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xHT//3FdP0pzi+J3JCTY+FWqu5wZN0PFM98U8ARD2xs=;
 b=EOdgitGcy9eWV40I4OW1O1E7VGJHysThShucfzhUIx5DbR/8Js2uHkeu
 Hf/DEnKvW0sXBDdw2iwO4jYBk/n1nxJ0dM1K++B3J6J0ayAvcZk6dNW1p
 hF/0ZGEpOj6YDEzA7ji21mNbz69SDXlQP96ziWcsarg5K3ERWlRMZQ5d1
 +S51PDfH1eQ7jtweRkvEs3R1MUG7aZQmygiONPNiAxiMMXIBBq9Rq29/8
 5XvPW5OmENhS7fJM15kPM1e8dGEktfvcRKg5Gw9WrVYqfTbV96UEWBrgQ
 MWWkGQYEeXopcrsp/LWPt8vrYIz/UhYR3d01ZGl4gdwEMeTgHER2gMlbq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EOdgitGc
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/6] ixgbe: six bug fixes
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0A21A3BCA01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Six fixes for the ixgbe driver, covering a SWFW semaphore timeout
miscalculation, a security-relevant debugfs out-of-bounds, a broken
flow-control NVM-reset path, a false-success return in the cls_u32
nexthdr path, an adaptive-ITR u8 overflow, and wrong bit positions in
the UP-to-TC register normalisation.

Patches 1-3 fix issues that could result in functional regressions
(FW update failures, OOB MMIO, traffic stall after NVM update).
Patches 4-6 fix correctness bugs with user-visible effects.

Patch 1 is a squash of two previously independent submissions:
  - "ixgbe: increase SWFW semaphore timeout for X550 FW updates"
    (Soumen Karmakar)
  - "ixgbe: extend 5 s SWFW semaphore timeout to all X550EM variants"
    (Marta Plantykow)

The commit message for patch 1 also fixes an error noted in review:
the previous description stated "200 ms" but the actual default is
1 s (200 iterations x 5 ms per poll).  Patch 1 also replaces the
">= X550 && <= x550em_a" range check with three explicit mac.type
comparisons per Tony Nguyen's request.

Patch 3 additionally handles the setup_fc() failure path that was
left unaddressed in the prior posting: fc_enable() is now skipped
when setup_fc() fails so the MDD-triggering stale state is not
committed to hardware.

Changes in v2:
 - 1/6: Squash two patches; fix commit msg ("200ms" -> "1s"); three
        explicit mac.type == comparisons instead of range check.
 - 2/6: Add Fixes: tag; reroute from iwl-next to iwl-net.
 - 3/6: Add Fixes: tag; reroute to iwl-net; skip fc_enable() when
        setup_fc() fails to avoid committing stale FC state.
 - 4/6: Add Fixes: tag; reroute from iwl-next to iwl-net.
 - 5/6: Add proper [N/M] patch numbering.
 - 6/6: Reroute to iwl-net; swap to (expr >> ..) & MASK operand order.

---

Aleksandr Loktionov (5):
  ixgbe: fix SWFW semaphore timeout for X550 family
  ixgbe: call ixgbe_setup_fc() before fc_enable() after NVM update
  ixgbe: fix cls_u32 nexthdr path returning success when no entry installed
  ixgbe: fix ITR value overflow in adaptive interrupt throttling
  ixgbe: fix integer overflow and wrong bit position in ixgbe_validate_rtr()

Paul Greenwalt (1):
  ixgbe: add bounds check for debugfs register access

 drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c |  4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 18 ++++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c    |  8 ++++++++
 3 files changed, 22 insertions(+), 8 deletions(-)
-- 
2.52.0
