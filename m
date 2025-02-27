Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C497A47EBC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 14:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28EA9835BA;
	Thu, 27 Feb 2025 13:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dMktyBf3FM_P; Thu, 27 Feb 2025 13:16:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44B4283639
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740662178;
	bh=h6v76CYCBdJglW7K5jH13LBN4P6BxjlIdfUa/qWBuB8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r/Sfrv2QLtPgq+IEp3hDCByWX7piSm9jvIIENHK+5lMfynWRE5UbW1FW/3U/C+hnb
	 SZKBOVTwG3rlthDuSgRM/p2LC/wxpKtks8EqRzqgvApu/7D+57S5jl9AH1EJgRymXx
	 LLBumpc3lJ7l3OUtUK3sxgWnHqKOfSY7VbasAobv7D1Pv5w4vnwNjam8NP7oth3sM2
	 e+bCuwSmphboNtxDSTEbacHFzQ/q1YHtiGP1CJc41I45gPOPhxXmwlZ/M01BXzjwm2
	 Y4ODNKRVL0Pcy8eCwC9jzutZjZsKMqIk11WDdiJSlzp76RxnPRv8cahsa0H8yZjtuX
	 Sqq6eTh/EtYXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44B4283639;
	Thu, 27 Feb 2025 13:16:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9553368
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EC5C412B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:16:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gt90aEhdEugT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 13:16:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 477D1412DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 477D1412DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 477D1412DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:16:14 +0000 (UTC)
X-CSE-ConnectionGUID: mfNuGGTeSUaqXRAYcgt0wg==
X-CSE-MsgGUID: ROiJXULTT7GPuRS5lkm1Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41252415"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41252415"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 05:16:14 -0800
X-CSE-ConnectionGUID: owxPxYvzSdeQHfQUj8TrcA==
X-CSE-MsgGUID: v9+/PkHvTPmgiV9lV2LIfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121151247"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa003.fm.intel.com with ESMTP; 27 Feb 2025 05:16:11 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Date: Thu, 27 Feb 2025 14:13:11 +0100
Message-Id: <20250227131314.2317200-4-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250227131314.2317200-1-milena.olech@intel.com>
References: <20250227131314.2317200-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740662175; x=1772198175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kb/l7nCWmwgDztY5hXEpq0Ns5Wwp7k3+6eI1QpXE7h4=;
 b=Kid6MPQJ4hxoHiodfDQV3WnvMAZSNNMha6Sx2nuhKM48KCYsD4PK6aTs
 8FD0X37eEYPDg7BF+lQjFiMktPRAq6zpeLxkr2aHr0UoA0lu7jGyOaCT7
 PE5pxOHpBDVYb/ALUmNHqwYapzAlFVGd19gvKCUHvvkaLXP8VZEejQbJy
 IEPjBmlpMsCK8/fHb7lNBk1T9QGurIql4phULGugp247fbvwuDzwUMWI5
 jACL+P7Ri9C20Yg/0oOnuQVugXNEDfr6GFtmnBl4fiO6jvZllmjOdTncl
 m9ZPiXkUTHhK0ItLMVkCgypVeOHul0nXObQRPrzYTStoJDtSssgaPF7U9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kid6MPQJ
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 03/10] idpf: move virtchnl
 structures to the header file
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

Move virtchnl structures to the header file to expose them for the PTP
virtchnl file.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v1 -> v2: fix commit message title

 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 86 +------------------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   | 84 ++++++++++++++++++
 2 files changed, 86 insertions(+), 84 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 7004289b974c..a55ff20895ed 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -7,88 +7,6 @@
 #include "idpf_virtchnl.h"
 #include "idpf_ptp.h"
 
-#define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
-#define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
-#define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
-#define IDPF_VC_XN_SALT_M		GENMASK(15, 8)
-#define IDPF_VC_XN_RING_LEN		U8_MAX
-
-/**
- * enum idpf_vc_xn_state - Virtchnl transaction status
- * @IDPF_VC_XN_IDLE: not expecting a reply, ready to be used
- * @IDPF_VC_XN_WAITING: expecting a reply, not yet received
- * @IDPF_VC_XN_COMPLETED_SUCCESS: a reply was expected and received,
- *				  buffer updated
- * @IDPF_VC_XN_COMPLETED_FAILED: a reply was expected and received, but there
- *				 was an error, buffer not updated
- * @IDPF_VC_XN_SHUTDOWN: transaction object cannot be used, VC torn down
- * @IDPF_VC_XN_ASYNC: transaction sent asynchronously and doesn't have the
- *		      return context; a callback may be provided to handle
- *		      return
- */
-enum idpf_vc_xn_state {
-	IDPF_VC_XN_IDLE = 1,
-	IDPF_VC_XN_WAITING,
-	IDPF_VC_XN_COMPLETED_SUCCESS,
-	IDPF_VC_XN_COMPLETED_FAILED,
-	IDPF_VC_XN_SHUTDOWN,
-	IDPF_VC_XN_ASYNC,
-};
-
-struct idpf_vc_xn;
-/* Callback for asynchronous messages */
-typedef int (*async_vc_cb) (struct idpf_adapter *, struct idpf_vc_xn *,
-			    const struct idpf_ctlq_msg *);
-
-/**
- * struct idpf_vc_xn - Data structure representing virtchnl transactions
- * @completed: virtchnl event loop uses that to signal when a reply is
- *	       available, uses kernel completion API
- * @state: virtchnl event loop stores the data below, protected by the
- *	   completion's lock.
- * @reply_sz: Original size of reply, may be > reply_buf.iov_len; it will be
- *	      truncated on its way to the receiver thread according to
- *	      reply_buf.iov_len.
- * @reply: Reference to the buffer(s) where the reply data should be written
- *	   to. May be 0-length (then NULL address permitted) if the reply data
- *	   should be ignored.
- * @async_handler: if sent asynchronously, a callback can be provided to handle
- *		   the reply when it's received
- * @vc_op: corresponding opcode sent with this transaction
- * @idx: index used as retrieval on reply receive, used for cookie
- * @salt: changed every message to make unique, used for cookie
- */
-struct idpf_vc_xn {
-	struct completion completed;
-	enum idpf_vc_xn_state state;
-	size_t reply_sz;
-	struct kvec reply;
-	async_vc_cb async_handler;
-	u32 vc_op;
-	u8 idx;
-	u8 salt;
-};
-
-/**
- * struct idpf_vc_xn_params - Parameters for executing transaction
- * @send_buf: kvec for send buffer
- * @recv_buf: kvec for recv buffer, may be NULL, must then have zero length
- * @timeout_ms: timeout to wait for reply
- * @async: send message asynchronously, will not wait on completion
- * @async_handler: If sent asynchronously, optional callback handler. The user
- *		   must be careful when using async handlers as the memory for
- *		   the recv_buf _cannot_ be on stack if this is async.
- * @vc_op: virtchnl op to send
- */
-struct idpf_vc_xn_params {
-	struct kvec send_buf;
-	struct kvec recv_buf;
-	int timeout_ms;
-	bool async;
-	async_vc_cb async_handler;
-	u32 vc_op;
-};
-
 /**
  * struct idpf_vc_xn_manager - Manager for tracking transactions
  * @ring: backing and lookup for transactions
@@ -450,8 +368,8 @@ static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
  * >= @recv_buf.iov_len, but we never overflow @@recv_buf_iov_base). < 0 for
  * error.
  */
-static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
-			       const struct idpf_vc_xn_params *params)
+ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
+			const struct idpf_vc_xn_params *params)
 {
 	const struct kvec *send_buf = &params->send_buf;
 	struct idpf_vc_xn *xn;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 83da5d8da56b..3522c1238ea2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -4,6 +4,88 @@
 #ifndef _IDPF_VIRTCHNL_H_
 #define _IDPF_VIRTCHNL_H_
 
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
+ * @IDPF_VC_XN_COMPLETED_SUCCESS: a reply was expected and received, buffer
+ *				  updated
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
 struct idpf_adapter;
 struct idpf_netdev_priv;
 struct idpf_vec_regs;
@@ -11,6 +93,8 @@ struct idpf_vport;
 struct idpf_vport_max_q;
 struct idpf_vport_user_config_data;
 
+ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
+			const struct idpf_vc_xn_params *params);
 int idpf_init_dflt_mbx(struct idpf_adapter *adapter);
 void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter);
 int idpf_vc_core_init(struct idpf_adapter *adapter);
-- 
2.31.1

