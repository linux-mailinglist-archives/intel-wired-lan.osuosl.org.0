Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4415586021E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 20:05:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD227419C7;
	Thu, 22 Feb 2024 19:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OFu3LXCzxv82; Thu, 22 Feb 2024 19:04:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE21D41978
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708628698;
	bh=n5FCViJI51nA2n6GtpDPlysNeA3duaOSGVtHDskAz7A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=szkBga2hnFVRYW2sv2YY3j/pmonJwnyF2JJ+HrfLDnH95rBYwjX4G0hWyww3vwPLq
	 VvDe2IXhqP+d8z4lr1Hm2yrKlXV2+8iXIz4fuUPKO1SXP5FqpzQPJSZzIi5gj2XA5R
	 ahcuJP+mxtnFCDAks+GJkG1RimJ+J/oGF2F/G6GDxHYrrZ3rCXPzb3oNhQ+Mr/U7De
	 7ptxVz/l60nrYmKLnDpcMKtjj6MStFw7uG3BUtxWvkNZ1/q0SibqWDPJczYQJlBPS/
	 mkVjKIYsjUIf5Py3KEXGA2mYdaH0xnqpzqQ3kxWLEyg2Fhxnm5StckkOZrkNv0HVz1
	 RyEad+0JjTEKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE21D41978;
	Thu, 22 Feb 2024 19:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 912A31BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E03141984
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrQV6IgHyCJh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 19:04:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 202E941971
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 202E941971
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 202E941971
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13506359"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13506359"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:04:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10171149"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 22 Feb 2024 11:04:52 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 11:04:32 -0800
Message-ID: <20240222190441.2610930-3-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222190441.2610930-1-alan.brady@intel.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708628693; x=1740164693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SH5gA9r02FyQisemGAtoBFluIKhejXUY/d01I2Xc51U=;
 b=khP7GQYbCOKEyMU/ZkSZb0iGhq4a0WiQXR6q11PFOAm2HF6hsVqwh1nH
 Ur67wotrPWHfXqmeC3uDmSZFwPQE8UzT3lOALsuNQ573gtDApaPb+w1wH
 HuHtOcCbuP+5xGeIXNiHcWK5nn9ySXHZ4UuJ6m8fD2sjVaQBYW7T8tFTJ
 t/8vhHdLT7+Cje2qdtt0pOTuuGTfLHWRCyQb7Uj3qxMnBTkWipH18utIa
 f5ddhasjfLwENJT9FPqg/ij17XHMc4n/AHl4FIX49an0XseapYX1nnpyC
 AevxgOPMtIL+ct2UmlJ/bcyR+MJ62/Hg3NLecVlOVwOnvKgJVR06wLNtw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=khP7GQYb
Subject: [Intel-wired-lan] [PATCH v6 02/11 iwl-next] idpf: implement
 virtchnl transaction manager
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alan Brady <alan.brady@intel.com>, netdev@vger.kernel.org,
 Igor Bagnucki <igor.bagnucki@intel.com>
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

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   6 +-
 .../ethernet/intel/idpf/idpf_controlq_api.h   |   5 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   3 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 614 ++++++++++++++++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   2 +-
 7 files changed, 561 insertions(+), 73 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index b2f1bc63c3b6..c3b08d4593b0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -66,14 +66,12 @@ struct idpf_mac_filter {
 
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
@@ -560,6 +558,8 @@ struct idpf_vport_config {
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
 };
 
+struct idpf_vc_xn_manager;
+
 /**
  * struct idpf_adapter - Device data struct generated on probe
  * @pdev: PCI device struct given on probe
@@ -604,6 +604,7 @@ struct idpf_vport_config {
  * @vchnl_wq: Wait queue for virtchnl messages
  * @vc_state: Virtchnl message state
  * @vc_msg: Virtchnl message buffer
+ * @vcxn_mngr: Virtchnl transaction manager
  * @dev_ops: See idpf_dev_ops
  * @num_vfs: Number of allocated VFs through sysfs. PF does not directly talk
  *	     to VFs but is used to initialize them
@@ -663,6 +664,7 @@ struct idpf_adapter {
 	wait_queue_head_t vchnl_wq;
 	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
 	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
+	struct idpf_vc_xn_manager *vcxn_mngr;
 	struct idpf_dev_ops dev_ops;
 	int num_vfs;
 	bool crc_enable;
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
index 1832f800a370..96c0b6d38799 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1824,6 +1824,8 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 		goto unlock_mutex;
 	}
 
+	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
+
 	/* Initialize the state machine, also allocate memory and request
 	 * resources
 	 */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 92e73fdd7bbe..c9b6ef3166aa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -31,6 +31,7 @@ static void idpf_remove(struct pci_dev *pdev)
 		idpf_sriov_configure(pdev, 0);
 
 	idpf_vc_core_deinit(adapter);
+
 	/* Be a good citizen and leave the device clean on exit */
 	adapter->dev_ops.reg_ops.trigger_reset(adapter, IDPF_HR_FUNC_RESET);
 	idpf_deinit_dflt_mbx(adapter);
@@ -67,6 +68,8 @@ static void idpf_remove(struct pci_dev *pdev)
 	adapter->vport_config = NULL;
 	kfree(adapter->netdevs);
 	adapter->netdevs = NULL;
+	kfree(adapter->vcxn_mngr);
+	adapter->vcxn_mngr = NULL;
 
 	mutex_destroy(&adapter->vport_ctrl_lock);
 	mutex_destroy(&adapter->vector_lock);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index be40dd68358e..629cb5cb7c9f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -138,7 +138,7 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
 	if (trig_cause == IDPF_HR_FUNC_RESET &&
 	    !test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
-		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL);
+		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 6217a05389cd..95ca10f644b2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -4,6 +4,102 @@
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 
+#define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
+#define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
+#define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
+#define IDPF_VC_XN_SALT_M		GENMASK(15, 8)
+#define IDPF_VC_XN_RING_LEN		U8_MAX
+
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
  * idpf_recv_event_msg - Receive virtchnl event message
  * @vport: virtual port structure
@@ -94,13 +190,14 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
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
 	struct idpf_ctlq_msg *ctlq_msg;
 	struct idpf_dma_mem *dma_mem;
@@ -140,8 +237,12 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 		err = -ENOMEM;
 		goto dma_alloc_error;
 	}
-	memcpy(dma_mem->va, msg, msg_size);
+
+	/* It's possible we're just sending an opcode but no buffer */
+	if (msg && msg_size)
+		memcpy(dma_mem->va, msg, msg_size);
 	ctlq_msg->ctx.indirect.payload = dma_mem;
+	ctlq_msg->ctx.sw_cookie.data = cookie;
 
 	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
 	if (err)
@@ -362,6 +463,378 @@ static void idpf_recv_vchnl_op(struct idpf_adapter *adapter,
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
+			       const struct idpf_vc_xn_params *params)
+{
+	const struct kvec *send_buf = &params->send_buf;
+	struct idpf_vc_xn *xn;
+	ssize_t retval;
+	u16 cookie;
+
+	xn = idpf_vc_xn_pop_free(adapter->vcxn_mngr);
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
+	xn->reply = params->recv_buf;
+	xn->reply_sz = 0;
+	xn->state = params->async ? IDPF_VC_XN_ASYNC : IDPF_VC_XN_WAITING;
+	xn->vc_op = params->vc_op;
+	xn->async_handler = params->async_handler;
+	idpf_vc_xn_unlock(xn);
+
+	if (!params->async)
+		reinit_completion(&xn->completed);
+	cookie = FIELD_PREP(IDPF_VC_XN_SALT_M, xn->salt) |
+		 FIELD_PREP(IDPF_VC_XN_IDX_M, xn->idx);
+
+	retval = idpf_send_mb_msg(adapter, params->vc_op,
+				  send_buf->iov_len, send_buf->iov_base,
+				  cookie);
+	if (retval) {
+		idpf_vc_xn_lock(xn);
+		goto release_and_unlock;
+	}
+
+	if (params->async)
+		return 0;
+
+	wait_for_completion_timeout(&xn->completed,
+				    msecs_to_jiffies(params->timeout_ms));
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
+				       params->vc_op, params->timeout_ms);
+		retval = -ETIME;
+		break;
+	case IDPF_VC_XN_COMPLETED_SUCCESS:
+		retval = xn->reply_sz;
+		break;
+	case IDPF_VC_XN_COMPLETED_FAILED:
+		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction failed (op %d)\n",
+				       params->vc_op);
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
+	idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
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
+	idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
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
+	if (xn_idx >= ARRAY_SIZE(adapter->vcxn_mngr->ring)) {
+		dev_err_ratelimited(&adapter->pdev->dev, "Out of bounds cookie received: %02x\n",
+				    xn_idx);
+		return -EINVAL;
+	}
+	xn = &adapter->vcxn_mngr->ring[xn_idx];
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
+		err = -EINVAL;
+		goto out_unlock;
+	case IDPF_VC_XN_SHUTDOWN:
+		/* ENXIO is a bit special here as the recv msg loop uses that
+		 * know if it should stop trying to clean the ring if we lost
+		 * the virtchnl. We need to stop playing with registers and
+		 * yield.
+		 */
+		err = -ENXIO;
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
@@ -430,6 +903,8 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		 */
 		switch (ctlq_msg.cookie.mbx.chnl_opcode) {
 		case VIRTCHNL2_OP_VERSION:
+			err = idpf_vc_xn_forward_reply(adapter, &ctlq_msg);
+			break;
 		case VIRTCHNL2_OP_GET_CAPS:
 			if (ctlq_msg.cookie.mbx.chnl_retval) {
 				dev_err(&adapter->pdev->dev, "Failure initializing, vc op: %u retval: %u\n",
@@ -786,7 +1261,11 @@ static int idpf_wait_for_marker_event(struct idpf_vport *vport)
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
@@ -796,43 +1275,29 @@ static int idpf_send_ver_msg(struct idpf_adapter *adapter)
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
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
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
@@ -915,7 +1380,7 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 			    VIRTCHNL2_CAP_LOOPBACK);
 
 	return idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS, sizeof(caps),
-				(u8 *)&caps);
+				(u8 *)&caps, 0);
 }
 
 /**
@@ -1290,7 +1755,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CREATE_VPORT, buf_size,
-			       (u8 *)vport_msg);
+			       (u8 *)vport_msg, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1376,7 +1841,7 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DESTROY_VPORT,
-			       sizeof(v_id), (u8 *)&v_id);
+			       sizeof(v_id), (u8 *)&v_id, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1407,7 +1872,7 @@ int idpf_send_enable_vport_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ENABLE_VPORT,
-			       sizeof(v_id), (u8 *)&v_id);
+			       sizeof(v_id), (u8 *)&v_id, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1438,7 +1903,7 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DISABLE_VPORT,
-			       sizeof(v_id), (u8 *)&v_id);
+			       sizeof(v_id), (u8 *)&v_id, 0);
 	if (err)
 		goto rel_lock;
 
@@ -1557,7 +2022,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
 		err = idpf_send_mb_msg(vport->adapter,
 				       VIRTCHNL2_OP_CONFIG_TX_QUEUES,
-				       buf_sz, (u8 *)ctq);
+				       buf_sz, (u8 *)ctq, 0);
 		if (err)
 			goto mbx_error;
 
@@ -1709,7 +2174,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 
 		err = idpf_send_mb_msg(vport->adapter,
 				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
-				       buf_sz, (u8 *)crq);
+				       buf_sz, (u8 *)crq, 0);
 		if (err)
 			goto mbx_error;
 
@@ -1876,7 +2341,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
 		qcs = &eq->chunks;
 		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
 
-		err = idpf_send_mb_msg(adapter, vc_op, buf_sz, (u8 *)eq);
+		err = idpf_send_mb_msg(adapter, vc_op, buf_sz, (u8 *)eq, 0);
 		if (err)
 			goto mbx_error;
 
@@ -2020,7 +2485,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		if (map) {
 			err = idpf_send_mb_msg(adapter,
 					       VIRTCHNL2_OP_MAP_QUEUE_VECTOR,
-					       buf_sz, (u8 *)vqvm);
+					       buf_sz, (u8 *)vqvm, 0);
 			if (!err)
 				err = idpf_wait_for_event(adapter, vport,
 							  IDPF_VC_MAP_IRQ,
@@ -2028,7 +2493,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		} else {
 			err = idpf_send_mb_msg(adapter,
 					       VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
-					       buf_sz, (u8 *)vqvm);
+					       buf_sz, (u8 *)vqvm, 0);
 			if (!err)
 				err =
 				idpf_min_wait_for_event(adapter, vport,
@@ -2158,7 +2623,7 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEL_QUEUES,
-			       buf_size, (u8 *)eq);
+			       buf_size, (u8 *)eq, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2222,7 +2687,7 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	mutex_lock(&((struct idpf_vport *)vport)->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ADD_QUEUES,
-			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq);
+			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2281,7 +2746,7 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
-			       sizeof(ac), (u8 *)&ac);
+			       sizeof(ac), (u8 *)&ac, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2337,7 +2802,7 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEALLOC_VECTORS, buf_size,
-			       (u8 *)vcs);
+			       (u8 *)vcs, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2383,7 +2848,7 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
 	mutex_lock(&adapter->vc_buf_lock);
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_SRIOV_VFS,
-			       sizeof(svi), (u8 *)&svi);
+			       sizeof(svi), (u8 *)&svi, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2421,7 +2886,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_STATS,
 			       sizeof(struct virtchnl2_vport_stats),
-			       (u8 *)&stats_msg);
+			       (u8 *)&stats_msg, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2490,7 +2955,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
 
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_LUT,
-				       buf_size, (u8 *)rl);
+				       buf_size, (u8 *)rl, 0);
 		if (err)
 			goto free_mem;
 
@@ -2501,7 +2966,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 	}
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_LUT,
-			       buf_size, (u8 *)rl);
+			       buf_size, (u8 *)rl, 0);
 	if (err)
 		goto free_mem;
 
@@ -2560,7 +3025,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 
 	if (get) {
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_KEY,
-				       buf_size, (u8 *)rk);
+				       buf_size, (u8 *)rk, 0);
 		if (err)
 			goto error;
 
@@ -2592,7 +3057,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
 			rk->key_flex[i] = rss_data->rss_key[i];
 
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_KEY,
-				       buf_size, (u8 *)rk);
+				       buf_size, (u8 *)rk, 0);
 		if (err)
 			goto error;
 
@@ -2689,7 +3154,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 
 		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_PTYPE_INFO,
 				       sizeof(struct virtchnl2_get_ptype_info),
-				       (u8 *)&get_ptype_info);
+				       (u8 *)&get_ptype_info, 0);
 		if (err)
 			goto vc_buf_unlock;
 
@@ -2883,7 +3348,7 @@ int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport)
 	mutex_lock(&vport->vc_buf_lock);
 
 	err = idpf_send_mb_msg(vport->adapter, VIRTCHNL2_OP_LOOPBACK,
-			       sizeof(loopback), (u8 *)&loopback);
+			       sizeof(loopback), (u8 *)&loopback, 0);
 	if (err)
 		goto rel_lock;
 
@@ -2959,7 +3424,7 @@ int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
 		return -ENOENT;
 	}
 
-	adapter->state = __IDPF_STARTUP;
+	adapter->state = __IDPF_VER_CHECK;
 
 	return 0;
 }
@@ -3056,27 +3521,35 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	u16 num_max_vports;
 	int err = 0;
 
+	if (!adapter->vcxn_mngr) {
+		adapter->vcxn_mngr = kzalloc(sizeof(*adapter->vcxn_mngr), GFP_KERNEL);
+		if (!adapter->vcxn_mngr) {
+			err = -ENOMEM;
+			goto init_failed;
+		}
+	}
+	idpf_vc_xn_init(adapter->vcxn_mngr);
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
@@ -3169,7 +3642,9 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	 * register writes might not have taken effect. Retry to initialize
 	 * the mailbox again
 	 */
-	adapter->state = __IDPF_STARTUP;
+	adapter->state = __IDPF_VER_CHECK;
+	if (adapter->vcxn_mngr)
+		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 	idpf_deinit_dflt_mbx(adapter);
 	set_bit(IDPF_HR_DRV_LOAD, adapter->flags);
 	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
@@ -3187,6 +3662,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
 	int i;
 
+	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
 	/* Set all bits as we dont know on which vc_state the vhnl_wq is
@@ -3740,7 +4216,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		if (async)
 			set_bit(mac_flag, vport_config->flags);
 
-		err = idpf_send_mb_msg(adapter, vop, buf_size, (u8 *)ma_list);
+		err = idpf_send_mb_msg(adapter, vop, buf_size, (u8 *)ma_list, 0);
 		if (err)
 			goto mbx_error;
 
@@ -3795,7 +4271,7 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE,
 			       sizeof(struct virtchnl2_promisc_info),
-			       (u8 *)&vpi);
+			       (u8 *)&vpi, 0);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 78aff791f3a9..f008c793e486 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -24,7 +24,7 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport);
 int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     void *msg, int msg_size);
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
-		     u16 msg_size, u8 *msg);
+		     u16 msg_size, u8 *msg, u16 cookie);
 
 void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
-- 
2.43.0


