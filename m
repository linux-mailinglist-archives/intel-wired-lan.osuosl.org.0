Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5561DA90DA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 23:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 281AA6F6E6;
	Wed, 16 Apr 2025 21:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZPMRcMrPEwua; Wed, 16 Apr 2025 21:19:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 522316F6F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744838349;
	bh=bcPlQJ4j9PmSdpzxVj8zdu1JorK6wPHnjva38d/scO8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W1h77rCx8ntgb33RKFMP478BPTNK7I7iVwS/PVMNAK1tVNBwaZaXcUaTY8kgeL0we
	 no1JXolayCwiqTYBpT8Upk3vUqRwYkOIKwtzr4j1tQxhTsk0KTUm7fKoRdHgnD1IXb
	 TlvpLULWMyzLO1TZKQF1gqvIdO9EpZQMc8zZXyNX/5qgioBAaskARgY1NFcofge36+
	 gIe7whzq2LPGTmIFEBbkgblOh6YIVDOsSOMSs70mSBwyCwqA8wDe9N0svdbk/c2N+W
	 vrQWvgiLrO9v/dh+1QooWK9ZSiM9X/rqYBkzbupO90OfuoDTyZTV94+3ZVvXYCC5fd
	 Feg9l9DhxEfLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 522316F6F3;
	Wed, 16 Apr 2025 21:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA41711B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A678D8406B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLfu_pmi-5V9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 968FF83AB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 968FF83AB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 968FF83AB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
X-CSE-ConnectionGUID: 8gzgvwsSQ6GupSWal7TZqA==
X-CSE-MsgGUID: yu+FSwI9Rea2+V5tzDE0cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46496249"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="46496249"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 14:19:02 -0700
X-CSE-ConnectionGUID: jaQEfTs0Tl2dHVKGFcMP7g==
X-CSE-MsgGUID: 9EqELcrKTP+ubEzn3xI6SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="130909775"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa008.fm.intel.com with ESMTP; 16 Apr 2025 14:19:02 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 16 Apr 2025 14:18:21 -0700
Message-ID: <20250416211821.444076-10-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
References: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744838342; x=1776374342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g6wdpB1WmaAmXE+ORLe1HAbjuAVXoHlcS9yNMmCsjqc=;
 b=FOREbBuoTC3wUx5s5wOn7tZl5Kc3vyb+RsrNSZ/2gDKa7l+sKwPrnm5q
 QRaRmPLbbN/QU1Ty1iU+OCYUQqGGojbQUfWQ0MQDKG4/s+Q43tMOTaLYu
 hI6V+Tv7BhYV351d54MFvF0HJR3Of41iKKp6Kfr2NOpj4KjpbDHf1CyRB
 Pj+RKBCUw+J0Ih9cK/KyeibGC8QGxmftJ+/dFp6TJfvUOUCjXWMMCCgqk
 zOBLfayOsfU8SX6NsThJOeonzbKsyNEQWy+Upz7vmP4keaWpb0BqQ3bAQ
 IrR3Xp49baktzCfPTmbwN4Bddwqh57QqIfkWef9BMqbmVE0BnGe6sWe5r
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FOREbBuo
Subject: [Intel-wired-lan] [PATCH iwl-next 9/9] idpf: generalize mailbox API
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

Add a control queue parameter to all mailbox APIs in order to
make use of those APIs for non-default mailbox as well.

Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  3 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 33 ++++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  6 ++--
 4 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index af0f036c561d..de765e92e29f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1197,7 +1197,7 @@ void idpf_mbx_task(struct work_struct *work)
 		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
 				   msecs_to_jiffies(300));
 
-	idpf_recv_mb_msg(adapter);
+	idpf_recv_mb_msg(adapter, adapter->hw.arq);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 0bb07bcb974b..ac091280e828 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -146,7 +146,8 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
 	if (trig_cause == IDPF_HR_FUNC_RESET &&
 	    !test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
-		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
+		idpf_send_mb_msg(adapter, adapter->hw.asq,
+				 VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index c201fd08dcbf..2195c6d4956d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -197,13 +197,15 @@ static void idpf_recv_event_msg(struct idpf_adapter *adapter,
 
 /**
  * idpf_mb_clean - Reclaim the send mailbox queue entries
- * @adapter: Driver specific private structure
+ * @adapter: driver specific private structure
+ * @asq: send control queue info
  *
  * Reclaim the send mailbox queue entries to be used to send further messages
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_mb_clean(struct idpf_adapter *adapter)
+static int idpf_mb_clean(struct idpf_adapter *adapter,
+			 struct idpf_ctlq_info *asq)
 {
 	u16 i, num_q_msg = IDPF_DFLT_MBX_Q_LEN;
 	struct idpf_ctlq_msg **q_msg;
@@ -214,7 +216,7 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
 	if (!q_msg)
 		return -ENOMEM;
 
-	err = idpf_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
+	err = idpf_ctlq_clean_sq(asq, &num_q_msg, q_msg);
 	if (err)
 		goto err_kfree;
 
@@ -237,7 +239,8 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
 
 /**
  * idpf_send_mb_msg - Send message over mailbox
- * @adapter: Driver specific private structure
+ * @adapter: driver specific private structure
+ * @asq: control queue to send message to
  * @op: virtchnl opcode
  * @msg_size: size of the payload
  * @msg: pointer to buffer holding the payload
@@ -247,8 +250,8 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
  *
  * Returns 0 on success, negative on failure
  */
-int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg, u16 cookie)
+int idpf_send_mb_msg(struct idpf_adapter *adapter, struct idpf_ctlq_info *asq,
+		     u32 op, u16 msg_size, u8 *msg, u16 cookie)
 {
 	struct idpf_ctlq_msg *ctlq_msg;
 	struct idpf_dma_mem *dma_mem;
@@ -262,7 +265,7 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	if (idpf_is_reset_detected(adapter))
 		return 0;
 
-	err = idpf_mb_clean(adapter);
+	err = idpf_mb_clean(adapter, asq);
 	if (err)
 		return err;
 
@@ -295,7 +298,7 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	ctlq_msg->ctx.indirect.payload = dma_mem;
 	ctlq_msg->ctx.sw_cookie.data = cookie;
 
-	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
+	err = idpf_ctlq_send(&adapter->hw, asq, 1, ctlq_msg);
 	if (err)
 		goto send_error;
 
@@ -491,7 +494,7 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 	cookie = FIELD_PREP(IDPF_VC_XN_SALT_M, xn->salt) |
 		 FIELD_PREP(IDPF_VC_XN_IDX_M, xn->idx);
 
-	retval = idpf_send_mb_msg(adapter, params->vc_op,
+	retval = idpf_send_mb_msg(adapter, adapter->hw.asq, params->vc_op,
 				  send_buf->iov_len, send_buf->iov_base,
 				  cookie);
 	if (retval) {
@@ -690,12 +693,13 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 
 /**
  * idpf_recv_mb_msg - Receive message over mailbox
- * @adapter: Driver specific private structure
+ * @adapter: driver specific private structure
+ * @arq: control queue to receive message from
  *
  * Will receive control queue message and posts the receive buffer. Returns 0
  * on success and negative on failure.
  */
-int idpf_recv_mb_msg(struct idpf_adapter *adapter)
+int idpf_recv_mb_msg(struct idpf_adapter *adapter, struct idpf_ctlq_info *arq)
 {
 	struct idpf_ctlq_msg ctlq_msg;
 	struct idpf_dma_mem *dma_mem;
@@ -707,7 +711,7 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		 * actually received on num_recv.
 		 */
 		num_recv = 1;
-		err = idpf_ctlq_recv(adapter->hw.arq, &num_recv, &ctlq_msg);
+		err = idpf_ctlq_recv(arq, &num_recv, &ctlq_msg);
 		if (err || !num_recv)
 			break;
 
@@ -723,8 +727,7 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		else
 			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
 
-		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw,
-						   adapter->hw.arq,
+		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw, arq,
 						   &num_recv, &dma_mem);
 
 		/* If post failed clear the only buffer we supplied */
@@ -2818,7 +2821,7 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 {
 	if (adapter->hw.arq && adapter->hw.asq) {
-		idpf_mb_clean(adapter);
+		idpf_mb_clean(adapter, adapter->hw.asq);
 		idpf_ctlq_deinit(&adapter->hw);
 	}
 	adapter->hw.arq = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 169b06800878..fcb504291450 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -25,9 +25,9 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport,
 			      struct idpf_q_vec_rsrc *rsrc,
 			      struct idpf_queue_id_reg_info *chunks);
 
-int idpf_recv_mb_msg(struct idpf_adapter *adapter);
-int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg, u16 cookie);
+int idpf_recv_mb_msg(struct idpf_adapter *adapter, struct idpf_ctlq_info *arq);
+int idpf_send_mb_msg(struct idpf_adapter *adapter, struct idpf_ctlq_info *asq,
+		     u32 op, u16 msg_size, u8 *msg, u16 cookie);
 
 int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
-- 
2.43.0

