Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE786434E2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E9CA4053F;
	Mon,  5 Dec 2022 19:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E9CA4053F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670270014;
	bh=u4zsA+xM0zHP9x9R3i6S/lWvnxePVYNocdp5yH17obw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HAKgwH8hVtTjddxfe6LCjm6LtOTpdq9qmOQ8kvRLf4eydwRQJ+Zcy79C6xd46x8lX
	 +mDdCc8grVjKXruA1mkSmyyHgfyQjTPLfE8fER/5Au3B5kRe0eFT5wvCWJ7tXSy40/
	 Uj+vF3WizJ1f8AL9s9AOki5xhgev48+rQdzN6f5wM2hWWR8VcEZNJlmLcu+0bK1AuX
	 Gbpt4+/kq4+JsJnPOS9jXZwrnZf0OMb16riAixEnqLBYRl6naIGfFFLH3no+UpjtMC
	 C8LWijftEU7tEW9uDA+hrMONGQ+DHWpNW6sooS2MCZFhNL4lj8++gAwW6djcmWinZX
	 8KmZ89iLpXFfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ib1-odaJrLru; Mon,  5 Dec 2022 19:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 724BA40292;
	Mon,  5 Dec 2022 19:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 724BA40292
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CAE21BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9A22818C2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A22818C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ax_N6AuqomZ0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8E5C818CA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8E5C818CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592379"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592379"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379305"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379305"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:46 -0800
Message-Id: <20221205195253.2475492-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269984; x=1701805984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zTBSvG62LTYTcX8IuHmCtwIB9VD4pfs/WI7PfFK0EQ0=;
 b=QMs7uAdZw7siWEEP4VmiB0EBEDRYTVHLF0o6pNULk1e+3/smgpVrdZx7
 5o/n5EcXoG66e40yMxqCaCsIv3sLv/LErDWlteZLBqiY9sx2UKtmiV6f6
 tBcEfL56EvpT84iM8Sc8Tc+89wa+JDXkoKwEvQmuPAW7NRSs+AqW9oXev
 9CIj2Yu3u1Q/eSjSUB3WezHrdI5tVZzcP/WD53YWjfKZ6Eg/4DqLR3Oal
 1aHpAvxWuBrC3daEkKMvO1zjbmSOGj35SMpogD63rM9TWGuYMLEqzt+Gk
 9UcJkB6otocRiFlBc4iSLOHKhyiAJSbr6dCgr2ZIzHGWKlWEyz2ayD3Hx
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QMs7uAdZ
Subject: [Intel-wired-lan] [PATCH net-next v3 08/15] ice: synchronize the
 misc IRQ when tearing down Tx tracker
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit 1229b33973c7 ("ice: Add low latency Tx timestamp read") the
ice driver has used a threaded IRQ for handling Tx timestamps. This change
did not add a call to synchronize_irq during ice_ptp_release_tx_tracker.
Thus it is possible that an interrupt could occur just as the tracker is
being removed. This could lead to a use-after-free of the Tx tracker
structure data.

Fix this by calling sychronize_irq in ice_ptp_release_tx_tracker after
we've cleared the init flag. In addition, make sure that we re-check the
init flag at the end of ice_ptp_tx_tstamp before we exit ensuring that we
will stop polling for new timestamps once the tracker de-initialization has
begun.

Refactor the ts_handled variable into "more_timestamps" so that we can
simply directly assign this boolean instead of relying on an initialized
value of true. This makes the new combined check easier to read.

With this change, the ice_ptp_release_tx_tracker function will now wait for
the threaded interrupt to complete if it was executing while the init flag
was cleared.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
New patch since v2:
* This was pointed out by me as I reviewed comments from Leon at
  https://lore.kernel.org/netdev/ba949af0-7de6-ab12-6501-46a5af06001f@intel.com/

 drivers/net/ethernet/intel/ice/ice_ptp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 30061598912b..0282ccc55819 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -656,7 +656,7 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
-	bool ts_handled = true;
+	bool more_timestamps;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
@@ -761,11 +761,10 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	 * poll for remaining timestamps.
 	 */
 	spin_lock(&tx->lock);
-	if (!bitmap_empty(tx->in_use, tx->len))
-		ts_handled = false;
+	more_timestamps = tx->init && !bitmap_empty(tx->in_use, tx->len);
 	spin_unlock(&tx->lock);
 
-	return ts_handled;
+	return !more_timestamps;
 }
 
 /**
@@ -836,6 +835,9 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
 	tx->init = 0;
 
+	/* wait for potentially outstanding interrupt to complete */
+	synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
+
 	ice_ptp_flush_tx_tracker(pf, tx);
 
 	kfree(tx->tstamps);
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
