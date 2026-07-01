Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cWP+FWHzRGqU3woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 13:00:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B526EC7A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 13:00:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="bw5H/64t";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 126DA406A5;
	Wed,  1 Jul 2026 11:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TKTh2VD7G4bn; Wed,  1 Jul 2026 11:00:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 478EF4069F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782903644;
	bh=zgTl0/Qa9EF6URDn5geqOExG0NvGmwoKqPPxxwt8OQU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bw5H/64teMNEG9lKPr2JJreTt5YM2Nq2QbP9EUafbX2l+BhuBhco5Ayyc99UZf8L0
	 jkddiWVJ9vIiZGMbID7RoOFp2+AR/sKEKJuCpExtDsHObe1KExdgMpM6k8Z8qUvhN9
	 mcRkdswtdHkN11CkVq3CUPJcTEWP1XAtEe9p+/aO1Wq1Ohr4nM+HY8a6KeJaLsMwsR
	 AVYYIqv20IdI6Y+F09aJud/CML3M5Dqz7ReiICo4fDQ5HGipQY2eu/a497PdGtOnyE
	 jd8z+N42LrufwCSG5yNRCf0FhadBl1BGyj2o9vndvJYgFTEa/pl4h3lDjpW31O1B8/
	 5+g/7K4c0tnJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 478EF4069F;
	Wed,  1 Jul 2026 11:00:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 902872EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 11:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7682B4066E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 11:00:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fZDyLFQmW2tx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 11:00:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 919A140693
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 919A140693
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 919A140693
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 11:00:41 +0000 (UTC)
X-CSE-ConnectionGUID: R+V9dqpGQuqJUrrWS4XPvA==
X-CSE-MsgGUID: TJjBbQN+Qo6O/SmwBZ7SZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="93989156"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="93989156"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:00:41 -0700
X-CSE-ConnectionGUID: kjrr1HkNQy+E9IDKid52og==
X-CSE-MsgGUID: aIKAe79ESLiJDNl9N41t9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249887295"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 01 Jul 2026 04:00:37 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CEA1C28763;
 Wed,  1 Jul 2026 12:00:35 +0100 (IST)
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed,  1 Jul 2026 12:41:03 +0200
Message-ID: <20260701104141.9740-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701104141.9740-1-przemyslaw.kitszel@intel.com>
References: <20260701104141.9740-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782903642; x=1814439642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E8RBWXlTTBf2FMiPjS26uKCN4JqiVWr6pCktAz80oVI=;
 b=Rb6a2ACJ1V7Ncb9Wk4ECG1DVqfIYLOI4qAGmCg83V59+7ToAw9A4HhCW
 TGQM7fzGT3aM9M5dtG9QVA21g0qPhSr7o1iXqC3sy42Cr1uKs/Qpo8gae
 ADlUVZ5cQhEsHF1JFmATh/Jw0aPqcKFwNAYHHfKPyujftfeFIKMWD03dU
 u+ruGIuot/1DKyvwoVhnJrBltFY+pIWAGbQwnd1SDxD/lMsw/qPPABm6M
 DEs2en1OxZn4yclVClg5JHxtP3Sv7+WgNoNU355V4CD26x2zBGaWUkU4J
 dZMK/yXpbm/LjI4zt64YNBbC6NBzQEWtQgVPuyW9EhDkq6nf5hXkLqKyX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rb6a2ACJ
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix stats array overflow
 via proper realloc
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,atlassian.net:url,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3B526EC7A0

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
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
This is an alternative to the fix [1] by Michal Schmidt, which were
blocked due to AI feedback. My fix was already developed before Michal's,
just not public back then. We have agreed to go on with my version.

[1] https://lore.kernel.org/netdev/20260520183501.3360810-3-anthony.l.nguyen@intel.com
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 57 +++++-------------------
 1 file changed, 11 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index e48ee5940f17..ae167b42c558 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -513,51 +513,6 @@ static irqreturn_t ice_msix_clean_rings(int __always_unused irq, void *data)
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
@@ -2319,7 +2274,17 @@ static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 	u16 prev_txq = vsi->alloc_txq;
 	u16 prev_rxq = vsi->alloc_rxq;
 
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
+
 	vsi_stat = pf->vsi_stats[vsi->idx];
+	if (!vsi_stat) {
+		vsi_stat = kzalloc_obj(*vsi_stat);
+		if (!vsi_stat)
+			return -ENOMEM;
+
+		pf->vsi_stats[vsi->idx] = vsi_stat;
+	}
 
 	if (req_txq < prev_txq) {
 		for (int i = req_txq; i < prev_txq; i++) {
@@ -2379,7 +2344,7 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 		return ret;
 
 	/* allocate memory for Tx/Rx ring stat pointers */
-	ret = ice_vsi_alloc_stat_arrays(vsi);
+	ret = ice_vsi_realloc_stat_arrays(vsi);
 	if (ret)
 		goto unroll_vsi_alloc;
 
-- 
2.54.0

