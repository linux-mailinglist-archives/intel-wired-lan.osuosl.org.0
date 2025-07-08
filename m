Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C596AFBF99
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 02:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F31F4198D;
	Tue,  8 Jul 2025 00:58:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DudQLzLWRJS6; Tue,  8 Jul 2025 00:58:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 923EF4199D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751936338;
	bh=kU+RtXwQAfsH39xiwN/NYDV4PtkeEH1UzVDym1dMpsg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KhdlemI2K7cqYej/9536DQRZ/FjkaAcA4qfnLDa0/GEi7daG2DGgS4zXs8xY1Eron
	 1H8mONbYXjShux0q9KgXpdWQcRJDPCCfKPwRmmMFLKEFk+4qxoXARIMXUlzwSEZjUz
	 g39ETFBNhVhNw9vx9JwIcIuFFJ409GkN/fC+zsz/M4MveMuThlNoxNZtylgxF0r4T/
	 G3mN8JOoNoXDPCmntNfTb1FD6uQstwB7fk1vGTFEITUnIhN9gZ9bVG51shORa4s5NF
	 o4qKnYgbdFRyx5+QWgnpvf9qhRoZkYHyN0TEsbs2RpNMvWAk7T/1UTRasDIISIzMnk
	 fZxGUbS/tYFRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 923EF4199D;
	Tue,  8 Jul 2025 00:58:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BABC15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FFC8404CD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cCk4n99JxHF6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 00:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 79DB14015F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79DB14015F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 79DB14015F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: kSDEDFGhQFC+FW/xOeaITg==
X-CSE-MsgGUID: c6DYCd45QOSK90Oy+297eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54307585"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54307585"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 17:58:48 -0700
X-CSE-ConnectionGUID: tzFQFEiOQqyAZEjeu9zlKw==
X-CSE-MsgGUID: DBXDBSejTLCmkzqKtH7H0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="159695515"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa003.jf.intel.com with ESMTP; 07 Jul 2025 17:58:47 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Mon,  7 Jul 2025 17:58:37 -0700
Message-ID: <20250708005837.18510-10-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
References: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751936331; x=1783472331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=msYyYvlqHCfA49CH3Z2BQ8nAB8BwppZZQr7bZ6Uvj9w=;
 b=KjKXEYk0otK2ulgw8tjLe3m+Yyf2ywMPM5wSMc+1elw/HeH0hFu2/QWb
 LfqL/mvBWCaEhrpVDFbgf29A+PWFOmKIExqpxxHszJNaaTYNqSsPm5M56
 L19TcAQm77qvKtN5EmndbYAq6NQ+Kc3tnRc4lyT4VssHw8XUiet8wh6W1
 02LKDeB+bSK294BiB6Bd/UmY3EQeEzrf1NJOwzs5H8p0WlRxL4F6VpgZn
 7FxV7yRz4Dg6P7SAzaXuQ7CdsFo5vsFA/c50iPW6Y371Pdv7rVcKsHPPR
 JiFUmXJac02qjrinYCl23uSh/FTQJH2q3vMchs6w3y1vK2iI8/ROXijqI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KjKXEYk0
Subject: [Intel-wired-lan] [PATCH net-next v6 9/9] idpf: generalize mailbox
 API
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

Add a control queue parameter to all mailbox APIs in order to make use
of those APIs for non-default mailbox as well.

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
index 23650a1cda29..4c4e3ba5317c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1223,7 +1223,7 @@ void idpf_mbx_task(struct work_struct *work)
 		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
 				   msecs_to_jiffies(300));
 
-	idpf_recv_mb_msg(adapter);
+	idpf_recv_mb_msg(adapter, adapter->hw.arq);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 5b904c232584..c4c3c43767e4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -155,7 +155,8 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
 	if (trig_cause == IDPF_HR_FUNC_RESET &&
 	    !test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
-		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
+		idpf_send_mb_msg(adapter, adapter->hw.asq,
+				 VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 7eee3a275e8b..4d5af6299c9b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -116,13 +116,15 @@ static void idpf_recv_event_msg(struct idpf_adapter *adapter,
 
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
@@ -133,7 +135,7 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
 	if (!q_msg)
 		return -ENOMEM;
 
-	err = idpf_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
+	err = idpf_ctlq_clean_sq(asq, &num_q_msg, q_msg);
 	if (err)
 		goto err_kfree;
 
@@ -205,7 +207,8 @@ static void idpf_prepare_ptp_mb_msg(struct idpf_adapter *adapter, u32 op,
 
 /**
  * idpf_send_mb_msg - Send message over mailbox
- * @adapter: Driver specific private structure
+ * @adapter: driver specific private structure
+ * @asq: control queue to send message to
  * @op: virtchnl opcode
  * @msg_size: size of the payload
  * @msg: pointer to buffer holding the payload
@@ -215,8 +218,8 @@ static void idpf_prepare_ptp_mb_msg(struct idpf_adapter *adapter, u32 op,
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
@@ -230,7 +233,7 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	if (idpf_is_reset_detected(adapter))
 		return 0;
 
-	err = idpf_mb_clean(adapter);
+	err = idpf_mb_clean(adapter, asq);
 	if (err)
 		return err;
 
@@ -266,7 +269,7 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	ctlq_msg->ctx.indirect.payload = dma_mem;
 	ctlq_msg->ctx.sw_cookie.data = cookie;
 
-	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
+	err = idpf_ctlq_send(&adapter->hw, asq, 1, ctlq_msg);
 	if (err)
 		goto send_error;
 
@@ -462,7 +465,7 @@ ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 	cookie = FIELD_PREP(IDPF_VC_XN_SALT_M, xn->salt) |
 		 FIELD_PREP(IDPF_VC_XN_IDX_M, xn->idx);
 
-	retval = idpf_send_mb_msg(adapter, params->vc_op,
+	retval = idpf_send_mb_msg(adapter, adapter->hw.asq, params->vc_op,
 				  send_buf->iov_len, send_buf->iov_base,
 				  cookie);
 	if (retval) {
@@ -661,12 +664,13 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 
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
@@ -678,7 +682,7 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		 * actually received on num_recv.
 		 */
 		num_recv = 1;
-		err = idpf_ctlq_recv(adapter->hw.arq, &num_recv, &ctlq_msg);
+		err = idpf_ctlq_recv(arq, &num_recv, &ctlq_msg);
 		if (err || !num_recv)
 			break;
 
@@ -694,8 +698,7 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		else
 			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
 
-		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw,
-						   adapter->hw.arq,
+		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw, arq,
 						   &num_recv, &dma_mem);
 
 		/* If post failed clear the only buffer we supplied */
@@ -2828,7 +2831,7 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 {
 	if (adapter->hw.arq && adapter->hw.asq) {
-		idpf_mb_clean(adapter);
+		idpf_mb_clean(adapter, adapter->hw.asq);
 		idpf_ctlq_deinit(&adapter->hw);
 	}
 	adapter->hw.arq = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 7b3f422d251a..cecb95f37645 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -115,9 +115,9 @@ bool idpf_sideband_action_ena(struct idpf_vport *vport,
 			      struct ethtool_rx_flow_spec *fsp);
 unsigned int idpf_fsteer_max_rules(struct idpf_vport *vport);
 
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

