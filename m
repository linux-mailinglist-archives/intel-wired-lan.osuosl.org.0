Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 683038417FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 01:59:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E614F82EAD;
	Tue, 30 Jan 2024 00:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E614F82EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706576387;
	bh=z5dtnV56gbHU27QxHmlgNyiPC9IAkdBeuHZ6u9dE2K4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j7IGKsP19NXDFqi/+RHFp9lCX8O7KgDE1fa1Al5AzGdWMiCOJsB6i0affEjqDFuXJ
	 UO+KltxekrbuQrqY3FxjOodLCbOn1RtSAdUQBwWn73uU7855/ryHKR29c58GUF04Z6
	 9ZoBnA1AX5sqs5deYMuJlVoMLrKcAO/JJOlI49ORgMUCF0Sb/iNchiK7YRa/q0vMo1
	 5LAN77W2g5+jxCkR5wQHMYNb8Cyh9/IGz+UTCFKnrv6+8BmCY54HiTYbuC+RC7yAJd
	 Mu7DpXSR9Z1/K9QHWbfuFCjDncVuJOGLEgMvoCCZSJ7TnH8Iju3QujMNf5aClHqGZb
	 X+/kbelre2Zcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZUR7dEaDUFo; Tue, 30 Jan 2024 00:59:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D691082951;
	Tue, 30 Jan 2024 00:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D691082951
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBCD61BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C53FB60E44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C53FB60E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnPn11DP-tFN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 00:59:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C85C2605AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C85C2605AE
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9870852"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="9870852"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 16:59:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="1119078063"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="1119078063"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2024 16:59:36 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Jan 2024 16:59:17 -0800
Message-Id: <20240130005923.983026-2-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240130005923.983026-1-alan.brady@intel.com>
References: <20240130005923.983026-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706576378; x=1738112378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DprwWAUO5GBeB37zFrnXcoVETwnOVDzs1Czp8QzKkYg=;
 b=gFTBxlM0y33D9xkfOkwSDOKe2P9UdzkOdTXn+BEBdacpcSRQ7IXBm0xR
 obqLOmIWJ48IslKBuq/b7WPHqX/q7mSEUxLe4fAZpNS98Vjx9EiCpfOB8
 J3nQcYJ/lVuoYt3bZAzf+jAALsNWQuvbnQ+vLLiAalARTWkMT/y1p5Pp7
 7/J8i00YqOk2v4kO7kKAtEAzkFeoit8ZplUoc8g0E2jpBYw/vnHij+Xii
 c+3Pvr96Ojj1+TiSejMSwoRVxq9M1vuBslxWPWs2aK/MOlpsU8AhQdqNA
 ZspbwnzjHczzxcF3Us02pEOX7tIjrmxpieVt07Do0Bfgbk7PiIdpcaxPq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gFTBxlM0
Subject: [Intel-wired-lan] [PATCH v3 1/7 iwl-next] idpf: implement virtchnl
 transaction manager
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
Cc: willemdebruijn.kernel@gmail.com, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com, igor.bagnucki@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This starts refactoring how virtchnl messages are handled by adding a
transaction manager (idpf_vc_xn_manager).

There are two primary motivations here which are to enable handling of
multiple messages at once and to make it more robust in general. As it
is right now, the driver may only have one pending message at a time and
there's no guarantee that the response we receive was actually intended
for the message we sent prior.

This works by utilizing a "cookie" field of the message descriptor. It
is arbitrary what data we put in the cookie and the response is required
to have the same cookie the original message was sent with. Then using a
"transaction" abstraction that uses the completion API to pair responses
to the message it belongs to.

The cookie works such that the first half is the index to the
transaction in our array, and the second half is a "salt" that gets
incremented every message. This enables quick lookups into the array and
also ensuring we have the correct message. The salt is necessary because
after, for example, a message times out and we deem the response was
lost for some reason, we could theoretically reuse the same index but
using a different salt ensures that when we do actually get a response
it's not the old message that timed out previously finally coming in.
Since the number of transactions allocated is U8_MAX and the salt is 8
bits, we can never have a conflict because we can't roll over the salt
without using more transactions than we have available.

This starts by only converting the VIRTCHNL2_OP_VERSION message to use
this new transaction API. Follow up patches will convert all virtchnl
messages to use the API.

While we're here we can make idpf_send_mb_msg a little better by using
auto-variables.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 101 +++-
 .../ethernet/intel/idpf/idpf_controlq_api.h   |   5 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 538 +++++++++++++++---
 6 files changed, 554 insertions(+), 95 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 0acc125decb3..92103c3cf5a0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -39,6 +39,11 @@ struct idpf_vport_max_q;
 	((IDPF_CTLQ_MAX_BUF_LEN - (struct_sz)) / (chunk_sz))
 #define IDPF_WAIT_FOR_EVENT_TIMEO_MIN	2000
 #define IDPF_WAIT_FOR_EVENT_TIMEO	60000
+#define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
+#define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
+#define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
+#define IDPF_VC_XN_SALT_M		GENMASK(15, 8)
+#define IDPF_VC_XN_RING_LEN		U8_MAX
 
 #define IDPF_MAX_WAIT			500
 
@@ -66,14 +71,12 @@ struct idpf_mac_filter {
 
 /**
  * enum idpf_state - State machine to handle bring up
- * @__IDPF_STARTUP: Start the state machine
  * @__IDPF_VER_CHECK: Negotiate virtchnl version
  * @__IDPF_GET_CAPS: Negotiate capabilities
  * @__IDPF_INIT_SW: Init based on given capabilities
  * @__IDPF_STATE_LAST: Must be last, used to determine size
  */
 enum idpf_state {
-	__IDPF_STARTUP,
 	__IDPF_VER_CHECK,
 	__IDPF_GET_CAPS,
 	__IDPF_INIT_SW,
@@ -314,6 +317,96 @@ struct idpf_port_stats {
 	struct virtchnl2_vport_stats vport_stats;
 };
 
+/**
+ * enum idpf_vc_xn_state - Virtchnl transaction status
+ * @IDPF_VC_XN_IDLE: not expecting a reply, ready to be used
+ * @IDPF_VC_XN_WAITING: expecting a reply, not yet received
+ * @IDPF_VC_XN_COMPLETED_SUCCESS: a reply was expected and received,
+ *				  buffer updated
+ * @IDPF_VC_XN_COMPLETED_FAILED: a reply was expected and received, but there
+ *				 was an error, buffer not updated
+ * @IDPF_VC_XN_SHUTDOWN: transaction object cannot be used, VC torn down
+ * @IDPF_VC_XN_ASYNC: transaction sent asynchronously and doesn't have the
+ *		      return context; a callback may be provided to handle
+ *		      return
+ */
+enum idpf_vc_xn_state {
+	IDPF_VC_XN_IDLE = 1,
+	IDPF_VC_XN_WAITING,
+	IDPF_VC_XN_COMPLETED_SUCCESS,
+	IDPF_VC_XN_COMPLETED_FAILED,
+	IDPF_VC_XN_SHUTDOWN,
+	IDPF_VC_XN_ASYNC,
+};
+
+struct idpf_vc_xn;
+/* Callback for asynchronous messages */
+typedef int (*async_vc_cb) (struct idpf_adapter *, struct idpf_vc_xn *,
+			    const struct idpf_ctlq_msg *);
+
+/**
+ * struct idpf_vc_xn - Data structure representing virtchnl transactions
+ * @completed: virtchnl event loop uses that to signal when a reply is
+ *	       available, uses kernel completion API
+ * @state: virtchnl event loop stores the data below, protected by the
+ *	   completion's lock.
+ * @reply_sz: Original size of reply, may be > reply_buf.iov_len; it will be
+ *	      truncated on its way to the receiver thread according to
+ *	      reply_buf.iov_len.
+ * @reply: Reference to the buffer(s) where the reply data should be written
+ *	   to. May be 0-length (then NULL address permitted) if the reply data
+ *	   should be ignored.
+ * @async_handler: if sent asynchronously, a callback can be provided to handle
+ *		   the reply when it's received
+ * @vc_op: corresponding opcode sent with this transaction
+ * @idx: index used as retrieval on reply receive, used for cookie
+ * @salt: changed every message to make unique, used for cookie
+ */
+struct idpf_vc_xn {
+	struct completion completed;
+	enum idpf_vc_xn_state state;
+	size_t reply_sz;
+	struct kvec reply;
+	async_vc_cb async_handler;
+	u32 vc_op;
+	u8 idx;
+	u8 salt;
+};
+
+/**
+ * struct idpf_vc_xn_params - Parameters for executing transaction
+ * @send_buf: kvec for send buffer
+ * @recv_buf: kvec for recv buffer, may be NULL, must then have zero length
+ * @timeout_ms: timeout to wait for reply
+ * @async: send message asynchronously, will not wait on completion
+ * @async_handler: If sent asynchronously, optional callback handler. The user
+ *		   must be careful when using async handlers as the memory for
+ *		   the recv_buf _cannot_ be on stack if this is async.
+ * @vc_op: virtchnl op to send
+ */
+struct idpf_vc_xn_params {
+	struct kvec send_buf;
+	struct kvec recv_buf;
+	int timeout_ms;
+	bool async;
+	async_vc_cb async_handler;
+	u32 vc_op;
+};
+
+/**
+ * struct idpf_vc_xn_manager - Manager for tracking transactions
+ * @ring: backing and lookup for transactions
+ * @free_xn_bm: bitmap for free transactions
+ * @xn_bm_lock: make bitmap access synchronous where necessary
+ * @salt: used to make cookie unique every message
+ */
+struct idpf_vc_xn_manager {
+	struct idpf_vc_xn ring[IDPF_VC_XN_RING_LEN];
+	DECLARE_BITMAP(free_xn_bm, IDPF_VC_XN_RING_LEN);
+	spinlock_t xn_bm_lock;
+	u8 salt;
+};
+
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @num_txq: Number of allocated TX queues
@@ -604,6 +697,7 @@ struct idpf_vport_config {
  * @vchnl_wq: Wait queue for virtchnl messages
  * @vc_state: Virtchnl message state
  * @vc_msg: Virtchnl message buffer
+ * @vcxn_mngr: Virtchnl transaction manager
  * @dev_ops: See idpf_dev_ops
  * @num_vfs: Number of allocated VFs through sysfs. PF does not directly talk
  *	     to VFs but is used to initialize them
@@ -663,6 +757,7 @@ struct idpf_adapter {
 	wait_queue_head_t vchnl_wq;
 	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
 	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
+	struct idpf_vc_xn_manager vcxn_mngr;
 	struct idpf_dev_ops dev_ops;
 	int num_vfs;
 	bool crc_enable;
@@ -939,7 +1034,7 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
 int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     void *msg, int msg_size);
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg);
+		     u16 msg_size, u8 *msg, u16 cookie);
 void idpf_set_ethtool_ops(struct net_device *netdev);
 int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 			    struct idpf_vport_max_q *max_q);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
index 8dee098bbfb0..e8e046ef2f0d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
@@ -69,6 +69,11 @@ struct idpf_ctlq_msg {
 			u8 context[IDPF_INDIRECT_CTX_SIZE];
 			struct idpf_dma_mem *payload;
 		} indirect;
+		struct {
+			u32 rsvd;
+			u16 data;
+			u16 flags;
+		} sw_cookie;
 	} ctx;
 };
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 58179bd733ff..6b4a7408246c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1823,6 +1823,8 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 		goto unlock_mutex;
 	}
 
+	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
+
 	/* Initialize the state machine, also allocate memory and request
 	 * resources
 	 */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index e1febc74cefd..c82233b112bd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -30,6 +30,7 @@ static void idpf_remove(struct pci_dev *pdev)
 		idpf_sriov_configure(pdev, 0);
 
 	idpf_vc_core_deinit(adapter);
+
 	/* Be a good citizen and leave the device clean on exit */
 	adapter->dev_ops.reg_ops.trigger_reset(adapter, IDPF_HR_FUNC_RESET);
 	idpf_deinit_dflt_mbx(adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 8ade4e3a9fe1..192d19a0c89a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -137,7 +137,7 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
 	if (trig_cause == IDPF_HR_FUNC_RESET &&
 	    !test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
-		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL);
+		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d0cdd63b3d5b..06c1edd4e5ea 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -93,16 +93,17 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
  * @op: virtchnl opcode
  * @msg_size: size of the payload
  * @msg: pointer to buffer holding the payload
+ * @cookie: unique SW generated cookie per message
  *
  * Will prepare the control queue message and initiates the send api
  *
  * Returns 0 on success, negative on failure
  */
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg)
+		     u16 msg_size, u8 *msg, u16 cookie)
 {
-	struct idpf_ctlq_msg *ctlq_msg;
-	struct idpf_dma_mem *dma_mem;
+	struct idpf_ctlq_msg *ctlq_msg __free(kfree) = NULL;
+	struct idpf_dma_mem *dma_mem __free(kfree) = NULL;
 	int err;
 
 	/* If we are here and a reset is detected nothing much can be
@@ -122,10 +123,8 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 		return -ENOMEM;
 
 	dma_mem = kzalloc(sizeof(*dma_mem), GFP_ATOMIC);
-	if (!dma_mem) {
-		err = -ENOMEM;
-		goto dma_mem_error;
-	}
+	if (!dma_mem)
+		return -ENOMEM;
 
 	ctlq_msg->opcode = idpf_mbq_opc_send_msg_to_cp;
 	ctlq_msg->func_id = 0;
@@ -135,28 +134,24 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	dma_mem->size = IDPF_CTLQ_MAX_BUF_LEN;
 	dma_mem->va = dma_alloc_coherent(&adapter->pdev->dev, dma_mem->size,
 					 &dma_mem->pa, GFP_ATOMIC);
-	if (!dma_mem->va) {
-		err = -ENOMEM;
-		goto dma_alloc_error;
-	}
-	memcpy(dma_mem->va, msg, msg_size);
+	if (!dma_mem->va)
+		return -ENOMEM;
+
+	/* It's possible we're just sending an opcode but no buffer */
+	if (msg && msg_size)
+		memcpy(dma_mem->va, msg, msg_size);
 	ctlq_msg->ctx.indirect.payload = dma_mem;
+	ctlq_msg->ctx.sw_cookie.data = cookie;
 
 	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
-	if (err)
-		goto send_error;
-
-	return 0;
+	if (err) {
+		dma_free_coherent(&adapter->pdev->dev, dma_mem->size,
+				  dma_mem->va, dma_mem->pa);
 
-send_error:
-	dma_free_coherent(&adapter->pdev->dev, dma_mem->size, dma_mem->va,
-			  dma_mem->pa);
-dma_alloc_error:
-	kfree(dma_mem);
-dma_mem_error:
-	kfree(ctlq_msg);
+		return err;
+	}
 
-	return err;
+	return 0;
 }
 
 /**
@@ -361,6 +356,372 @@ static void idpf_recv_vchnl_op(struct idpf_adapter *adapter,
 	}
 }
 
+/* API for virtchnl "transaction" support ("xn" for short).
+ *
+ * We are reusing the completion lock to serialize the accesses to the
+ * transaction state for simplicity, but it could be its own separate synchro
+ * as well. For now, this API is only used from within a workqueue context;
+ * raw_spin_lock() is enough.
+ */
+/**
+ * idpf_vc_xn_lock - Request exclusive access to vc transaction
+ * @xn: struct idpf_vc_xn* to access
+ */
+#define idpf_vc_xn_lock(xn)			\
+	raw_spin_lock(&(xn)->completed.wait.lock)
+
+/**
+ * idpf_vc_xn_unlock - Release exclusive access to vc transaction
+ * @xn: struct idpf_vc_xn* to access
+ */
+#define idpf_vc_xn_unlock(xn)		\
+	raw_spin_unlock(&(xn)->completed.wait.lock)
+
+/**
+ * idpf_vc_xn_release_bufs - Release reference to reply buffer(s) and
+ * reset the transaction state.
+ * @xn: struct idpf_vc_xn to update
+ */
+static void idpf_vc_xn_release_bufs(struct idpf_vc_xn *xn)
+{
+	xn->reply.iov_base = NULL;
+	xn->reply.iov_len = 0;
+
+	if (xn->state != IDPF_VC_XN_SHUTDOWN)
+		xn->state = IDPF_VC_XN_IDLE;
+}
+
+/**
+ * idpf_vc_xn_init - Initialize virtchnl transaction object
+ * @vcxn_mngr: pointer to vc transaction manager struct
+ */
+static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
+{
+	int i;
+
+	spin_lock_init(&vcxn_mngr->xn_bm_lock);
+
+	for (i = 0; i < ARRAY_SIZE(vcxn_mngr->ring); i++) {
+		struct idpf_vc_xn *xn = &vcxn_mngr->ring[i];
+
+		xn->state = IDPF_VC_XN_IDLE;
+		xn->idx = i;
+		idpf_vc_xn_release_bufs(xn);
+		init_completion(&xn->completed);
+	}
+
+	bitmap_fill(vcxn_mngr->free_xn_bm, IDPF_VC_XN_RING_LEN);
+}
+
+/**
+ * idpf_vc_xn_shutdown - Uninitialize virtchnl transaction object
+ * @vcxn_mngr: pointer to vc transaction manager struct
+ *
+ * All waiting threads will be woken-up and their transaction aborted. Further
+ * operations on that object will fail.
+ */
+static void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
+{
+	int i;
+
+	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
+	bitmap_zero(vcxn_mngr->free_xn_bm, IDPF_VC_XN_RING_LEN);
+	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
+
+	for (i = 0; i < ARRAY_SIZE(vcxn_mngr->ring); i++) {
+		struct idpf_vc_xn *xn = &vcxn_mngr->ring[i];
+
+		idpf_vc_xn_lock(xn);
+		xn->state = IDPF_VC_XN_SHUTDOWN;
+		idpf_vc_xn_release_bufs(xn);
+		idpf_vc_xn_unlock(xn);
+		complete_all(&xn->completed);
+	}
+}
+
+/**
+ * idpf_vc_xn_pop_free - Pop a free transaction from free list
+ * @vcxn_mngr: transaction manager to pop from
+ *
+ * Returns NULL if no free transactions
+ */
+static
+struct idpf_vc_xn *idpf_vc_xn_pop_free(struct idpf_vc_xn_manager *vcxn_mngr)
+{
+	struct idpf_vc_xn *xn = NULL;
+	unsigned long free_idx;
+
+	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
+	free_idx = find_first_bit(vcxn_mngr->free_xn_bm, IDPF_VC_XN_RING_LEN);
+	if (free_idx == IDPF_VC_XN_RING_LEN)
+		goto do_unlock;
+
+	clear_bit(free_idx, vcxn_mngr->free_xn_bm);
+	xn = &vcxn_mngr->ring[free_idx];
+	xn->salt = vcxn_mngr->salt++;
+
+do_unlock:
+	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
+
+	return xn;
+}
+
+/**
+ * idpf_vc_xn_push_free - Push a free transaction to free list
+ * @vcxn_mngr: transaction manager to push to
+ * @xn: transaction to push
+ */
+static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
+				 struct idpf_vc_xn *xn)
+{
+	idpf_vc_xn_release_bufs(xn);
+	set_bit(xn->idx, vcxn_mngr->free_xn_bm);
+}
+
+/**
+ * idpf_vc_xn_exec - Perform a send/recv virtchnl transaction
+ * @adapter: driver specific private structure with vcxn_mngr
+ * @params: parameters for this particular transaction including
+ *   -vc_op: virtchannel operation to send
+ *   -send_buf: kvec iov for send buf and len
+ *   -recv_buf: kvec iov for recv buf and len (ignored if NULL)
+ *   -timeout_ms: timeout waiting for a reply (milliseconds)
+ *   -async: don't wait for message reply, will lose caller context
+ *   -async_handler: callback to handle async replies
+ *
+ * @returns >= 0 for success, the size of the initial reply (may or may not be
+ * >= @recv_buf.iov_len, but we never overflow @@recv_buf_iov_base). < 0 for
+ * error.
+ */
+static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
+			       struct idpf_vc_xn_params params)
+{
+	struct kvec *send_buf = &params.send_buf;
+	struct idpf_vc_xn *xn;
+	ssize_t retval;
+	u16 cookie;
+
+	xn = idpf_vc_xn_pop_free(&adapter->vcxn_mngr);
+	/* no free transactions available */
+	if (!xn)
+		return -ENOSPC;
+
+	idpf_vc_xn_lock(xn);
+	if (xn->state == IDPF_VC_XN_SHUTDOWN) {
+		retval = -ENXIO;
+		goto only_unlock;
+	} else if (xn->state != IDPF_VC_XN_IDLE) {
+		/* We're just going to clobber this transaction even though
+		 * it's not IDLE. If we don't reuse it we could theoretically
+		 * eventually leak all the free transactions and not be able to
+		 * send any messages. At least this way we make an attempt to
+		 * remain functional even though something really bad is
+		 * happening that's corrupting what was supposed to be free
+		 * transactions.
+		 */
+		WARN_ONCE(1, "There should only be idle transactions in free list (idx %d op %d)\n",
+			  xn->idx, xn->vc_op);
+	}
+
+	xn->reply = params.recv_buf;
+	xn->reply_sz = 0;
+	xn->state = params.async ? IDPF_VC_XN_ASYNC : IDPF_VC_XN_WAITING;
+	xn->vc_op = params.vc_op;
+	xn->async_handler = params.async_handler;
+	idpf_vc_xn_unlock(xn);
+
+	if (!params.async)
+		reinit_completion(&xn->completed);
+	cookie = FIELD_PREP(IDPF_VC_XN_SALT_M, xn->salt) |
+		 FIELD_PREP(IDPF_VC_XN_IDX_M, xn->idx);
+
+	retval = idpf_send_mb_msg(adapter, params.vc_op,
+				  send_buf->iov_len, send_buf->iov_base,
+				  cookie);
+	if (retval) {
+		idpf_vc_xn_lock(xn);
+		goto release_and_unlock;
+	}
+
+	if (params.async)
+		return 0;
+
+	wait_for_completion_timeout(&xn->completed,
+				    msecs_to_jiffies(params.timeout_ms));
+
+	/* No need to check the return value; we check the final state of the
+	 * transaction below. It's possible the transaction actually gets more
+	 * timeout than specified if we get preempted here but after
+	 * wait_for_completion_timeout returns. This should be non-issue
+	 * however.
+	 */
+	idpf_vc_xn_lock(xn);
+	switch (xn->state) {
+	case IDPF_VC_XN_SHUTDOWN:
+		retval = -ENXIO;
+		goto only_unlock;
+	case IDPF_VC_XN_WAITING:
+		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
+				       params.vc_op, params.timeout_ms);
+		retval = -ETIME;
+		break;
+	case IDPF_VC_XN_COMPLETED_SUCCESS:
+		retval = xn->reply_sz;
+		break;
+	case IDPF_VC_XN_COMPLETED_FAILED:
+		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction failed (op %d)\n",
+				       params.vc_op);
+		retval = -EIO;
+		break;
+	default:
+		/* Invalid state. */
+		WARN_ON_ONCE(1);
+		retval = -EIO;
+		break;
+	}
+
+release_and_unlock:
+	idpf_vc_xn_push_free(&adapter->vcxn_mngr, xn);
+	/* If we receive a VC reply after here, it will be dropped. */
+only_unlock:
+	idpf_vc_xn_unlock(xn);
+
+	return retval;
+}
+
+/**
+ * idpf_vc_xn_forward_async - Handle async reply receives
+ * @adapter: private data struct
+ * @xn: transaction to handle
+ * @ctlq_msg: corresponding ctlq_msg
+ *
+ * For async sends we're going to lose the caller's context so, if an
+ * async_handler was provided, it can deal with the reply, otherwise we'll just
+ * check and report if there is an error.
+ */
+static int
+idpf_vc_xn_forward_async(struct idpf_adapter *adapter, struct idpf_vc_xn *xn,
+			 const struct idpf_ctlq_msg *ctlq_msg)
+{
+	int err = 0;
+
+	if (ctlq_msg->cookie.mbx.chnl_opcode != xn->vc_op) {
+		dev_err_ratelimited(&adapter->pdev->dev, "Async message opcode does not match transaction opcode (msg: %d) (xn: %d)\n",
+				    ctlq_msg->cookie.mbx.chnl_opcode, xn->vc_op);
+		xn->reply_sz = 0;
+		err = -EINVAL;
+		goto release_bufs;
+	}
+
+	if (xn->async_handler) {
+		err = xn->async_handler(adapter, xn, ctlq_msg);
+		goto release_bufs;
+	}
+
+	if (ctlq_msg->cookie.mbx.chnl_retval) {
+		xn->reply_sz = 0;
+		dev_err_ratelimited(&adapter->pdev->dev, "Async message failure (op %d)\n",
+				    ctlq_msg->cookie.mbx.chnl_opcode);
+		err = -EINVAL;
+	}
+
+release_bufs:
+	idpf_vc_xn_push_free(&adapter->vcxn_mngr, xn);
+
+	return err;
+}
+
+/**
+ * idpf_vc_xn_forward_reply - copy a reply back to receiving thread
+ * @adapter: driver specific private structure with vcxn_mngr
+ * @ctlq_msg: controlq message to send back to receiving thread
+ */
+static int
+idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
+			 const struct idpf_ctlq_msg *ctlq_msg)
+{
+	const void *payload = NULL;
+	size_t payload_size = 0;
+	struct idpf_vc_xn *xn;
+	u16 msg_info;
+	int err = 0;
+	u16 xn_idx;
+	u16 salt;
+
+	msg_info = ctlq_msg->ctx.sw_cookie.data;
+	xn_idx = FIELD_GET(IDPF_VC_XN_IDX_M, msg_info);
+	if (xn_idx >= ARRAY_SIZE(adapter->vcxn_mngr.ring)) {
+		dev_err_ratelimited(&adapter->pdev->dev, "Out of bounds cookie received: %02x\n",
+				    xn_idx);
+		return -EINVAL;
+	}
+	xn = &adapter->vcxn_mngr.ring[xn_idx];
+	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
+	if (xn->salt != salt) {
+		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
+				    xn->salt, salt);
+		return -EINVAL;
+	}
+
+	idpf_vc_xn_lock(xn);
+	switch (xn->state) {
+	case IDPF_VC_XN_WAITING:
+		/* success */
+		break;
+	case IDPF_VC_XN_IDLE:
+		dev_err_ratelimited(&adapter->pdev->dev, "Unexpected or belated VC reply (op %d)\n",
+				    ctlq_msg->cookie.mbx.chnl_opcode);
+		fallthrough;
+	case IDPF_VC_XN_SHUTDOWN:
+		err = -EINVAL;
+		goto out_unlock;
+	case IDPF_VC_XN_ASYNC:
+		err = idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
+		idpf_vc_xn_unlock(xn);
+		return err;
+	default:
+		dev_err_ratelimited(&adapter->pdev->dev, "Overwriting VC reply (op %d)\n",
+				    ctlq_msg->cookie.mbx.chnl_opcode);
+		err = -EBUSY;
+		goto out_unlock;
+	}
+
+	if (ctlq_msg->cookie.mbx.chnl_opcode != xn->vc_op) {
+		dev_err_ratelimited(&adapter->pdev->dev, "Message opcode does not match transaction opcode (msg: %d) (xn: %d)\n",
+				    ctlq_msg->cookie.mbx.chnl_opcode, xn->vc_op);
+		xn->reply_sz = 0;
+		xn->state = IDPF_VC_XN_COMPLETED_FAILED;
+		err = -EINVAL;
+		goto out_unlock;
+	}
+
+	if (ctlq_msg->cookie.mbx.chnl_retval) {
+		xn->reply_sz = 0;
+		xn->state = IDPF_VC_XN_COMPLETED_FAILED;
+		err = -EINVAL;
+		goto out_unlock;
+	}
+
+	if (ctlq_msg->data_len) {
+		payload = ctlq_msg->ctx.indirect.payload->va;
+		payload_size = ctlq_msg->ctx.indirect.payload->size;
+	}
+
+	xn->reply_sz = payload_size;
+	xn->state = IDPF_VC_XN_COMPLETED_SUCCESS;
+
+	if (xn->reply.iov_base && xn->reply.iov_len && payload_size)
+		memcpy(xn->reply.iov_base, payload,
+		       min_t(size_t, xn->reply.iov_len, payload_size));
+
+out_unlock:
+	idpf_vc_xn_unlock(xn);
+	/* we _cannot_ hold lock while calling complete */
+	complete(&xn->completed);
+
+	return err;
+}
+
 /**
  * idpf_recv_mb_msg - Receive message over mailbox
  * @adapter: Driver specific private structure
@@ -429,6 +790,8 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		 */
 		switch (ctlq_msg.cookie.mbx.chnl_opcode) {
 		case VIRTCHNL2_OP_VERSION:
+			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
+			break;
 		case VIRTCHNL2_OP_GET_CAPS:
 			if (ctlq_msg.cookie.mbx.chnl_retval) {
 				dev_err(&adapter->pdev->dev, "Failure initializing, vc op: %u retval: %u\n",
@@ -785,7 +1148,11 @@ static int idpf_wait_for_marker_event(struct idpf_vport *vport)
  */
 static int idpf_send_ver_msg(struct idpf_adapter *adapter)
 {
+	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_version_info vvi;
+	ssize_t reply_sz;
+	u32 major, minor;
+	int err = 0;
 
 	if (adapter->virt_ver_maj) {
 		vvi.major = cpu_to_le32(adapter->virt_ver_maj);
@@ -795,43 +1162,29 @@ static int idpf_send_ver_msg(struct idpf_adapter *adapter)
 		vvi.minor = cpu_to_le32(IDPF_VIRTCHNL_VERSION_MINOR);
 	}
 
-	return idpf_send_mb_msg(adapter, VIRTCHNL2_OP_VERSION, sizeof(vvi),
-				(u8 *)&vvi);
-}
-
-/**
- * idpf_recv_ver_msg - Receive virtchnl version message
- * @adapter: Driver specific private structure
- *
- * Receive virtchnl version message. Returns 0 on success, -EAGAIN if we need
- * to send version message again, otherwise negative on failure.
- */
-static int idpf_recv_ver_msg(struct idpf_adapter *adapter)
-{
-	struct virtchnl2_version_info vvi;
-	u32 major, minor;
-	int err;
+	xn_params.vc_op = VIRTCHNL2_OP_VERSION;
+	xn_params.send_buf.iov_base = &vvi;
+	xn_params.send_buf.iov_len = sizeof(vvi);
+	xn_params.recv_buf = xn_params.send_buf;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
-	err = idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_VERSION, &vvi,
-			       sizeof(vvi));
-	if (err)
-		return err;
+	reply_sz = idpf_vc_xn_exec(adapter, xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz < sizeof(vvi))
+		return -EIO;
 
 	major = le32_to_cpu(vvi.major);
 	minor = le32_to_cpu(vvi.minor);
 
 	if (major > IDPF_VIRTCHNL_VERSION_MAJOR) {
-		dev_warn(&adapter->pdev->dev,
-			 "Virtchnl major version (%d) greater than supported\n",
-			 major);
-
+		dev_warn(&adapter->pdev->dev, "Virtchnl major version greater than supported\n");
 		return -EINVAL;
 	}
 
 	if (major == IDPF_VIRTCHNL_VERSION_MAJOR &&
 	    minor > IDPF_VIRTCHNL_VERSION_MINOR)
-		dev_warn(&adapter->pdev->dev,
-			 "Virtchnl minor version (%d) didn't match\n", minor);
+		dev_warn(&adapter->pdev->dev, "Virtchnl minor version didn't match\n");
 
 	/* If we have a mismatch, resend version to update receiver on what
 	 * version we will use.
@@ -914,7 +1267,7 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 			    VIRTCHNL2_CAP_LOOPBACK);
 
 	return idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS, sizeof(caps),
-				(u8 *)&caps);
+				(u8 *)&caps, 0);
 }
 
 /**
@@ -1289,7 +1642,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CREATE_VPORT, buf_size,
-			       (u8 *)vport_msg);
+			       (u8 *)vport_msg, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1375,7 +1728,7 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DESTROY_VPORT,
-			       sizeof(v_id), (u8 *)&v_id);
+			       sizeof(v_id), (u8 *)&v_id, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1406,7 +1759,7 @@ int idpf_send_enable_vport_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ENABLE_VPORT,
-			       sizeof(v_id), (u8 *)&v_id);
+			       sizeof(v_id), (u8 *)&v_id, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1437,7 +1790,7 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DISABLE_VPORT,
-			       sizeof(v_id), (u8 *)&v_id);
+			       sizeof(v_id), (u8 *)&v_id, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1556,7 +1909,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
 		err = idpf_send_mb_msg(vport->adapter,
 				       VIRTCHNL2_OP_CONFIG_TX_QUEUES,
-				       buf_sz, (u8 *)ctq);
+				       buf_sz, (u8 *)ctq, 0);
 		if (err)
 			goto mbx_error;
 
@@ -1708,7 +2061,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 
 		err = idpf_send_mb_msg(vport->adapter,
 				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
-				       buf_sz, (u8 *)crq);
+				       buf_sz, (u8 *)crq, 0);
 		if (err)
 			goto mbx_error;
 
@@ -1875,7 +2228,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 		qcs = &eq->chunks;
 		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
 
-		err = idpf_send_mb_msg(adapter, vc_op, buf_sz, (u8 *)eq);
+		err = idpf_send_mb_msg(adapter, vc_op, buf_sz, (u8 *)eq, 0);
 		if (err)
 			goto mbx_error;
 
@@ -2019,7 +2372,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		if (map) {
 			err = idpf_send_mb_msg(adapter,
 					       VIRTCHNL2_OP_MAP_QUEUE_VECTOR,
-					       buf_sz, (u8 *)vqvm);
+					       buf_sz, (u8 *)vqvm, 0);
 			if (!err)
 				err = idpf_wait_for_event(adapter, vport,
 							  IDPF_VC_MAP_IRQ,
@@ -2027,7 +2380,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		} else {
 			err = idpf_send_mb_msg(adapter,
 					       VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
-					       buf_sz, (u8 *)vqvm);
+					       buf_sz, (u8 *)vqvm, 0);
 			if (!err)
 				err =
 				idpf_min_wait_for_event(adapter, vport,
@@ -2157,7 +2510,7 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEL_QUEUES,
-			       buf_size, (u8 *)eq);
+			       buf_size, (u8 *)eq, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2221,7 +2574,7 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	mutex_lock(&((struct idpf_vport *)vport)->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ADD_QUEUES,
-			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq);
+			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2280,7 +2633,7 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
-			       sizeof(ac), (u8 *)&ac);
+			       sizeof(ac), (u8 *)&ac, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2336,7 +2689,7 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEALLOC_VECTORS, buf_size,
-			       (u8 *)vcs);
+			       (u8 *)vcs, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2382,7 +2735,7 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_SRIOV_VFS,
-			       sizeof(svi), (u8 *)&svi);
+			       sizeof(svi), (u8 *)&svi, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2420,7 +2773,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_STATS,
 			       sizeof(struct virtchnl2_vport_stats),
-			       (u8 *)&stats_msg);
+			       (u8 *)&stats_msg, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2489,7 +2842,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
 
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_LUT,
-				       buf_size, (u8 *)rl);
+				       buf_size, (u8 *)rl, 0);
 		if (err)
 			goto free_mem;
 
@@ -2500,7 +2853,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 	}
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_LUT,
-			       buf_size, (u8 *)rl);
+			       buf_size, (u8 *)rl, 0);
 	if (err)
 		goto free_mem;
 
@@ -2559,7 +2912,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 
 	if (get) {
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_KEY,
-				       buf_size, (u8 *)rk);
+				       buf_size, (u8 *)rk, 0);
 		if (err)
 			goto error;
 
@@ -2591,7 +2944,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 			rk->key_flex[i] = rss_data->rss_key[i];
 
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_KEY,
-				       buf_size, (u8 *)rk);
+				       buf_size, (u8 *)rk, 0);
 		if (err)
 			goto error;
 
@@ -2688,7 +3041,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_PTYPE_INFO,
 				       sizeof(struct virtchnl2_get_ptype_info),
-				       (u8 *)&get_ptype_info);
+				       (u8 *)&get_ptype_info, 0);
 		if (err)
 			goto vc_buf_unlock;
 
@@ -2882,7 +3235,7 @@ int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(vport->adapter, VIRTCHNL2_OP_LOOPBACK,
-			       sizeof(loopback), (u8 *)&loopback);
+			       sizeof(loopback), (u8 *)&loopback, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2958,7 +3311,7 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 		return -ENOENT;
 	}
 
-	adapter->state = __IDPF_STARTUP;
+	adapter->state = __IDPF_VER_CHECK;
 
 	return 0;
 }
@@ -3055,27 +3408,28 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	u16 num_max_vports;
 	int err = 0;
 
+	idpf_vc_xn_init(&adapter->vcxn_mngr);
+
 	while (adapter->state != __IDPF_INIT_SW) {
 		switch (adapter->state) {
-		case __IDPF_STARTUP:
-			if (idpf_send_ver_msg(adapter))
-				goto init_failed;
-			adapter->state = __IDPF_VER_CHECK;
-			goto restart;
 		case __IDPF_VER_CHECK:
-			err = idpf_recv_ver_msg(adapter);
-			if (err == -EIO) {
-				return err;
-			} else if (err == -EAGAIN) {
-				adapter->state = __IDPF_STARTUP;
+			err = idpf_send_ver_msg(adapter);
+			switch (err) {
+			case 0:
+				/* success, move state machine forward */
+				adapter->state = __IDPF_GET_CAPS;
+				err = idpf_send_get_caps_msg(adapter);
+				if (err)
+					goto init_failed;
+				fallthrough;
+			case -EAGAIN:
 				goto restart;
-			} else if (err) {
+			default:
+				/* Something bad happened, try again but only a
+				 * few times.
+				 */
 				goto init_failed;
 			}
-			if (idpf_send_get_caps_msg(adapter))
-				goto init_failed;
-			adapter->state = __IDPF_GET_CAPS;
-			goto restart;
 		case __IDPF_GET_CAPS:
 			if (idpf_recv_get_caps_msg(adapter))
 				goto init_failed;
@@ -3168,7 +3522,8 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	 * register writes might not have taken effect. Retry to initialize
 	 * the mailbox again
 	 */
-	adapter->state = __IDPF_STARTUP;
+	adapter->state = __IDPF_VER_CHECK;
+	idpf_vc_xn_shutdown(&adapter->vcxn_mngr);
 	idpf_deinit_dflt_mbx(adapter);
 	set_bit(IDPF_HR_DRV_LOAD, adapter->flags);
 	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
@@ -3186,6 +3541,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
 	int i;
 
+	idpf_vc_xn_shutdown(&adapter->vcxn_mngr);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
 	/* Set all bits as we dont know on which vc_state the vhnl_wq is
@@ -3739,7 +4095,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		if (async)
 			set_bit(mac_flag, vport_config->flags);
 
-		err = idpf_send_mb_msg(adapter, vop, buf_size, (u8 *)ma_list);
+		err = idpf_send_mb_msg(adapter, vop, buf_size, (u8 *)ma_list, 0);
 		if (err)
 			goto mbx_error;
 
@@ -3794,7 +4150,7 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE,
 			       sizeof(struct virtchnl2_promisc_info),
-			       (u8 *)&vpi);
+			       (u8 *)&vpi, 0);
 
 	return err;
 }
-- 
2.40.1


