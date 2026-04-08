Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI8OJCdU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E523BCA1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B507240EF1;
	Wed,  8 Apr 2026 13:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4rRkStU2nDCV; Wed,  8 Apr 2026 13:12:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3F1340ED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653923;
	bh=Tvxn+58WP/lxdddYqw/gfryGzIxe0VNXkiQOm16wh0s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KYnQLz7ZJY68SN+CbQkEuLG6RMYj3nMMdBZFhqEBUY4fmGqJi1zfV3xwGS+g8+qCQ
	 X4YAz/JsaRI7FIsp+jM96aiKc6ROxZ/w22res2LJgdHEyG/s7y82aXUyIOmcQ6Nk2u
	 BwvVn4TKgcxRGiPGBH/XGvrPtVsNDMU5PLQFkx6plZhdSrwseLDZAlvJ279tX8nDor
	 yZQuEnF9hpY7azMJOIser22mjTbxp0V4vpsUsDGsi2lRM1uXPDOecst1U0X+w8aiFQ
	 dWkLLghp3WrR3b46Y2LJFds0O9P6KAAECC0/xikzqpJr7uiBPZNf+x3N4c8TYJ1q/h
	 afYH4Xspn9XUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3F1340ED8;
	Wed,  8 Apr 2026 13:12:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22E981F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08D97608DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZxkQP9abXoE8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A07260856
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A07260856
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A07260856
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:01 +0000 (UTC)
X-CSE-ConnectionGUID: woe3AjrsQW+Y4nWwE4Qieg==
X-CSE-MsgGUID: pPZoIK4CRrKKLXEZgbxAxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087232"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087232"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:01 -0700
X-CSE-ConnectionGUID: PE5/I+TxTr6jA8UzHR0T5A==
X-CSE-MsgGUID: 1fLCnSvsQXiQYuldeXuDaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228714957"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:12:00 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:11:51 +0200
Message-ID: <20260408131154.2661818-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653921; x=1807189921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yQAXDpgBHYrZWGNoOaXRbwm61fkcniHXP8DOyif6ekw=;
 b=lHjJ4RLwdqVFWMI0d4nX/fpjtLGIIZ9N8BEzfE55kZf3aatPBgqsiogU
 ij/P1ps02l/P7ApHXGrUhPXMR5fyLndgp5svRiTle3Egh+J67QPfbBJnq
 esqtoMQMTCNQNXhJJkNVnabpL1XMxzn8ynL751wMeviub84NvXIgSut1g
 4OorICsq31LzJemJnWTXqpq59aQK0v9Hc+YhDLcBSP9Q7j35pKNTfv2ft
 zz8tjipT4xMPdR8LNFwgnfCKY0GLHQ0PgYsiqujfxe3+Iz0zNUKwboBDT
 vt9COB5vhGOafGJGRKsod/hkul6uLzcjXPzjjuhTCajVfM3yrqsiJbISc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lHjJ4RLw
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ixgbe: call
 ixgbe_setup_fc() before fc_enable() after NVM update
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 55E523BCA1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

During an NVM update the PHY reset clears the Technology Ability Field
(IEEE 802.3 clause 37 register 7.10) back to hardware defaults.  When
the driver subsequently calls only hw->mac.ops.fc_enable() the SRRCTL
register is recalculated from stale autonegotiated capability bits,
which the MDD (Malicious Driver Detect) logic treats as an invalid
change and halts traffic on the PF.

Fix by calling ixgbe_setup_fc() immediately before fc_enable() in
ixgbe_watchdog_update_link() so that flow-control autoneg and the PHY
registers are re-programmed in the correct order after any reset.

Handle the failure path explicitly: if setup_fc() returns an error its
output is invalid and calling fc_enable() on the unchanged hardware
state would repeat the exact MDD-triggering condition the fix is meant
to prevent.  Skip fc_enable() in that case while still calling
ixgbe_set_rx_drop_en() which configures the independent RX-drop
behaviour.

Fixes: 93c52dd0033b ("ixgbe: Merge watchdog functionality into service task")
Suggested-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Add Fixes: tag; reroute to iwl-net; handle setup_fc() failure by
   skipping fc_enable() so stale FC state is never committed to hardware.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 210c7b9..fc3bae9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8029,6 +8029,13 @@ static void ixgbe_watchdog_update_link(struct ixgbe_adapter *adapter)
 		pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);
 
 	if (link_up && !((adapter->flags & IXGBE_FLAG_DCB_ENABLED) && pfc_en)) {
-		hw->mac.ops.fc_enable(hw);
+		/* Re-program flow-control autoneg before applying the result.
+		 * If setup_fc() fails its output is invalid; skip fc_enable()
+		 * to avoid committing stale capability bits that trigger MDD.
+		 */
+		if (hw->mac.ops.setup_fc && hw->mac.ops.setup_fc(hw))
+			e_warn(drv, "setup_fc failed, skipping fc_enable\n");
+		else
+			hw->mac.ops.fc_enable(hw);
 		ixgbe_set_rx_drop_en(adapter);
 	}
-- 
2.52.0
