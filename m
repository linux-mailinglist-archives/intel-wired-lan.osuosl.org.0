Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKZWMAuNwmlvewQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 14:09:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2312E308F85
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 14:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 969EC8264C;
	Tue, 24 Mar 2026 13:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vbzLjHoM-yXu; Tue, 24 Mar 2026 13:09:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE40782662
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774357768;
	bh=M7ouG0DBC3XldW/b7H0aRP+nZ9yTbmC+VQ/AifZR8ek=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fEZPoTK1DvASC4W2Mid70ylL0nghZyiCUQb9b1XEm2ZLRxowvn16EPxY4e7rkxcnz
	 t7MchTcE+vC0tcWcL91bTnRpoScKgQ+S3AiGo+4BBX9qitkviLYo43+hksjL+jCyxm
	 nskTycIHT3cJA2kN+MdACrhxz+ILZaMDjtf415SYCQiull1hirUhv9xM3bdipBQJef
	 M3e+W22TX1PHoRzMNyPNfSXSM2HK6d6C4ul0GmvY1PpoOB2haR76sRwWGg4gBRC8Qb
	 972+YI9jrzVtdgdvh0m3FtcdIC1A98T3MrNse/hjKFFbbXwijz84aG1jdiI92vHHca
	 iAzzAzBzAuYUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE40782662;
	Tue, 24 Mar 2026 13:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D979C353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 13:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB37D82572
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 13:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIJ9BDfAZIen for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 13:09:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B0B6E822A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0B6E822A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0B6E822A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 13:09:26 +0000 (UTC)
X-CSE-ConnectionGUID: x9/UFbZpRLiuhX1bgyIAVg==
X-CSE-MsgGUID: NI/9vYipR5Oy3SnkDKJ9kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="77975892"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="77975892"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:09:25 -0700
X-CSE-ConnectionGUID: 1if/zWsiRuy9X9x3yuid1w==
X-CSE-MsgGUID: 4l+BDvUWQdepVfqWHfssWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="228400158"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 24 Mar 2026 06:09:24 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jakub Kicinski <kuba@kernel.org>
Date: Tue, 24 Mar 2026 14:09:22 +0100
Message-ID: <20260324130922.562714-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774357766; x=1805893766;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7IExQLdoaklosTrWWL0AAMEuAjaaUus+8pe4mqx3XOU=;
 b=S7JyPlaubYLFsiQ+4rK0HcZ5E1SVivFd5rB7FYhJl1P9PkD0bYd5mvpj
 HdmnF1dwENwSufCXyv2QpTtEZgtwCKd1MNfccDZr1l96srFWCpBuzSv7a
 ygO2pOiXqyNWOwLLTngt2Z73hOst4UFMDoUa2ZMpgciq0/C2KH7fjl8YA
 B22FWiZ9ZYTNkoslSqLohAUXnHubErTTY7gUKmchlWprVHQ0Ih6fGyOre
 o43aPuEMFoGlMJWRaUmSbBEKggP7OAVHnw/3HHQrKH+OyYEmISYOwOfph
 1Y9fKXAynjP/J8FXob0uFBsjOhrRwK3N899K/RjaIOuZlGWctmKiRn/ZJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S7JyPlau
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix napi_enable/disable
 skipping ringless q_vectors
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2312E308F85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After ethtool -L reduces the queue count, i40e_napi_disable_all() sets
NAPI_STATE_SCHED on all q_vectors, then i40e_vsi_map_rings_to_vectors()
clears ring pointers on the excess ones.  i40e_napi_enable_all() skips
those with:

	if (q_vector->rx.ring || q_vector->tx.ring)
		napi_enable(&q_vector->napi);

leaving them on dev->napi_list with NAPI_STATE_SCHED permanently set.

Writing to /sys/class/net/<iface>/threaded calls napi_stop_kthread()
on every entry in dev->napi_list.  The function loops on msleep(20)
waiting for NAPI_STATE_SCHED to clear -- which never happens for the
stale q_vectors.  The task hangs in D state forever; a concurrent write
deadlocks on dev->lock held by the first.

Commit 13a8cd191a2b added the guard to prevent a divide-by-zero in
i40e_napi_poll() when epoll busy-poll iterated all device NAPIs (4.x
era).  Since 7adc3d57fe2b ("net: Introduce preferred busy-polling",
v5.11) napi_busy_loop() polls by napi_id keyed to the socket, so
ringless q_vectors are never selected.  i40e_msix_clean_rings() also
independently avoids scheduling NAPI for them.  The guard is safe to
remove.

Add an early return in i40e_napi_poll() for num_ringpairs == 0 so the
function is self-defending against a NULL tx.ring dereference at the
WB_ON_ITR check, should the NAPI ever fire through an unexpected path.

Reported-by: Jakub Kicinski <kuba@kernel.org>
Closes: https://lore.kernel.org/intel-wired-lan/20260316133100.6054a11f@kernel.org/
Fixes: 13a8cd191a2b ("i40e: Do not enable NAPI on q_vectors that have no rings")
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
Test configuration:
  Kernel   : Linux 6.19.0-rc8+
  NIC      : Intel Ethernet Controller XXV710 for 25GbE SFP28 [8086:158b]
  Driver   : i40e (in-tree)
  Firmware : 9.40 0x8000ed12 1.3429.0
  CPU      : 2 x Intel Xeon Gold 6238M (88 logical CPUs, x86_64)
  RAM      : 64 GiB

Reproduction steps (FAIL before fix):
  # 1. Reduce queues so excess q_vectors lose their ring pointers
  ethtool -L <iface> combined 1

  # 2. Enable threaded NAPI (completes fast in 6.19, no hang on enable path)
  echo 1 > /sys/class/net/<iface>/threaded

  # 3. Two concurrent writes to disable -- fires the msleep deadlock
  echo 0 > /sys/class/net/<iface>/threaded &
  echo 0 > /sys/class/net/<iface>/threaded &

  Both background tasks enter uninterruptible sleep (D state) immediately
  and never return.

  Observed kernel stack (W1, holds dev->lock):
    msleep+0x2d/0x50
    napi_set_threaded+0x10b/0x110
    netif_set_threaded+0xe1/0x140
    threaded_store+0xd2/0x100
    kernfs_fop_write_iter+0x138/0x1d0

  Kernel hung_task message (~120 s after trigger):
    INFO: task bash blocked for more than 122 seconds.
    INFO: task bash is blocked on a mutex likely owned by task bash.

Validation (PASS with fix):
  Both background tasks exit within 1 second.
  D-state process count: 0.
  Busy-poll (net.core.busy_poll=50) + 50000-packet UDP flood with
  1 active queue: no NULL dereference, no crash.

 drivers/net/ethernet/intel/i40e/i40e_main.c | 28 ++++++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 ++++++++
 2 files changed, 26 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 926d001..5042f8c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5182,6 +5182,14 @@ static void i40e_clear_interrupt_scheme(struct i40e_pf *pf)
 /**
  * i40e_napi_enable_all - Enable NAPI for all q_vectors in the VSI
  * @vsi: the VSI being configured
+ *
+ * Enable NAPI on every q_vector that is registered with the netdev,
+ * regardless of whether it currently has rings assigned.  After a queue-
+ * count reduction (e.g. ethtool -L combined 1) the excess q_vectors lose
+ * their ring pointers inside i40e_vsi_map_rings_to_vectors but remain on
+ * dev->napi_list.  Leaving them in the napi_disable()-ed state
+ * (NAPI_STATE_SCHED set) causes napi_set_threaded() to spin forever on
+ * msleep(20) waiting for that bit to clear.
  **/
 static void i40e_napi_enable_all(struct i40e_vsi *vsi)
 {
@@ -5190,17 +5198,17 @@ static void i40e_napi_enable_all(struct i40e_vsi *vsi)
 	if (!vsi->netdev)
 		return;
 
-	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++) {
-		struct i40e_q_vector *q_vector = vsi->q_vectors[q_idx];
-
-		if (q_vector->rx.ring || q_vector->tx.ring)
-			napi_enable(&q_vector->napi);
-	}
+	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++)
+		napi_enable(&vsi->q_vectors[q_idx]->napi);
 }
 
 /**
  * i40e_napi_disable_all - Disable NAPI for all q_vectors in the VSI
  * @vsi: the VSI being configured
+ *
+ * Mirror of i40e_napi_enable_all: operate on every registered q_vector so
+ * enable/disable calls are always balanced, even when some q_vectors carry
+ * no rings (as happens after a queue-count reduction).
  **/
 static void i40e_napi_disable_all(struct i40e_vsi *vsi)
 {
@@ -5209,12 +5217,8 @@ static void i40e_napi_disable_all(struct i40e_vsi *vsi)
 	if (!vsi->netdev)
 		return;
 
-	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++) {
-		struct i40e_q_vector *q_vector = vsi->q_vectors[q_idx];
-
-		if (q_vector->rx.ring || q_vector->tx.ring)
-			napi_disable(&q_vector->napi);
-	}
+	for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++)
+		napi_disable(&vsi->q_vectors[q_idx]->napi);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 894f2d0..3123459 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2760,6 +2760,16 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 		return 0;
 	}
 
+	/* A q_vector can have its ring pointers cleared after a queue-count
+	 * reduction (ethtool -L combined N) while napi_enable() was already
+	 * called on it.  Complete immediately so the poll loop exits cleanly
+	 * and we never dereference the NULL ring pointer below.
+	 */
+	if (unlikely(!q_vector->num_ringpairs)) {
+		napi_complete_done(napi, 0);
+		return 0;
+	}
+
 	/* Since the actual Tx work is minimal, we can give the Tx a larger
 	 * budget and be more aggressive about cleaning up the Tx descriptors.
 	 */
-- 
2.52.0

