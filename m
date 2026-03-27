Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDUVHC8yxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:30:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DEC3406B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C6FE61284;
	Fri, 27 Mar 2026 07:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcvJMD7K1Lb1; Fri, 27 Mar 2026 07:30:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBB986127C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596652;
	bh=HvymD+6oLXxgrTdUE3YKanaYKDNKNsYtjCx+ktqO82I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o0PjO1ZpVGqhE5CdybwZI5eqZxbkd+15/MxYzUQ949PsaxKyEGAcH+NpzXeIMKm/c
	 zwM9M+z6dHVXhiEERLx1Yxx5zHh5SrJuFvS3HRm2EKYRfhUTEglONaJbQ6wU7MTXLL
	 s3wAIrfZy1OzDWVx0A0lwE5z7nMTIl1eJ14epNNrKFdg3aiVo8Kcd2UMre1pgFx14Z
	 851mnMn5bULU83h2RUIdswvB1XUaS1SMgXVSfiQQtjxnNEkl8zF9ITnO7lrhvgYTsu
	 ACqIM3/4F8n4xSL4h9OMxkePm/OwMCmo7EPKWx81gIBdmv4w50l6c897KzpG/kyW79
	 k4TsNdeDYTUsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBB986127C;
	Fri, 27 Mar 2026 07:30:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F5F22D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65EEC415BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDrlunfQoc39 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:30:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7960841598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7960841598
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7960841598
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:50 +0000 (UTC)
X-CSE-ConnectionGUID: eKWkunBZQPSEUJCx+dWVTw==
X-CSE-MsgGUID: 4WiCtqiZSQmjSTX9qapukg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75734296"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75734296"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:30:50 -0700
X-CSE-ConnectionGUID: 9wTCI3V8RVSixoc2skvYqw==
X-CSE-MsgGUID: 2GAwFIL6RryYJZ4EY+HlLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255740361"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:30:48 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri, 27 Mar 2026 08:30:36 +0100
Message-ID: <20260327073046.134085-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596650; x=1806132650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iXs987oPA7ahQ4eyUK+mZKugGtcil+y5KlE/vj/M2Go=;
 b=ZzrFpWRIQC5fyw7IIzhxmlKSAmxZQt/NTJdD9sYU3wlp+bYXj0AI570r
 zCwdxIsr6Jj63mrnbF737ArKXXESWZ7Lm6KlglnPK2JiwtWEEMEgN28qQ
 qKfG89JzkfXd8/K35mAGauyTtyAm2w3VnUtIEXC6+zEsdt3PKpqqvE8c9
 IcmeecVrOI62qHk61B9jtZaCmmiJDc2syzLP7E1Oxc/mElAsYslyxigTJ
 WuNr62RfbLUZycoJZIVpvcghJsSIEgTgO60lGqU7nFJuSOUhh53h5tDpI
 C4XADNkVksfw4zRdGABLSUpk7Di7bJjTjCcM+oxlNRURCIy/SCbI3gHxi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZzrFpWRI
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add bounds check for
 debugfs register access
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C2DEC3406B3
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

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
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
+		/* check format and bounds check register access */
+		if (cnt == 2 && reg <= IXGBE_HFDR) {
 			IXGBE_WRITE_REG(&adapter->hw, reg, value);
 			value = IXGBE_READ_REG(&adapter->hw, reg);
 			e_dev_info("write: 0x%08x = 0x%08x\n", reg, value);
@@ -97,7 +98,8 @@ static ssize_t ixgbe_dbg_reg_ops_write(struct file *filp,
 		u32 reg, value;
 		int cnt;
 		cnt = sscanf(&ixgbe_dbg_reg_ops_buf[4], "%x", &reg);
-		if (cnt == 1) {
+		/* check format and bounds check register access */
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
