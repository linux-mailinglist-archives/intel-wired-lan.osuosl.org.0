Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Cq8NKmg32kEWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C856405471
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 982CD85475;
	Wed, 15 Apr 2026 14:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kcx8-FAldI_q; Wed, 15 Apr 2026 14:28:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1819385478
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776263333;
	bh=pxj7Qwt60KGAtfFfKHYnQEoASeCXoLziv0VtzU/+0sc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l2dqwf0OGo8wd8auUZr2x2/Z6XlmYbIG4Ol4eapM6h0gyalpL3Nc9CFiQWna/wL/1
	 gMPLWvJnr4pJ39rFx865t+GCJA5RM+tqR9FPK9O39nQrnOidFpKIsLSligMKSuvE0Y
	 I3QEK9V7t/rPFVWNi1V7nzVYAU4CDlOlwN0gYViGAMhunkn0j70zEnPUrKyjqdMPOm
	 CFbyleRVEBmCf+KJKotBUdirASDbezoZiRYy9rHbLbe9i+sDuSyg80mYUBKH5ZxuA2
	 3qfFUqNZpK8gbMcH0HC1eG+Mgi9cJ3qTpMUpRGcejb0LwP65zgiWH2y4tQ5gMi6iB6
	 so+pejnFgHX5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1819385478;
	Wed, 15 Apr 2026 14:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 111AE375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F303285475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lSK_9kYaxotX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 14:28:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 00A7085476
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00A7085476
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00A7085476
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:48 +0000 (UTC)
X-CSE-ConnectionGUID: uFR6w5AiSY+JU3IxZ20FSQ==
X-CSE-MsgGUID: tM5Md4u1QMqGm+ua/YjVCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77423739"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77423739"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:28:48 -0700
X-CSE-ConnectionGUID: hEZbVS5VQyS9lDfZNZSLpQ==
X-CSE-MsgGUID: DCC3lyWYQqqoOGpiW8fkbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="234467859"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 15 Apr 2026 07:28:47 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed, 15 Apr 2026 16:28:38 +0200
Message-ID: <20260415142841.3222399-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776263329; x=1807799329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TGdgV50bxeF5VneOtp3k0+KNHoKWBcOE5NH18XEnokc=;
 b=CO4VJZbolJy7MxG9ZEF7JVdtMMn2HwA5kpUKXE8t7zUai+b3hFHaSn9E
 4kAc2k3lP09wysux5p6tb51WjlQdGTG6PS0aqB7ICYd+532HsOc8LaPtR
 jnr0AVOT4jb0wKdySIVsjy15cXV4vin/72jMXZ/AsfzYN0Zp4FRbIkmnD
 VHhWJWgR3M8DEw8eP+ZEepfiiHaVNqnGls/51RAF+N5DOyr5rCURhzixb
 vp7HqGb0oBsRXj9N+Lt/922YVXQVb/0ZY0kgiN8Ay5x4IUl1QwpKBFhOf
 OIFVxuT9SC05gkC+PMmoH0uK3vk4MBd/Ik/VX2sc55ejZ9KJu/BJGlflo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CO4VJZbo
Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/6] ixgbe: call
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2C856405471
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

Skip setup_fc() on backplane links: on 82599 backplane interfaces
setup_fc() resolves to prot_autoc_write() ->
ixgbe_reset_pipeline_82599() which toggles IXGBE_AUTOC_AN_RESTART.
Calling it unconditionally on link-up creates an infinite link-flap
loop because each AN-restart triggers another link-up event.  Guard
with a get_media_type() check and skip setup_fc() when the media type
is ixgbe_media_type_backplane; fc_enable() is still called.

Also handle the failure path: if setup_fc() returns an error its output
is invalid and calling fc_enable() on the unchanged hardware state would
repeat the exact MDD-triggering condition the fix is meant to prevent.
Skip fc_enable() in that case while still calling
ixgbe_set_rx_drop_en() which configures the independent RX-drop
behaviour.

Fixes: 93c52dd0033b ("ixgbe: Merge watchdog functionality into service task")
Suggested-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2 -> v3:
 - Skip setup_fc() for ixgbe_media_type_backplane: unconditional call on
   82599 backplane links triggers prot_autoc_write() ->
   ixgbe_reset_pipeline_82599() -> IXGBE_AUTOC_AN_RESTART, causing an
   infinite link-flap loop (Simon Horman).

v1 -> v2:
 - Add Fixes: tag; reroute to iwl-net; handle setup_fc() failure by
   skipping fc_enable() so stale FC state is never committed to hardware.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 13 +++++++++++++
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 210c7b9..fc3bae9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8029,6 +8029,18 @@ static void ixgbe_watchdog_update_link(struct ixgbe_adapter *adapter)
 		pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);
 
 	if (link_up && !((adapter->flags & IXGBE_FLAG_DCB_ENABLED) && pfc_en)) {
-		hw->mac.ops.fc_enable(hw);
+		/* Skip setup_fc() on backplane links: it resolves to
+		 * prot_autoc_write() -> ixgbe_reset_pipeline_82599() and
+		 * toggles IXGBE_AUTOC_AN_RESTART, causing infinite link-flap
+		 * on 82599 backplane interfaces.
+		 * If setup_fc() fails its output is invalid; skip fc_enable()
+		 * to avoid committing stale capability bits that trigger MDD.
+		 */
+		if (hw->mac.ops.setup_fc &&
+		    hw->mac.ops.get_media_type(hw) != ixgbe_media_type_backplane &&
+		    hw->mac.ops.setup_fc(hw))
+			e_warn(drv, "setup_fc failed, skipping fc_enable\n");
+		else
+			hw->mac.ops.fc_enable(hw);
 		ixgbe_set_rx_drop_en(adapter);
 	}
-- 
2.52.0
