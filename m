Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BCFB30F14
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 08:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8892B4091E;
	Fri, 22 Aug 2025 06:39:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TV2TsOZJ63dV; Fri, 22 Aug 2025 06:39:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C80F940929
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755844774;
	bh=zxYUh3VOB3WGHseX1WW9OgKty6sewIwn6wgY18fYs7Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qLDG58CIBFc7WUiKG8FBa20EEt5Sk5kpfXLsQZVzGbsbr8ZVAR70cXxiWID23OWoi
	 rYxinLhFlgsxSNzloHknp6t0ngDO0qoG5NUi4HsJ4N4So57GZfw2pIJ4GRwr/Cjyhk
	 lcl0BJrk3qZZC8QYm4VFDhdAj5yJ/JJ/Va+X9iqy2QjndjLz8hGjsLsSp3NpP2SBGJ
	 VpPp/je9QmQ7OW2RtTaIHRg0lPwg3MlXI2aWpevawYGLQLG1lByPi67pHCdiglA8Yn
	 njnV3ZZin9NWDqktDttEESTjAgKad+8daQd1c9CWgj12HkE3QhfstyNHs+xHXRJm9w
	 /U6dEr2uOETVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C80F940929;
	Fri, 22 Aug 2025 06:39:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 24AD11C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B24F406F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4uDX5za35ZaO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 06:39:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D8B240918
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D8B240918
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D8B240918
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:32 +0000 (UTC)
X-CSE-ConnectionGUID: VgTyneP6Tf2S/iQFhED6ng==
X-CSE-MsgGUID: FUw46fTPTria1yiD3FPCDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="75729053"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="75729053"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 23:32:25 -0700
X-CSE-ConnectionGUID: qZXSoSYcR5O5jEBC9hbIXg==
X-CSE-MsgGUID: xL4eDEpjRdCHHNR+GdikWg==
X-ExtLoop1: 1
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa003.fm.intel.com with ESMTP; 21 Aug 2025 23:32:24 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Thu, 21 Aug 2025 23:32:15 -0700
Message-ID: <20250822063215.3911-10-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755844772; x=1787380772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rwTv7Ya0bdBgR9B9uCZg8xUNQz5Hc6+4isdF/5Yik+8=;
 b=TI0dFJ+qyM4u6Fhk2W3mRxFZXUSVyXfTXMgNMN3RuZLFLFR96ZAIanwt
 9ISVYc6+/pJFMORJ4v07CZgtEk4YE26lfJwWB0ssH9PDpNDCM7QXa41U1
 RXGq6hC9+QxtxB9xUcOqKL79yeQ4HAGKtJBkbdeLwS/XBhd3F1R92wTr/
 Qa9ltimMV1fA6seQeS3QDgolj2eAVlosgycqtMI83qwXFfgmBRv9/ezh9
 l6p+iEmonhIpH0XKK5TwOw6p4ZaeGNpwzGbqBHhgBFFOYJHDBNkOhm1/v
 GY72+FkvcfLttcBWnl+975EOxRU7uWmx7lI9l57fNO/apnl4G93zV9ouq
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TI0dFJ+q
Subject: [Intel-wired-lan] [PATCH net-next v7 9/9] idpf: generalize mailbox
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
index 49156560a021..9aced0ee6e93 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1288,7 +1288,7 @@ void idpf_mbx_task(struct work_struct *work)
 		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
 				   msecs_to_jiffies(300));
 
-	idpf_recv_mb_msg(adapter);
+	idpf_recv_mb_msg(adapter, adapter->hw.arq);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 8c2008477621..7527b967e2e7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -158,7 +158,8 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
 	if (trig_cause == IDPF_HR_FUNC_RESET &&
 	    !test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
-		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
+		idpf_send_mb_msg(adapter, adapter->hw.asq,
+				 VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index b4fa00bbaa12..9e50173b80e9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -117,13 +117,15 @@ static void idpf_recv_event_msg(struct idpf_adapter *adapter,
 
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
@@ -134,7 +136,7 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
 	if (!q_msg)
 		return -ENOMEM;
 
-	err = idpf_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
+	err = idpf_ctlq_clean_sq(asq, &num_q_msg, q_msg);
 	if (err)
 		goto err_kfree;
 
@@ -206,7 +208,8 @@ static void idpf_prepare_ptp_mb_msg(struct idpf_adapter *adapter, u32 op,
 
 /**
  * idpf_send_mb_msg - Send message over mailbox
- * @adapter: Driver specific private structure
+ * @adapter: driver specific private structure
+ * @asq: control queue to send message to
  * @op: virtchnl opcode
  * @msg_size: size of the payload
  * @msg: pointer to buffer holding the payload
@@ -216,8 +219,8 @@ static void idpf_prepare_ptp_mb_msg(struct idpf_adapter *adapter, u32 op,
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
@@ -231,7 +234,7 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	if (idpf_is_reset_detected(adapter))
 		return 0;
 
-	err = idpf_mb_clean(adapter);
+	err = idpf_mb_clean(adapter, asq);
 	if (err)
 		return err;
 
@@ -267,7 +270,7 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	ctlq_msg->ctx.indirect.payload = dma_mem;
 	ctlq_msg->ctx.sw_cookie.data = cookie;
 
-	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
+	err = idpf_ctlq_send(&adapter->hw, asq, 1, ctlq_msg);
 	if (err)
 		goto send_error;
 
@@ -463,7 +466,7 @@ ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 	cookie = FIELD_PREP(IDPF_VC_XN_SALT_M, xn->salt) |
 		 FIELD_PREP(IDPF_VC_XN_IDX_M, xn->idx);
 
-	retval = idpf_send_mb_msg(adapter, params->vc_op,
+	retval = idpf_send_mb_msg(adapter, adapter->hw.asq, params->vc_op,
 				  send_buf->iov_len, send_buf->iov_base,
 				  cookie);
 	if (retval) {
@@ -662,12 +665,13 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 
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
@@ -679,7 +683,7 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		 * actually received on num_recv.
 		 */
 		num_recv = 1;
-		err = idpf_ctlq_recv(adapter->hw.arq, &num_recv, &ctlq_msg);
+		err = idpf_ctlq_recv(arq, &num_recv, &ctlq_msg);
 		if (err || !num_recv)
 			break;
 
@@ -695,8 +699,7 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		else
 			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
 
-		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw,
-						   adapter->hw.arq,
+		post_err = idpf_ctlq_post_rx_buffs(&adapter->hw, arq,
 						   &num_recv, &dma_mem);
 
 		/* If post failed clear the only buffer we supplied */
@@ -2965,7 +2968,7 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 {
 	if (adapter->hw.arq && adapter->hw.asq) {
-		idpf_mb_clean(adapter);
+		idpf_mb_clean(adapter, adapter->hw.asq);
 		idpf_ctlq_deinit(&adapter->hw);
 	}
 	adapter->hw.arq = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 98f1e9909ee2..2362b7bd5ac6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -114,9 +114,9 @@ bool idpf_sideband_action_ena(struct idpf_vport *vport,
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

