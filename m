Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOdAIyRU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6793BCA0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74D1A608C5;
	Wed,  8 Apr 2026 13:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gLO1olnde8ht; Wed,  8 Apr 2026 13:12:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD3C3608DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653921;
	bh=qvuGwcCg0+d/p9CbAV+bQc43TGHJtD/eAWBX7DKslBE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CrFV3gzryXLhqp2jI98TOtOK1S4izpTqtgXUBfB5cZqdvFGV4TQJYaeinlsJXFms1
	 cuz26ZTd3eW65dVWNlt8XKDgi/dJB0DwS2BgmRUuQ6kkDobcVbZMxvFUjctJCkSB4n
	 ONixMPpWhjEtXxkpdmn7pbFiR/O73xq+j8+fV73CZG8TR+6zE/gS7Kii/3dgciGrqd
	 mcoHfcwZQ+3+Fp2an99XqqTpPAymcr24X/EwzVlbL94xxBUXlCDP2/aW/RbUK1gE8I
	 k15apL0kkMUMTJmAaya+ykGIlx5tWJPfWBjIJvyvHQRVSEadQO2KGFOMXXAb2K8WoV
	 7Te2L53IXlfHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD3C3608DA;
	Wed,  8 Apr 2026 13:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BBF941F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B870E60856
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OfqVbBPQ7WO9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:11:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 13F0D608A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13F0D608A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13F0D608A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:58 +0000 (UTC)
X-CSE-ConnectionGUID: ZwEN60XeQ+OLyGYENARkKg==
X-CSE-MsgGUID: uChYM58dRzCTHoRSlqXIWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087227"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087227"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:11:58 -0700
X-CSE-ConnectionGUID: UYU4/WfkRCy55u/s3o2AYw==
X-CSE-MsgGUID: pcGEyYDkTQuuRSYQcN+Hdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228714944"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:11:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:11:49 +0200
Message-ID: <20260408131154.2661818-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653918; x=1807189918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jqWWnbeGaAloNgo2/0T0yqS/cY0f70+KgebTL+VZ8HI=;
 b=WogBYzQVLLLRsLbLfWYRcPYJijap9mk3Z9KRQIyTOKlwihwBtEHOvLrx
 dIQsPe+dI29htdQnNT0CPfLHNlxnvf9hkCyFGsdNmMQxHkOy//UC4tCVZ
 zGNjidVv0i6XWtkxjZpZ9L98tAEXvkcXAJ+wm5yaFp+9X1CKSNxAyDYUS
 w7mgMFJ4aP5dRGr6IQvRRVie3iREdPzN0Osvq3KyGmtXSEiu83kqnPEVT
 XtrPfgJw1RNF+xnrcdcpoTE3/gr4QTdOsxNLK+uq1mAGOOGxjkf2/eXqk
 QE9TkZk+bpQEdh3y9YB+MD6gxt98IpdK/xalGE8RDpC8e7fxznF/nvnsn
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WogBYzQV
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/6] ixgbe: fix SWFW semaphore
 timeout for X550 family
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0A6793BCA0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

According to FW documentation, the most time-consuming FW operation is
Shadow RAM (SR) dump which takes up to 3.2 seconds.  For X550 family
devices the module-update FW command can take over 4.5 s.  The default
semaphore loop runs 200 iterations with a 5 ms sleep each, giving a
maximum wait of 1 s -- not "200 ms" as previously stated in error.
This is insufficient for X550 family FW update operations and causes
spurious EBUSY failures.

Extend the SW/FW semaphore timeout from 1 s to 5 s (1000 iterations x
5 ms) for all three X550 variants: ixgbe_mac_X550, ixgbe_mac_X550EM_x,
and ixgbe_mac_x550em_a.  All three share the same FW and exhibit the
same worst-case latency.  Use three explicit mac.type comparisons rather
than a range check so future MAC additions are not inadvertently
captured.

The timeout variable is set immediately before the loop so the intent
is clear, with an inline comment stating the resulting maximum delay.

Suggested-by: Soumen Karmakar <soumen.karmakar@intel.com>
Cc: stable@vger.kernel.org
Suggested-by: Marta Plantykow <marta.a.plantykow@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Squash with 0015 (X550EM extension); fix commit message ("200ms" was
   wrong, actual default is 1 s); replace >= / <= range check with three
   explicit mac.type == comparisons per Tony Nguyen.

 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index e67e2fe..a3c8f51 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -577,6 +577,15 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
 
 	swmask |= swi2c_mask;
 	fwmask |= swi2c_mask << 2;
+	/* Extend to 5 s (1000 x 5 ms) for X550 family; default is 1 s
+	 * (200 x 5 ms).  FW SR-dump takes up to 3.2 s; module-update up
+	 * to 4.5 s.
+	 */
+	if (hw->mac.type == ixgbe_mac_X550 ||
+	    hw->mac.type == ixgbe_mac_X550EM_x ||
+	    hw->mac.type == ixgbe_mac_x550em_a)
+		timeout = 1000;
+
 	for (i = 0; i < timeout; i++) {
 		/* SW NVM semaphore bit is used for access to all
 		 * SW_FW_SYNC bits (not just NVM)
-- 
2.52.0
