Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EPkJ0FU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BD43BCA71
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86B6440F1F;
	Wed,  8 Apr 2026 13:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lpwYOLe3MD66; Wed,  8 Apr 2026 13:12:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E0C040EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653949;
	bh=Tk98gFi1G4Cc60/OkMoHNdw7FjA9PdLmLGQkbABHMfU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AwHW+TLMjGKtrs8gL6RvWleFjtjwl/jQzfxnkQ7SSWTwRsS4VM6e8MY/59KpF4vVH
	 chOI9CVgmmuINDE55MyN0k8yKIC+y0g9muWt/TIcd8Jy5WAkLOW5elstbR0hKnf8EZ
	 68yoKDDshYCcdBm3mziaMD6qc8+tA/nWiLOeiT/4FIgt4XIZNt390cKUj9PUODXJ7y
	 tInZpiaiR/X5w6bAzucPFfpzU8x8bxSBNZ7H4iHpVK3ypStTAa3S82+mX/9iR/HkGp
	 6BcptK1ZyfQ0Elss9tql8g+BSy01BaBsR/mthT4Z8b/SDMmpO90T26cIM/UDaTNkLf
	 b//j1sA9DbCMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E0C040EC4;
	Wed,  8 Apr 2026 13:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C90D2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EF6D40F1F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EmUfROixAEHR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3335940ECD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3335940ECD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3335940ECD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:26 +0000 (UTC)
X-CSE-ConnectionGUID: W6Xc9Un5SxqVAlfjHPeHsw==
X-CSE-MsgGUID: MgsjarmIQmOB5/HodFeOQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087283"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087283"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:26 -0700
X-CSE-ConnectionGUID: +B6SeTRFSZyabaTTLmNT2g==
X-CSE-MsgGUID: rX3SN5HwTG+tC10sUiu4Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228715100"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:12:25 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:12:13 +0200
Message-ID: <20260408131216.2662245-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653946; x=1807189946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kqq495al0fixHxITQwzw8FJCfkmaTNXmJ8mDt7IdcGo=;
 b=OfQoJFkFzV+tvpr3sX1CUS3DTFB67Ys8v/aLlr2pvBBejcQsgFBtCtuq
 JCXLDqFVn9zGjbJHfxBqonYOSVcFSaX6rnhXNfrsky7ywvciqj2p2JVwr
 L2ARAilihZVHl6grG94Y6WSXCjgqP3U2pd0yDDuMaGMis0Obp3x4pAccn
 Qx4XKsj19VpvlWNCGfedZAt3b9CQp5zXdShOkPhKGE0r89lHZO9c+a25A
 I2p3rX5X/sgDREcQAZZyzJIYYHLxkGcfLi3SScYsJEkKxGK+t7NRTUNY6
 jPbU9mBQV/GVhEnrWFGSi+HefXUxjoYnb95RzURuEeqqMs3VBcKE9hWtw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OfQoJFkF
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ixgbe: remove
 ixgbe_ping_all_vfs() from link state change handlers
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 63BD43BCA71
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When multiple VFs are brought up simultaneously, a VF can receive a
CTS (Clear To Send) mailbox message instead of the expected RESET |
(N)ACK response, because the watchdog fires a gratuitous ping right as
the VF mailbox transaction is in progress.

Remove the ixgbe_ping_all_vfs() call from both ixgbe_watchdog_link_is_up()
and ixgbe_watchdog_link_is_down().  Both paths contain an identical call
with the same race window during VF initialization: link-state changes
(up or down) can arrive while VFs are mid-initialization, and the
gratuitous ping from either direction collides with the VF mailbox state
machine for the same reason.

Link-state changes are already communicated to VFs through the normal
mailbox protocol; these extra pings are redundant on both paths.

Suggested-by: Sebastian Basierski <sebastianx.basierski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Extend fix to also remove ixgbe_ping_all_vfs() from
   ixgbe_watchdog_link_is_down(), which carries the same race window;
   justifies the asymmetry by eliminating it.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1885fe8..7c3d821 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8151,9 +8151,6 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 
 	/* update the default user priority for VFs */
 	ixgbe_update_default_up(adapter);
-
-	/* ping all the active vfs to let them know link has changed */
-	ixgbe_ping_all_vfs(adapter);
 }
 
 /**
@@ -8183,8 +8180,5 @@ static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
 	e_info(drv, "NIC Link is Down\n");
 	netif_carrier_off(netdev);
-
-	/* ping all the active vfs to let them know link has changed */
-	ixgbe_ping_all_vfs(adapter);
 }
 
 static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
-- 
2.52.0
