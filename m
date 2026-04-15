Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GBQBqmg32kEWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D46340546A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F9FA6F726;
	Wed, 15 Apr 2026 14:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iLlkkVGD8u7A; Wed, 15 Apr 2026 14:28:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FE056F766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776263331;
	bh=7wYmwSeUp+Aku806hwrnJe5X66IdlSRkkdfHuqJdCjc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nspk/CxBkSrnvP23ad1J+r2VVloCO9ELD9FyxTVTnIcoFHZzzmwdj2VT6HPkGAfQI
	 XeaUGMfhJ7/I3FnjludqnY2krHcZGZrpgam1Rwsr9QBlvBu1NArpNsWcW5ICrK8QPm
	 ulIj8fJ0oONbS0UONILS7guv+FGJB2n7MTTnXF4w6CF78lunjKh4YZVWCrHw0qwTzq
	 Op2p+eNhOhndbWq3F1p7aY0cxUutsiWNBOLnVMJlXyEQvwAfHXlyckpIRk7wZXGz5n
	 vA6V0/RlDFIH66U4r/9ckC8xaAbjo4WCZ3MzgKka4/rm5m/7vsrxq14T8iKdGKtNiO
	 HXwK5wZDBTrRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FE056F766;
	Wed, 15 Apr 2026 14:28:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C519283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F15785477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eyHNTkCmwO2W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 14:28:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 05B6F825C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05B6F825C3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05B6F825C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:47 +0000 (UTC)
X-CSE-ConnectionGUID: +zNJ+Wo2TyS1kXFHVGk0Aw==
X-CSE-MsgGUID: rwnn3bHaTiO66SFnqtvaNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77423733"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77423733"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:28:47 -0700
X-CSE-ConnectionGUID: SOHqTdJeQsaxJ5FIc2m7SA==
X-CSE-MsgGUID: a9nUnyS4SQCZ01l5LPg53g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="234467850"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 15 Apr 2026 07:28:45 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Wed, 15 Apr 2026 16:28:37 +0200
Message-ID: <20260415142841.3222399-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776263328; x=1807799328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7SKNB46uDZXM8jxmPX4sCXW57soOfjv8FO2okC82C6E=;
 b=UpWZcdYYmlBe8b1RvlBBmRc5J6mgoF6lVZGo7Vk3+dVxKkzxuJtu7xNy
 Ed1YcqlfmCEtn1XigZd0ISP8ZQOJLB9l0y76yGC0DFntjrE3ZdHPgeT58
 upi33c+AGn2miuu6qGvkncU+iU1zsDZIc4xYh1rZtu+WQOLpmMq5dDGmT
 YOYUQMSh9bhTaEL9KFWaxRW0ZR9ikm5HXZtUbrk16prAMQMkK3UhZOqDp
 7gitnnEHBPJxKvLSkQ5o1skwceKjQ5GSEYvAa0z+e+ahTjjIVqa16AzCG
 p9iG1Idv1cRDhYP2yMQJaUX8a0h1T5vs1O+3LiomSyO2+vxTVa1Jsm1aD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UpWZcdYY
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/6] ixgbe: add bounds check
 for debugfs register access
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6D46340546A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Paul Greenwalt <paul.greenwalt@intel.com>

Prevent out-of-bounds MMIO accesses triggered through user-controlled
register offsets.  IXGBE_HFDR (0x15FE8) is the highest valid MMIO
register in the ixgbe register map; any offset beyond it would address
unmapped memory.

Add a defense-in-depth check at two levels:

1. ixgbe_read_reg() -- the noinline register read accessor.  A
   WARN_ON_ONCE() guard here catches any future code path (including
   ioctl extensions) that might inadvertently pass an out-of-range
   offset without relying on higher layers to catch it first.
   ixgbe_write_reg() is a static inline called from the TX/RX hot path;
   adding WARN_ON_ONCE there would inline the check at every call site,
   so only the read path gets this guard.

2. ixgbe_dbg_reg_ops_write() -- the debugfs 'reg_ops' interface is the
   only current path where a raw, user-supplied offset enters the driver.
   Gating it before invoking the register accessors provides a clean,
   user-visible failure (silent ignore with no kernel splat) for
   deliberately malformed debugfs writes.

Add a reg <= IXGBE_HFDR guard to both the read and write paths in
ixgbe_dbg_reg_ops_write(), and a WARN_ON_ONCE + early-return guard to
ixgbe_read_reg().

Fixes: 91fbd8f081e2 ("ixgbe: added reg_ops file to debugfs")
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Cc: stable@vger.kernel.org
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2 -> v3:
 - Add Reviewed-by: Simon Horman; no code change.

v1 -> v2:
 - Add Fixes: tag; reroute from iwl-next to iwl-net (security-relevant
   hardening for user-controllable out-of-bounds MMIO).

 drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c | 6 ++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
index 5b1cf49d..a6a19c0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
@@ -86,7 +86,8 @@ static ssize_t ixgbe_dbg_reg_ops_write(struct file *filp,
 		u32 reg, value;
 		int cnt;
 		cnt = sscanf(&ixgbe_dbg_reg_ops_buf[5], "%x %x", &reg, &value);
-		if (cnt == 2) {
+		/* bounds-check register offset */
+		if (cnt == 2 && reg <= IXGBE_HFDR) {
 			IXGBE_WRITE_REG(&adapter->hw, reg, value);
 			value = IXGBE_READ_REG(&adapter->hw, reg);
 			e_dev_info("write: 0x%08x = 0x%08x\n", reg, value);
@@ -97,7 +98,8 @@ static ssize_t ixgbe_dbg_reg_ops_write(struct file *filp,
 		u32 reg, value;
 		int cnt;
 		cnt = sscanf(&ixgbe_dbg_reg_ops_buf[4], "%x", &reg);
-		if (cnt == 1) {
+		/* bounds-check register offset */
+		if (cnt == 1 && reg <= IXGBE_HFDR) {
 			value = IXGBE_READ_REG(&adapter->hw, reg);
 			e_dev_info("read 0x%08x = 0x%08x\n", reg, value);
 		} else {

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 210c7b9..4a1f3c2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -354,4 +354,6 @@ u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg)
 	if (ixgbe_removed(reg_addr))
 		return IXGBE_FAILED_READ_REG;
+	if (WARN_ON_ONCE(reg > IXGBE_HFDR))
+		return IXGBE_FAILED_READ_REG;
 	if (unlikely(hw->phy.nw_mng_if_sel &
 		     IXGBE_NW_MNG_IF_SEL_SGMII_ENABLE)) {
-- 
2.52.0
