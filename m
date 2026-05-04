Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGP4GkSs+GnHxgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B280C4BF55C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4434382048;
	Mon,  4 May 2026 14:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ym4hdmFJo2cW; Mon,  4 May 2026 14:25:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5C1381D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777904701;
	bh=4id/lOwh7NwuwvlTVWlbNddlFuJkU03x6d3smL9Ujwk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=icpEWYCu8HOTqaKTP0xQ/mHBJ/LSW/lLqFf+af4Pt8xPidu4OdU+L6WEfN2YwP9fy
	 fUUCmLs4P/BuqhB/clN0giKDdsMVf9ysXiQrKyjfhdMLZG7ZHFKDEX+jjvlTP5H+x7
	 fyFJpEKVjrqBWaeIp++ugz2PBi5HYjpjHbWY0ul/tQH2PdDbfxcXhgAK/2XjxIY1sn
	 08RtqaihgnZFYApLbSjKJkbNU4uWZ0r/FPjnYYC3RuA96X7F3vk2u/vn0OyEZrUiTI
	 SOFm8SYK7h8Ypok1MahnpUfcAkNNl7BYOm+xrwEznYmUxew4zXJT57BEXxeCFEN7SE
	 QL+M/jKIiEzJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5C1381D4F;
	Mon,  4 May 2026 14:25:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 01923204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAD8940CED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LKmTIjRuppPI for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:24:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 25970408D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25970408D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 25970408D7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:58 +0000 (UTC)
X-CSE-ConnectionGUID: ghRfFNHXQxa58s6GkQM6cg==
X-CSE-MsgGUID: Hd0dBJg4RS6yLkK+AmjrGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78691612"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78691612"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:24:58 -0700
X-CSE-ConnectionGUID: CCyCOAddQJyrHO1XXk2bxA==
X-CSE-MsgGUID: qH0jbBvtTtu1aOMlkWlc0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230935405"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 04 May 2026 07:24:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon,  4 May 2026 16:24:49 +0200
Message-ID: <20260504142451.4161845-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
References: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777904698; x=1809440698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iMyBM89b2seTFG8wKFYplgNuifzMOqRBwqYX3WhqWOE=;
 b=k0w0oA92KuZjPFz/NDhcygtx82FnZo3v89TqPUhOtuddlZ60dvOuc19p
 MEpFMhOIUDAKqDNqv0Fl78ty+nzb57LmcOiwcrdNKTgnOcsfFBjEvOj0N
 B3Bqh2kNjhsH/xy6P09FhhS0/AbWZOjiGtkcXTmzdCw0cPqKGnve6PXE8
 RINFcbbK9G/hjXgWLBwPKmt7HNADEpEgNSpC2obCpn0OSdIbHsq6XifAA
 qE9cR89+QtLqzAbdzhKVjtbXvBk1Uhspmv8fvk/m+PxC+FmrQQWS48bOg
 0fh+4teu/+k2Kk5CFA6tmSYTU81cuhM5szyn19uKoxS8dIqOAgHUeBNI4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k0w0oA92
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: add correct handling
 of SMA/u.FL states
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
X-Rspamd-Queue-Id: B280C4BF55C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

The ICE_SMA2_UFL2_RX_DIS bit name is wrong: the bit is active high
(setting it *enables* RX for u.FL2 / SMA2), not active low.  Rename
it to ICE_SMA2_UFL2_RX_EN and invert the use sites in ice_dpll.c so
that enabling the u.FL2 pin clears the bit (as it used to do) and
disabling sets it.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 6 +++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 62f75701d..7e8bb63 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -672,7 +672,7 @@ ice_dpll_sw_pins_update(struct ice_pf *pf)
 		p->active = false;
 
 	p = &d->ufl[ICE_DPLL_PIN_SW_2_IDX];
-	p->active = (data & ICE_SMA2_DIR_EN) && !(data & ICE_SMA2_UFL2_RX_DIS);
+	p->active = (data & ICE_SMA2_DIR_EN) && !(data & ICE_SMA2_UFL2_RX_EN);
 	d->sma_data = data;
 
 	return 0;
@@ -1264,10 +1264,10 @@ ice_dpll_ufl_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
 	case ICE_DPLL_PIN_SW_2_IDX:
 		if (state == DPLL_PIN_STATE_SELECTABLE) {
 			data |= ICE_SMA2_DIR_EN;
-			data &= ~ICE_SMA2_UFL2_RX_DIS;
+			data &= ~ICE_SMA2_UFL2_RX_EN;
 			enable = true;
 		} else if (state == DPLL_PIN_STATE_DISCONNECTED) {
-			data |= ICE_SMA2_UFL2_RX_DIS;
+			data |= ICE_SMA2_UFL2_RX_EN;
 			enable = false;
 		} else {
 			goto unlock;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index c1aa408..278d757 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -655,12 +655,12 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 /* SMA controller pin control */
 #define ICE_SMA1_DIR_EN		BIT(4)
 #define ICE_SMA1_TX_EN		BIT(5)
-#define ICE_SMA2_UFL2_RX_DIS	BIT(3)
+#define ICE_SMA2_UFL2_RX_EN	BIT(3)
 #define ICE_SMA2_DIR_EN		BIT(6)
 #define ICE_SMA2_TX_EN		BIT(7)
 
 #define ICE_SMA1_MASK		(ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)
-#define ICE_SMA2_MASK		(ICE_SMA2_UFL2_RX_DIS | ICE_SMA2_DIR_EN | \
+#define ICE_SMA2_MASK		(ICE_SMA2_UFL2_RX_EN | ICE_SMA2_DIR_EN | \
 				 ICE_SMA2_TX_EN)
 #define ICE_SMA2_INACTIVE_MASK	(ICE_SMA2_DIR_EN | ICE_SMA2_TX_EN)
 #define ICE_ALL_SMA_MASK	(ICE_SMA1_MASK | ICE_SMA2_MASK)
-- 
2.52.0

