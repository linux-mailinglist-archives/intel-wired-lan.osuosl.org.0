Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEtWGiVU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 356E53BCA17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC97240E9E;
	Wed,  8 Apr 2026 13:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NSmqL9dC6cya; Wed,  8 Apr 2026 13:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DF2040EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653923;
	bh=/9LczlXbZFjuBTx0ndJmA4xwbezRp2g2ENUAjXeU8sE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UVIuoygGgUcOzRl/UO6AgzlrBgN6Qv77s61V5T44pX8UIxww1TKr4hdzj7zI+9BnO
	 +nW7O8IvXFohTNDkwgnqJhScmtxEbXnO5n0nupBS97/Y9tBa4GRom4/ACUvaet4XP1
	 8wTl21UKl+o4sj24iuC4tue/JUaTuIwI8NxbvBFNO1i8mpYI6XGygGavRBtMn4c2ci
	 odtl+s3jw6UghHEzInLylGqZGhZ2VbOyoH3gfr1QMdrZ9/zNtm0M0wktNkqlUQiXsD
	 02v9Lo8b8jCAXwpStWnO9YGJ2ACc3e56kCkjpBqeVbHuDNLxG+HT2J5WjfTj1ao/+G
	 45O8zC424addQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DF2040EBD;
	Wed,  8 Apr 2026 13:12:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D87CE2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C665D608A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4FWj8z8s6IvI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD38960856
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD38960856
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD38960856
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:59 +0000 (UTC)
X-CSE-ConnectionGUID: rT4vAhQUS0WcGLGldfA28g==
X-CSE-MsgGUID: wxS9RzTqSSqxXqchxcfy9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087230"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087230"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:00 -0700
X-CSE-ConnectionGUID: rUHFCMYtRA2GMS7NnUPfyA==
X-CSE-MsgGUID: 50q468FFT7aSpIcd5UV7jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228714949"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:11:59 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Wed,  8 Apr 2026 15:11:50 +0200
Message-ID: <20260408131154.2661818-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653920; x=1807189920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Gpm78H9t2C6etiRw2hqX9OI9lfPgYaJTQ33kuwqqOU=;
 b=HigbuAdBkW4Vv6v7C600E1vMlYMLodfhRfIyj1rKP8tmIa1T0fu8Snyy
 iP3v5JTeOlK2eiljFkdkaAEJz6wulCi6qWDePEvbDU88X9yge7O7MMmH/
 TL6nrig0W0HiYn1j62g1Bx0G2r7BNc64jFAw9EmMVOHVeOjxrRhfLnfCi
 TZyltFRUAgc512jfCH9RxJe463PMYAld+rZ8e5zeQ8FCa0TbDCsZxMg3R
 2zz4F/mq5aw/XmXyhV7dC/Moco/u+Hd3XMNPupTudRWRnSfpQlOJQK7EK
 5GXCEkD2m3Ahi0k7zsD8Y7K+MNHyx5HbusQY6VzBJeaIFDp6kdBF1VrMi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HigbuAdB
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/6] ixgbe: add bounds check
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
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 356E53BCA17
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
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
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
