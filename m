Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id en6FKyk0TGrHhgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 01:03:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A84716371
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 01:03:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=smQGA4Rm;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48E3560712;
	Mon,  6 Jul 2026 23:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MGUrIYIYMr9Z; Mon,  6 Jul 2026 23:03:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56F4A6070D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783378981;
	bh=+HSedoNSuZgK1fMDsbrZb8M0FuSbKX1zUFCdlVAi0Rc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=smQGA4Rm4htUajDH+y5WjGSg0hV6cBQq/R2z5b2nDcSVpqtmO1vuCBUk4ob5rTkhh
	 R79lC+oPRPGjI2zxo20eElg2z8+M3SqNXLfgBb22Hmp9SmOO3icAd2DNRPiNzKs/2q
	 rpxtT8YH3O5jCko9HvyJVXmHcI78Jxh7GRkle6D8hrh/Ps92yTnXflEgQGt0Hl45cy
	 lOx33dXbbprBdMZ2w02eUcLRDtpvR2pTjwxEjRAZ0EcT9+G7qy6vTwqx49Ghxtlfxg
	 DwMgQMHf0nHh/uAsN56BFsBvCI6v65VXzHA5ifQ54gfuOOiPcGAmh94ugACkvyAKhh
	 eH70TzbI4aJgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56F4A6070D;
	Mon,  6 Jul 2026 23:03:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F1E933A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 23:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6582D40025
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 23:02:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0PtE1i2iABwX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 23:02:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6517240065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6517240065
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6517240065
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 23:02:58 +0000 (UTC)
X-CSE-ConnectionGUID: C68UWWgESBKVTkBPL0VGfg==
X-CSE-MsgGUID: RGQBFpiWRFaDooOIivR/jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="84071810"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="84071810"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 16:02:58 -0700
X-CSE-ConnectionGUID: mH2ClXUrSmOPLxhq7xWp6g==
X-CSE-MsgGUID: MTAGTHptSpqW8zc7/PQO/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="254482158"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 06 Jul 2026 16:02:55 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4437233BC1;
 Tue,  7 Jul 2026 00:02:53 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Tue,  7 Jul 2026 00:43:31 +0200
Message-ID: <20260706224346.22546-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
References: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783378979; x=1814914979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I5oeYp8CKiLbEczOggXCh6v8Knf53nCclMdUkaK2Y1Y=;
 b=m+9rVMQYWa+iGt1BQVHnGRkOM/rxgzJSCCpf/lB6teDtqwRxabEVGjAO
 mbZhOAhvXNMMbqha1QcdY2s8wxplMbjvW03ZgFMW9qGNQDbSFXHgab/KI
 KfgZqyn9cYlcu/kWAdw0TzBYoGnt+2DwJKQeVx4a5P41ekHMVkbkH/ehh
 lM/gyrZbqiS7R4jgRyWDvzSsi6zxy95mDFNXg1tJDXeIqU0k5EaDSyrFU
 VN68+Lq7qB9O+aRDIP7ZSpncjZjbMNc6sKTeLVv4XAp/bsKSQCzbtWS1q
 /IPGY/IilmPiejiSU/4yrpoGfwYli+z+QPR3t3d/gBZc453ym9u+K2w8W
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m+9rVMQY
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: fix stats array
 overflow via proper realloc
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[atlassian.net:url,sashiko.dev:url];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E2A84716371

Integrate ice_vsi_alloc_stat_arrays() with realloc variant.

Instead of keeping two functions for stat arrays allocation, change the
ice_vsi_realloc_stat_arrays() to handle initial condition (no vsi_stat
entry) and replace ice_vsi_alloc_stat_arrays() by the more generic
ice_vsi_realloc_stat_arrays().

Note that VSIs of ICE_VSI_CHNL type are ignored in realloc variant as they
were in the replaced ice_vsi_alloc_stat_arrays().

This is a fix for stats array overflow that occurs when VF is given more
queues (an operation that will be more frequent, and by bigger increase,
when we will merge my "XLVF" series).

Splat for increasing number of queues thanks to Michal Schmidt:
KASAN detects the bug:
 ==================================================================
 BUG: KASAN: slab-out-of-bounds in ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
 Read of size 8 at addr ffff88810affea60 by task kworker/u131:7/221

 CPU: 24 UID: 0 PID: 221 Comm: kworker/u131:7 Not tainted 7.1.0-rc1+ #1 PREEMPT(lazy)
 ...
 Workqueue: ice ice_service_task [ice]
 Call Trace:
  <TASK>
  ...
  kasan_report+0xd7/0x120
  ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
  ice_vsi_cfg_def+0x12e2/0x2060 [ice]
  ice_vsi_cfg+0xb5/0x3c0 [ice]
  ice_reset_vf+0x858/0xf80 [ice]
  ice_vc_request_qs_msg+0x1da/0x290 [ice]
  ice_vc_process_vf_msg+0xb15/0x1430 [ice]
  __ice_clean_ctrlq+0x70d/0x9d0 [ice]
  ice_service_task+0x840/0xf20 [ice]
  process_one_work+0x690/0xff0
  worker_thread+0x4d9/0xd20
  kthread+0x322/0x410
  ret_from_fork+0x332/0x660
  ret_from_fork_asm+0x1a/0x30
  </TASK>

 Allocated by task 2439:
  kasan_save_stack+0x1c/0x40
  kasan_save_track+0x10/0x30
  __kasan_kmalloc+0x96/0xb0
  __kmalloc_noprof+0x1d8/0x580
  ice_vsi_cfg_def+0x115c/0x2060 [ice]
  ice_vsi_cfg+0xb5/0x3c0 [ice]
  ice_vsi_setup+0x180/0x320 [ice]
  ice_start_vfs+0x1f3/0x590 [ice]
  ice_ena_vfs+0x66d/0x798 [ice]
  ice_sriov_configure.cold+0xe4/0x121 [ice]
  sriov_numvfs_store+0x279/0x480
  kernfs_fop_write_iter+0x331/0x4f0
  vfs_write+0x4c4/0xe40
  ksys_write+0x10c/0x240
  do_syscall_64+0xd9/0x650
  entry_SYSCALL_64_after_hwframe+0x76/0x7e

 The buggy address belongs to the object at ffff88810affea40
                which belongs to the cache kmalloc-32 of size 32
 The buggy address is located 0 bytes to the right of
                allocated 32-byte region [ffff88810affea40, ffff88810affea60)

Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
Closes: https://redhat.atlassian.net/browse/RHEL-164321
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
This is an alternative to the fix [1] by Michal Schmidt, which were
blocked due to AI feedback. My fix was already developed before Michal's,
just not public back then. We have agreed to go on with my version.

[1] https://lore.kernel.org/netdev/20260520183501.3360810-3-anthony.l.nguyen@intel.com

v1:
https://lore.kernel.org/intel-wired-lan/20260701104141.9740-2-przemyslaw.kitszel@intel.com

v2: Sashiko:
 * defer pf->vsi_stats[vsi->idx] to be done only after successful Tx and Rx stats arrays
      allocation - this avoids "half initialized" state processing in ice_vsi_free_stats().
    The above was reported by both opus-4.6 and gemini-3.1-pro. All other errors reported by
    just gemini were a mix between false-positives and too-cornercase'y. Gemini report for v1:
    https://sashiko.dev/#/patchset/20260701104141.9740-1-przemyslaw.kitszel%40intel.com
 * store also array lengths in separate variable for better tracking and proper freeing.
---
 drivers/net/ethernet/intel/ice/ice.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_lib.c | 80 ++++++++----------------
 2 files changed, 29 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f72bb1aa4067..b63b59f2d203 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -328,6 +328,8 @@ enum ice_vsi_state {
 struct ice_vsi_stats {
 	struct ice_ring_stats **tx_ring_stats;  /* Tx ring stats array */
 	struct ice_ring_stats **rx_ring_stats;  /* Rx ring stats array */
+	u16 tx_ring_stats_len;
+	u16 rx_ring_stats_len;
 };
 
 /* struct that defines a VSI, associated with a dev */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index e48ee5940f17..c71849119d04 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -338,7 +338,6 @@ static void ice_vsi_free_stats(struct ice_vsi *vsi)
 {
 	struct ice_vsi_stats *vsi_stat;
 	struct ice_pf *pf = vsi->back;
-	int i;
 
 	if (vsi->type == ICE_VSI_CHNL)
 		return;
@@ -349,14 +348,14 @@ static void ice_vsi_free_stats(struct ice_vsi *vsi)
 	if (!vsi_stat)
 		return;
 
-	ice_for_each_alloc_txq(vsi, i) {
+	for (int i = 0; i < vsi_stat->tx_ring_stats_len; i++) {
 		if (vsi_stat->tx_ring_stats[i]) {
 			kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
 			WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
 		}
 	}
 
-	ice_for_each_alloc_rxq(vsi, i) {
+	for (int i = 0; i < vsi_stat->rx_ring_stats_len; i++) {
 		if (vsi_stat->rx_ring_stats[i]) {
 			kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
 			WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
@@ -513,51 +512,6 @@ static irqreturn_t ice_msix_clean_rings(int __always_unused irq, void *data)
 	return IRQ_HANDLED;
 }
 
-/**
- * ice_vsi_alloc_stat_arrays - Allocate statistics arrays
- * @vsi: VSI pointer
- */
-static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
-{
-	struct ice_vsi_stats *vsi_stat;
-	struct ice_pf *pf = vsi->back;
-
-	if (vsi->type == ICE_VSI_CHNL)
-		return 0;
-	if (!pf->vsi_stats)
-		return -ENOENT;
-
-	if (pf->vsi_stats[vsi->idx])
-	/* realloc will happen in rebuild path */
-		return 0;
-
-	vsi_stat = kzalloc_obj(*vsi_stat);
-	if (!vsi_stat)
-		return -ENOMEM;
-
-	vsi_stat->tx_ring_stats =
-		kzalloc_objs(*vsi_stat->tx_ring_stats, vsi->alloc_txq);
-	if (!vsi_stat->tx_ring_stats)
-		goto err_alloc_tx;
-
-	vsi_stat->rx_ring_stats =
-		kzalloc_objs(*vsi_stat->rx_ring_stats, vsi->alloc_rxq);
-	if (!vsi_stat->rx_ring_stats)
-		goto err_alloc_rx;
-
-	pf->vsi_stats[vsi->idx] = vsi_stat;
-
-	return 0;
-
-err_alloc_rx:
-	kfree(vsi_stat->rx_ring_stats);
-err_alloc_tx:
-	kfree(vsi_stat->tx_ring_stats);
-	kfree(vsi_stat);
-	pf->vsi_stats[vsi->idx] = NULL;
-	return -ENOMEM;
-}
-
 /**
  * ice_vsi_alloc_def - set default values for already allocated VSI
  * @vsi: ptr to VSI
@@ -2316,11 +2270,19 @@ static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 	struct ice_ring_stats **rx_ring_stats;
 	struct ice_vsi_stats *vsi_stat;
 	struct ice_pf *pf = vsi->back;
-	u16 prev_txq = vsi->alloc_txq;
-	u16 prev_rxq = vsi->alloc_rxq;
+	u16 prev_txq, prev_rxq;
+
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
 
 	vsi_stat = pf->vsi_stats[vsi->idx];
+	if (!vsi_stat) {
+		vsi_stat = kzalloc_obj(*vsi_stat);
+		if (!vsi_stat)
+			return -ENOMEM;
+	}
 
+	prev_txq = vsi_stat->tx_ring_stats_len;
 	if (req_txq < prev_txq) {
 		for (int i = req_txq; i < prev_txq; i++) {
 			if (vsi_stat->tx_ring_stats[i]) {
@@ -2337,9 +2299,11 @@ static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 			       GFP_KERNEL | __GFP_ZERO);
 	if (!vsi_stat->tx_ring_stats) {
 		vsi_stat->tx_ring_stats = tx_ring_stats;
-		return -ENOMEM;
+		goto err_free_partial_vsi_stat;
 	}
+	vsi_stat->tx_ring_stats_len = req_txq;
 
+	prev_rxq = vsi_stat->rx_ring_stats_len;
 	if (req_rxq < prev_rxq) {
 		for (int i = req_rxq; i < prev_rxq; i++) {
 			if (vsi_stat->rx_ring_stats[i]) {
@@ -2356,10 +2320,20 @@ static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 			       GFP_KERNEL | __GFP_ZERO);
 	if (!vsi_stat->rx_ring_stats) {
 		vsi_stat->rx_ring_stats = rx_ring_stats;
-		return -ENOMEM;
+		goto err_free_partial_vsi_stat;
 	}
+	vsi_stat->rx_ring_stats_len = req_rxq;
 
+	pf->vsi_stats[vsi->idx] = vsi_stat;
 	return 0;
+
+err_free_partial_vsi_stat:
+	if (!pf->vsi_stats[vsi->idx]) {
+		/* vsi_stat was not visible before current alloc attempt */
+		kfree(vsi_stat->tx_ring_stats);
+		kfree(vsi_stat);
+	}
+	return -ENOMEM;
 }
 
 /**
@@ -2379,7 +2353,7 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 		return ret;
 
 	/* allocate memory for Tx/Rx ring stat pointers */
-	ret = ice_vsi_alloc_stat_arrays(vsi);
+	ret = ice_vsi_realloc_stat_arrays(vsi);
 	if (ret)
 		goto unroll_vsi_alloc;
 
-- 
2.54.0

