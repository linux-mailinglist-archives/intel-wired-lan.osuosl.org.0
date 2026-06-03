Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PVc1Ml+MIGrP4wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 22:19:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9375F63B143
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 22:19:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=0Ql8h1Qp;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C58F861B2D;
	Wed,  3 Jun 2026 20:19:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hWCgHYAyJ9Z4; Wed,  3 Jun 2026 20:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CECE661B2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780517978;
	bh=XisGwx7ddO2JtFlF0O3ER7Eo27YwV/qLmBA4b1V2er4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0Ql8h1Qpy0fLBnTnc3wFvsfjGAUqj2yg+QM/3nuGsaKj0FpGvWKDXvaU0JJS5VnPj
	 8LgnU65LMbn5dsDy2qUL1I91yiCtnGxfw7yP5BiH4MXfxabDSehbd7R4aa9M6ZmmkI
	 BiTdZuI9P2TxdUZOJgw+JypjlY/6vqtBwI9FqxIjgiSLHX+yxdSYDQSLkKu6ImDCWD
	 2aGJUHIKwK16J6BGL2duFViRuxTgOKHu5nBZnw3llQHWZJQt+1ooYS2t9SZ3fUmtt6
	 wl9FMRqZ81qixqpejMoMIP30D1EcofNbblS7bOUYdsuMVhgLzxs3F8g4FtfMWRbMZs
	 pdn9Zeh4pRyqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CECE661B2A;
	Wed,  3 Jun 2026 20:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C1FFF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 20:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2EED80F53
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 20:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CXqr_bKeBcND for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 20:19:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC66080F42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC66080F42
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC66080F42
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 20:19:36 +0000 (UTC)
X-CSE-ConnectionGUID: Ihv5KHGfTRGqEu4AXOdUuA==
X-CSE-MsgGUID: GcZUGklpTN+Iy1CNpXEIPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="106788664"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="106788664"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:19:36 -0700
X-CSE-ConnectionGUID: +l8Z0izkTRmSZtWEvthDNQ==
X-CSE-MsgGUID: vRYzbn++TeiWMHab/gxJtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="239857269"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:19:35 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 03 Jun 2026 13:18:37 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-jk-fix-e810-ll-interface-function-v2-1-426a745e78b2@intel.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/5WOQQ6CMBBFr2K6dgwtFKor72FYlDJIEYtpC2oId
 7dFFy51+TP/vT8zcWg1OnLYzMTipJ0eTAhsuyGqleaMoOuQCUtYnnAmoLtAox+AgibQ96CNR9t
 IhdCMRvlAA69lTTlntKgFCZ6bxUCsGyei7z0Y9KR8H9xYdah8XIjVVjs/2Of6zURX4I/hiQKFg
 lU8ZyKVLK2OsdTv1HCN8o9p/6sJlchklgjZFPhlKpdleQHaS7u3NwEAAA==
X-Change-ID: 20260528-jk-fix-e810-ll-interface-function-5dad155217d8
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Grzegorz Nitka <grzegorz.nitka@intel.com>, 
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Przemyslaw Korba <przemyslaw.korba@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mailer: b4 0.16-dev-ec8c0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9420;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=eEeL50tqTRzqezi8phDwVAk8Zbd++64crkZFGr4tzRo=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiyFHo+Gv+7RIXv23RKYWuvKapN9xCa1TbuofN5mnntee
 86f2L2qo5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgIk0tDAyfCtyfzMzo9LlwspJ
 7KvTHTZKJ78+Pvn7MYFjh5evNDq6MZrhNzvnESbfvNaCJiamO7Nu/24O0756snzB9d0pIQc1vkt
 +ZQQA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780517977; x=1812053977;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=eEeL50tqTRzqezi8phDwVAk8Zbd++64crkZFGr4tzRo=;
 b=FJHL5FoQmK7ZiCUopS9B34+oTEF6bnsXnBJrKMvqIJyFIDiHaxkdfOz4
 v/LDZ5jQyTq70ZywkLfN3JrgvWQTxNZ2WKVhATMNEQk7RuGQKDGuW0p8E
 Ty0CHiQ/nn3ui22o0F1rM0EKWuvG4RvOPo6JQyIM7O+tUg0SptXHFgjcq
 snWEYRdLJ67ojJmSjhgfjRAkKPn36W7w5sqvYyPQizRx8Oc6uWXMqntDa
 vhh3iOgDC30adl2peXv17Ury2+Xe5rcEvao/YZ9gaIEEtHYI85Gb/zlhC
 4LQPHVyThn2vHfTy0uE8MFDn7K+WQfkh9hLmBei1jJigoaexBQ4SPy6Yg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FJHL5FoQ
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix E810 low latency
 timestamp interrupt handling
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:email,msgid.link:url,osuosl.org:from_smtp,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9375F63B143

The driver has supported a low latency timestamp interface since commit
82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS").

This interface is triggered by calling ice_ptp_req_tx_single_tstamp(),
which is called by ice_ptp_ts_irq(), which in turn is called when the
driver gets an interrupt from hardware indicating that a timestamp is
available.

This function doesn't check if a timestamp request is already in progress,
and as a result could trash an existing outstanding requests when called.
It turns out that this is unlikely in practice due to a number of
circumstances that prevent most of the ways that could happen.

1. The ice_misc_intr_thread_fn() might trigger a software-generated
   interrupt with the PFINT_OICR_TSYN_TX flag. However, we don't enter the
   thread function since ice_ptp_ts_irq() always returns IRQ_HANDLED for
   E810 devices which support the low latency firmware interface.

2. The ice_ptp_maybe_trigger_tx_interrupt() function might trigger a
   software-generated interrupt if it detects waiting timetstamps. However
   it checks ptp.port.tx.has_ready_bitmap which is always false for E810,
   so never enters the code path.

However, it is still possible that another Tx timestamp request could
happen and complete and race with the firmware completing the outstanding
low latency timestamp request.

This doesn't happen often in practice because many applications only
trigger a single outstanding Tx timestamp at once. However, if the user
runs multiple copies of ptp4l or uses other userspace stack which does,
they might miss timestamps or get corrupted timestamp data.

To fix this, have the ice_ptp_req_tX_single_tstamp() function check and
only begin the operation if the ATQBAL_FLAGS_INTR_IN_PROGRESS flag was not
yet set. This prevents a new possible request from trashing an outstanding
request. Note that on completion of a request, the ice_ll_ts_intr()
function will initiate a request for the next outstanding timestamp, so no
timestamps will be lost.

Additionally, although the ice_ptp_tx_tstamps_pending() function doesn't
currently get called for E810 devices, it should still not return true for
devices which support the low latency interrupt. If for some reason code is
refactored and the miscellaneous thread function does execute, it should
not trigger a new software interrupt for devices using the low latency
interrupt interface. Add an explicit check to make this function always
return false when the device is operating in this mode.

Finally, convert the atqbal_flags to DECLARE_BITMAP and use test/set bit
functions. This helps in clarity as we can use test_and_set_bit and
test_and_clear_bit.

Fixes: 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
This was originally motivated by changes in our out-of-tree release where
the issue of a software-generated interrupt was causing significantly more
issues. After further investigation it seems that the upstream
implementation is more robust, preventing the thread function from running
for E810. However, there appears to be a small window where issues can crop
up if multiple outstanding timestamps are requested near concurrently. This
change is motivated at closing that gap and ensuring consistency of
timestamps returned through the low latency interface.

To trigger the issue you will need to issue multiple Tx timestamp requests
near but not quite simultaneously, and it may be quite a rare race
condition.
---
Changes in v2:
- Remove trailing comma on ATQBAL_FLAGS_NBITS
- Remove '?' from debug print in ice_ptp_req_tx_single_tstamp()
- Link to v1: https://patch.msgid.link/20260529-jk-fix-e810-ll-interface-function-v1-1-ec84a408af7e@intel.com
---
 drivers/net/ethernet/intel/ice/ice_type.h   |  8 ++++++--
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 24 +++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 12 ++++++------
 3 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1e82f4c40b32..18d8455c994a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -859,12 +859,16 @@ struct ice_mbx_data {
 #define ICE_PORTS_PER_QUAD	4
 #define ICE_GET_QUAD_NUM(port) ((port) / ICE_PORTS_PER_QUAD)
 
-#define ATQBAL_FLAGS_INTR_IN_PROGRESS	BIT(0)
+enum ice_atqbal_flags {
+	ATQBAL_FLAGS_INTR_IN_PROGRESS,
+
+	ATQBAL_FLAGS_NBITS /* must be last */
+};
 
 struct ice_e810_params {
 	/* The wait queue lock also protects the low latency interface */
 	wait_queue_head_t atqbal_wq;
-	unsigned int atqbal_flags;
+	DECLARE_BITMAP(atqbal_flags, ATQBAL_FLAGS_NBITS);
 };
 
 struct ice_eth56g_params {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 36df742c326c..a00fbce6337f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -382,6 +382,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 	struct ice_ptp_port *ptp_port;
 	unsigned long flags;
 	struct sk_buff *skb;
+	struct device *dev;
 	struct ice_pf *pf;
 
 	if (!tx->init)
@@ -389,6 +390,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
+	dev = ice_pf_to_dev(pf);
 	params = &pf->hw.ptp.phy.e810;
 
 	/* Drop packets which have waited for more than 2 seconds */
@@ -408,7 +410,13 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 
 	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
 
-	params->atqbal_flags |= ATQBAL_FLAGS_INTR_IN_PROGRESS;
+	if (test_and_set_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
+			     params->atqbal_flags)) {
+		dev_dbg(dev, "%s: low latency interrupt request already in progress\n",
+			__func__);
+		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+		return;
+	}
 
 	/* Write TS index to read to the PF register so the FW can read it */
 	wr32(&pf->hw, REG_LL_PROXY_H,
@@ -449,7 +457,8 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 
 	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
 
-	if (!(params->atqbal_flags & ATQBAL_FLAGS_INTR_IN_PROGRESS))
+	if (!test_and_clear_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
+				params->atqbal_flags))
 		dev_dbg(dev, "%s: low latency interrupt request not in progress?\n",
 			__func__);
 
@@ -459,8 +468,6 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 	reg_ll_high = rd32(&pf->hw, REG_LL_PROXY_H);
 
 	/* Wake up threads waiting on low latency interface */
-	params->atqbal_flags &= ~ATQBAL_FLAGS_INTR_IN_PROGRESS;
-
 	wake_up_locked(&params->atqbal_wq);
 
 	spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
@@ -2712,7 +2719,14 @@ bool ice_ptp_tx_tstamps_pending(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	int ret;
 
-	/* Check software indicator */
+	/* E810 devices with support for the low latency timestamp interrupt
+	 * have specialized handling for timestamps. They should not
+	 * re-schedule the miscellaneous interrupt.
+	 */
+	if (hw->mac_type == ICE_MAC_E810 &&
+	    hw->dev_caps.ts_dev_info.ts_ll_int_read)
+		return false;
+
 	switch (pf->ptp.tx_interrupt_mode) {
 	case ICE_PTP_TX_INTERRUPT_NONE:
 		return false;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2c18e16fe053..02d4cc942c8d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4521,8 +4521,8 @@ ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 
 	/* Wait for any pending in-progress low latency interrupt */
 	err = wait_event_interruptible_locked_irq(params->atqbal_wq,
-						  !(params->atqbal_flags &
-						    ATQBAL_FLAGS_INTR_IN_PROGRESS));
+						  !test_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
+							    params->atqbal_flags));
 	if (err) {
 		spin_unlock_irq(&params->atqbal_wq.lock);
 		return err;
@@ -4754,8 +4754,8 @@ static int ice_ptp_prep_phy_adj_ll_e810(struct ice_hw *hw, s32 adj)
 
 	/* Wait for any pending in-progress low latency interrupt */
 	err = wait_event_interruptible_locked_irq(params->atqbal_wq,
-						  !(params->atqbal_flags &
-						    ATQBAL_FLAGS_INTR_IN_PROGRESS));
+						  !test_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
+							    params->atqbal_flags));
 	if (err) {
 		spin_unlock_irq(&params->atqbal_wq.lock);
 		return err;
@@ -4846,8 +4846,8 @@ static int ice_ptp_prep_phy_incval_ll_e810(struct ice_hw *hw, u64 incval)
 
 	/* Wait for any pending in-progress low latency interrupt */
 	err = wait_event_interruptible_locked_irq(params->atqbal_wq,
-						  !(params->atqbal_flags &
-						    ATQBAL_FLAGS_INTR_IN_PROGRESS));
+						  !test_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
+							    params->atqbal_flags));
 	if (err) {
 		spin_unlock_irq(&params->atqbal_wq.lock);
 		return err;

---
base-commit: 2412591cfe66e681374c5265e691695cd913d099
change-id: 20260528-jk-fix-e810-ll-interface-function-5dad155217d8

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

