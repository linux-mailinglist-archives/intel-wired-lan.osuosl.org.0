Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPQ2NUjk72kFHgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 00:33:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C8447B854
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 00:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A0A56087F;
	Mon, 27 Apr 2026 22:33:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZlpjQVv-eCEE; Mon, 27 Apr 2026 22:33:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 306E060880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777329221;
	bh=zOMuizjCel+FNshUjyMI9iY1N7hryCEjTtm4srkgjTA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S0n/UxmwRiLxSRsylm18UruuydwXeeT1uyHUPQNUHk3YYFRFu126GYGi3H6MUxFxU
	 6k81cemHplKofOHr9OSHKY/s3giwYvGUkhYspWOH0h+UZ0qKG7gxsSNntvK/M7WBZY
	 ykOx2vgjzb54Et0Aa6EeEO2SHZACQQUFgZf5EZLtaenJaLrxp3gYGv3f4WcLZM1yei
	 KYkIlTnJR7A1qzghAFO/trtDvk+HM9KKjBx1WofbJcXXt+reS3u9+RYQMcfJxHmj7i
	 5aU6kC+NGR76YPFzK/Xvey9c8KCci1BlT7wadn0odNbN9AnpfZ2TZgGJyBaYpaReNT
	 qJdYn+SOW4iiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 306E060880;
	Mon, 27 Apr 2026 22:33:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 644F41B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 22:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4270C4023E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 22:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3aUnbjgaSrl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 22:33:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 384FA40224
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 384FA40224
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 384FA40224
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 22:33:37 +0000 (UTC)
X-CSE-ConnectionGUID: J0LkSv6qSR2tgcEx/dfVGw==
X-CSE-MsgGUID: 8it+gQX2QnuV4HNUKy5FlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="95796868"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="95796868"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 15:33:37 -0700
X-CSE-ConnectionGUID: XSmbS6lARpKP1U1bYtOGTg==
X-CSE-MsgGUID: uMrMv8oLQqONyKqB4fVMVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="257079940"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa002.fm.intel.com with ESMTP; 27 Apr 2026 15:33:36 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: emil.s.tantilov@intel.com, willemb@google.com, decot@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 stable@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 27 Apr 2026 15:44:26 -0700
Message-Id: <20260427224426.3933839-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777329218; x=1808865218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uuG6m9JJzzDuJXg4Q5er1swNxzGNOCZ6GcUTfaZUSNU=;
 b=TsMb9PCmDZuwMimTL5ZHX/UqVjoco47TIsR9qTcFLfYzSQ3V34gIU/Of
 LcHhWqduU4j7JuqO0YGhC1wAEJAqk5BSuh4qbYvJLtHcSlINIRjh7bvrL
 O3YX5NQ+MN8+mBXZHsUGpZ14b2XwfVze/xvHGHPLxT0/IboxxwG1UXSL+
 TBW023CCwE5oEjwtk1x31x7gOyHFk3WOpqVtuWBIwoOcpEe7sEOHdk/W4
 pZ3DbWGbJnh8OUWBHYEN+TQxLCejnrQ61ok4bnPDl6cCmWxfpkBzs49MK
 MaYxjEsiL6oVYwl9wGClmieDDNp16c78h+ZUDZCgetSjQm7jwBOPXkEXW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TsMb9PCm
Subject: [Intel-wired-lan] [PATCH net v3] idpf: fix xdp crash in soft reset
 error path
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
X-Rspamd-Queue-Id: D2C8447B854
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Emil Tantilov <emil.s.tantilov@intel.com>

NULL pointer dereference is reported in cases where idpf_vport_open()
fails during soft reset:

./xdpsock -i <inf> -q -r -N

[ 3179.186687] idpf 0000:83:00.0: Failed to initialize queue ids for vport 0: -12
[ 3179.276739] BUG: kernel NULL pointer dereference, address: 0000000000000010
[ 3179.277636] #PF: supervisor read access in kernel mode
[ 3179.278470] #PF: error_code(0x0000) - not-present page
[ 3179.279285] PGD 0
[ 3179.280083] Oops: Oops: 0000 [#1] SMP NOPTI
...
[ 3179.283997] Workqueue: events xp_release_deferred
[ 3179.284770] RIP: 0010:idpf_find_rxq_vec+0x17/0x30 [idpf]
...
[ 3179.291937] Call Trace:
[ 3179.292392]  <TASK>
[ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf]
[ 3179.293325]  idpf_xsk_pool_setup+0x7c/0x520 [idpf]
[ 3179.293803]  idpf_xdp+0x59/0x240 [idpf]
[ 3179.294275]  xp_disable_drv_zc+0x62/0xb0
[ 3179.294743]  xp_clear_dev+0x40/0xb0
[ 3179.295198]  xp_release_deferred+0x1f/0xa0
[ 3179.295648]  process_one_work+0x226/0x730
[ 3179.296106]  worker_thread+0x19e/0x340
[ 3179.296557]  ? __pfx_worker_thread+0x10/0x10
[ 3179.297009]  kthread+0xf4/0x130
[ 3179.297459]  ? __pfx_kthread+0x10/0x10
[ 3179.297910]  ret_from_fork+0x32c/0x410
[ 3179.298361]  ? __pfx_kthread+0x10/0x10
[ 3179.298702]  ret_from_fork_asm+0x1a/0x30

Fix the error handling of the soft reset in idpf_xdp_setup_prog() by
restoring the vport->xdp_prog to the old value. This avoids referencing
the orphaned prog that was copied to vport->xdp_prog in the soft reset
and prevents subsequent false positive by idpf_xdp_enabled(). Roll back
the number of queues as well. Also only call put on the program if the
soft reset was successful. Returning an error will trigger the core XDP
stack to handle the put otherwise.

Update the restart check in idpf_xsk_pool_setup() to use IDPF_VPORT_UP bit
instead of netif_running(). The idpf_vport_stop/start() calls will not
update the __LINK_STATE_START bit, making this test a false positive
should the soft reset fail.

Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
Cc: stable@vger.kernel.org
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3:
- call idpf_vport_adjust_qs in case of XDP soft reset failure to restore
  previous queue configuration, including data queue config
- change idpf_vport_adjust_qs and idpf_vport_calc_total_qs return types
  to void since they cannot fail
- only call bpf_prog_put if soft reset succeeds
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  4 +---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 12 ++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 +++---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 19 ++++---------------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  4 ++--
 drivers/net/ethernet/intel/idpf/xdp.c         |  8 +++++---
 drivers/net/ethernet/intel/idpf/xsk.c         |  4 +++-
 7 files changed, 22 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index cf966fe6c759..56198b417c97 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2042,9 +2042,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	/* Adjust resource parameters prior to reallocating resources */
 	switch (reset_cause) {
 	case IDPF_SR_Q_CHANGE:
-		err = idpf_vport_adjust_qs(new_vport, new_rsrc);
-		if (err)
-			goto free_vport;
+		idpf_vport_adjust_qs(new_vport, new_rsrc);
 		break;
 	case IDPF_SR_Q_DESC_CHANGE:
 		/* Update queue parameters before allocating resources */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 4fc0bb14c5b1..4e0d31023123 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1568,12 +1568,10 @@ void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
  * @vport_idx: vport idx to retrieve vport pointer
  * @vport_msg: message to fill with data
  * @max_q: vport max queue info
- *
- * Return: 0 on success, error value on failure.
  */
-int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
-			     struct virtchnl2_create_vport *vport_msg,
-			     struct idpf_vport_max_q *max_q)
+void idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
+			      struct virtchnl2_create_vport *vport_msg,
+			      struct idpf_vport_max_q *max_q)
 {
 	int dflt_splitq_txq_grps = 0, dflt_singleq_txqs = 0;
 	int dflt_splitq_rxq_grps = 0, dflt_singleq_rxqs = 0;
@@ -1624,7 +1622,7 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 	}
 
 	if (!vport_config)
-		return 0;
+		return;
 
 	user = &vport_config->user_config;
 	user->num_req_rx_qs = le16_to_cpu(vport_msg->num_rx_q);
@@ -1640,8 +1638,6 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 	vport_msg->num_tx_q = cpu_to_le16(user->num_req_tx_qs + num_xdpsq);
 	if (idpf_is_queue_model_split(le16_to_cpu(vport_msg->txq_model)))
 		vport_msg->num_tx_complq = vport_msg->num_tx_q;
-
-	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b6836e38f449..22c647d6dd5c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1084,9 +1084,9 @@ void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct idpf_q_vec_rsrc *rsrc);
 void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
 				struct idpf_q_vec_rsrc *rsrc);
-int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
-			     struct virtchnl2_create_vport *vport_msg,
-			     struct idpf_vport_max_q *max_q);
+void idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
+			      struct virtchnl2_create_vport *vport_msg,
+			      struct idpf_vport_max_q *max_q);
 void idpf_vport_calc_num_q_groups(struct idpf_q_vec_rsrc *rsrc);
 int idpf_vport_queues_alloc(struct idpf_vport *vport,
 			    struct idpf_q_vec_rsrc *rsrc);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101..91af4f298475 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1578,12 +1578,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	else
 		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
 
-	err = idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
-	if (err) {
-		dev_err(&adapter->pdev->dev, "Enough queues are not available");
-
-		return err;
-	}
+	idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
 
 	if (!adapter->vport_params_recvd[idx]) {
 		adapter->vport_params_recvd[idx] = kzalloc(IDPF_CTLQ_MAX_BUF_LEN,
@@ -4065,24 +4060,18 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport,
  * @vport: virtual port data struct
  * @rsrc: pointer to queue and vector resources
  *
- * Renegotiate queues.  Returns 0 on success, negative on failure.
+ * Renegotiate queues.
  */
-int idpf_vport_adjust_qs(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
+void idpf_vport_adjust_qs(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
 {
 	struct virtchnl2_create_vport vport_msg;
-	int err;
 
 	vport_msg.txq_model = cpu_to_le16(rsrc->txq_model);
 	vport_msg.rxq_model = cpu_to_le16(rsrc->rxq_model);
-	err = idpf_vport_calc_total_qs(vport->adapter, vport->idx, &vport_msg,
-				       NULL);
-	if (err)
-		return err;
+	idpf_vport_calc_total_qs(vport->adapter, vport->idx, &vport_msg, NULL);
 
 	idpf_vport_init_num_qs(vport, &vport_msg, rsrc);
 	idpf_vport_calc_num_q_groups(rsrc);
-
-	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 6876e3ed9d1b..76d238fc660c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -169,8 +169,8 @@ int idpf_send_destroy_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
 int idpf_send_enable_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
 int idpf_send_disable_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
 
-int idpf_vport_adjust_qs(struct idpf_vport *vport,
-			 struct idpf_q_vec_rsrc *rsrc);
+void idpf_vport_adjust_qs(struct idpf_vport *vport,
+			  struct idpf_q_vec_rsrc *rsrc);
 int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 			    struct idpf_vport_max_q *max_q);
 void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index dcd867517a5f..f6e6b72169fd 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -488,11 +488,13 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
 				   "Could not reopen the vport after XDP setup");
 
 		cfg->user_config.xdp_prog = old;
-		old = prog;
-	}
+		vport->xdp_prog = old;
 
-	if (old)
+		/* Restore previous queue config */
+		idpf_vport_adjust_qs(vport, &vport->dflt_qv_rsrc);
+	} else if (old) {
 		bpf_prog_put(old);
+	}
 
 	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
 
diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index d95d3efdfd36..3d8c430efd2b 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.c
+++ b/drivers/net/ethernet/intel/idpf/xsk.c
@@ -553,6 +553,7 @@ int idpf_xskrq_poll(struct idpf_rx_queue *rxq, u32 budget)
 
 int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
 {
+	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct xsk_buff_pool *pool = bpf->xsk.pool;
 	u32 qid = bpf->xsk.queue_id;
 	bool restart;
@@ -568,7 +569,8 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
 		return -EINVAL;
 	}
 
-	restart = idpf_xdp_enabled(vport) && netif_running(vport->netdev);
+	restart = idpf_xdp_enabled(vport) &&
+		  test_bit(IDPF_VPORT_UP, np->state);
 	if (!restart)
 		goto pool;
 
-- 
2.39.2

