Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27469A8B917
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE065607E6;
	Wed, 16 Apr 2025 12:31:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 90bSu-QXcoQO; Wed, 16 Apr 2025 12:31:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B73C960B04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744806676;
	bh=DlFycjbS5q0c386Cc0ZuoIwXB/hKNUsifF2hbh4xQXs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dZEeFrNLOA/2b5giw/GX6kXVRE1gnKGzQhOC4Af8L0P8lu+RS+FqL2wuW5UTeYe2H
	 vk15uUX0+JYW/Bbg/z0wIOuv6VZdttllNk2x2f3uopjM8SD6fAIDuUubLZo9lb8BpM
	 paM3sXyWeRrp+PZ+fAuyQFHB2zXZsMRlOPqJ99+ng+1EjdwPMi3liLr+vNevB6zHAx
	 0t/9DlUzkX57nwQ04Vik+MEScH6F+mw3uW77FPvGEk85K/hv+kNQKz/6UPGacXszWu
	 d8FVgT1yEH9Ryjoh1JHGJfj6vEMKu5ssYbsGFFqWDK+3zqrCZya/7IU9GNFRxtIAiO
	 EVBeBjC1kwaNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B73C960B04;
	Wed, 16 Apr 2025 12:31:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D721435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0EA5980B81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TFjv0FW-4v_Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:31:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB0F98208A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB0F98208A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB0F98208A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:31:13 +0000 (UTC)
X-CSE-ConnectionGUID: icb7GLqkRZWOXeTEM8eYXw==
X-CSE-MsgGUID: +DhoD+g0SJaZ57827vdK4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46232624"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46232624"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:31:13 -0700
X-CSE-ConnectionGUID: 4s7DldAYQ5+blrQjgDs7Dg==
X-CSE-MsgGUID: UU4q4eJ5QJ+v4fUW6wGpTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130480005"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa007.fm.intel.com with ESMTP; 16 Apr 2025 05:31:11 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Samuel Salin <Samuel.salin@intel.com>
Date: Wed, 16 Apr 2025 14:19:11 +0200
Message-ID: <20250416122142.86176-15-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250416122142.86176-2-milena.olech@intel.com>
References: <20250416122142.86176-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744806674; x=1776342674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Qz1a1hLJguPDmWy9wwHQpir+uBVg115AKIxeerp2JI=;
 b=b/n1GZ16nxjU3huDcLpJAy3N2mwPGMZRi5as54StA0Gqm9ba31zu4j/W
 LVfyCr26V3Ej7biuUoMfEv3fnoP5srbJ4ePN0eYujcTC7piSiObwtoUTm
 fIOxXLH7JWr4zO6hi21r3THa0Mf25zkYqQoUXDtMmJbv78Sa+IZtDGG7D
 cVuHqAJQK52tQ/44sJq13o8SKh46aK6tEgKZ51eqCu1XklM6wT9p2xuzh
 0G8xdOG3/i+99wqOa37FLLT/2DnSJ1HU2x010MXxAq3SyLr5H25Tyc2FX
 Kpldc49+W7UZgfOhhdho00AzpDmPTTfP8o/b3Tl1+ThlWiZyQaL+Ca/Pl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b/n1GZ16
Subject: [Intel-wired-lan] [PATCH v12 iwl-next 06/11] idpf: add mailbox
 access to read PTP clock time
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

When the access to read PTP clock is specified as mailbox, the driver
needs to send virtchnl message to perform PTP actions. Message is sent
using idpf_mbq_opc_send_msg_to_peer_drv mailbox opcode, with the parameters
received during PTP capabilities negotiation.

Add functions to recognize PTP messages, move them to dedicated secondary
mailbox, read the PTP clock time and cross timestamp using mailbox
messages.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
---
v9 -> v10: remove cross timestamping

 .../ethernet/intel/idpf/idpf_controlq_api.h   |  3 ++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 33 +++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 34 ++++++++++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 47 +++++++++++++++++++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 47 +++++++++++++++++++
 5 files changed, 164 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
index e8e046ef2f0d..9642494a67d8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
@@ -123,9 +123,12 @@ struct idpf_ctlq_info {
 /**
  * enum idpf_mbx_opc - PF/VF mailbox commands
  * @idpf_mbq_opc_send_msg_to_cp: used by PF or VF to send a message to its CP
+ * @idpf_mbq_opc_send_msg_to_peer_drv: used by PF or VF to send a message to
+ *				       any peer driver
  */
 enum idpf_mbx_opc {
 	idpf_mbq_opc_send_msg_to_cp		= 0x0801,
+	idpf_mbq_opc_send_msg_to_peer_drv	= 0x0804,
 };
 
 /* API supported for control queue management */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index cb27a8ee3acc..5ea9d672a159 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -92,6 +92,37 @@ static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
 	return ((u64)hi << 32) | lo;
 }
 
+/**
+ * idpf_ptp_read_src_clk_reg_mailbox - Read the main timer value through mailbox
+ * @adapter: Driver specific private structure
+ * @sts: Optional parameter for holding a pair of system timestamps from
+ *	 the system clock. Will be ignored when NULL is given.
+ * @src_clk: Returned main timer value in nanoseconds unit
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_read_src_clk_reg_mailbox(struct idpf_adapter *adapter,
+					     struct ptp_system_timestamp *sts,
+					     u64 *src_clk)
+{
+	struct idpf_ptp_dev_timers clk_time;
+	int err;
+
+	/* Read the system timestamp pre PHC read */
+	ptp_read_system_prets(sts);
+
+	err = idpf_ptp_get_dev_clk_time(adapter, &clk_time);
+	if (err)
+		return err;
+
+	/* Read the system timestamp post PHC read */
+	ptp_read_system_postts(sts);
+
+	*src_clk = clk_time.dev_clk_time_ns;
+
+	return 0;
+}
+
 /**
  * idpf_ptp_read_src_clk_reg - Read the main timer value
  * @adapter: Driver specific private structure
@@ -107,6 +138,8 @@ static int idpf_ptp_read_src_clk_reg(struct idpf_adapter *adapter, u64 *src_clk,
 	switch (adapter->ptp->get_dev_clk_time_access) {
 	case IDPF_PTP_NONE:
 		return -EOPNOTSUPP;
+	case IDPF_PTP_MAILBOX:
+		return idpf_ptp_read_src_clk_reg_mailbox(adapter, sts, src_clk);
 	case IDPF_PTP_DIRECT:
 		*src_clk = idpf_ptp_read_src_clk_reg_direct(adapter, sts);
 		break;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 955d697e51ab..b536c1cdbb2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -52,6 +52,19 @@ enum idpf_ptp_access {
 	IDPF_PTP_MAILBOX,
 };
 
+/**
+ * struct idpf_ptp_secondary_mbx - PTP secondary mailbox
+ * @peer_mbx_q_id: PTP mailbox queue ID
+ * @peer_id: Peer ID for PTP Device Control daemon
+ * @valid: indicates whether secondary mailblox is supported by the Control
+ *	   Plane
+ */
+struct idpf_ptp_secondary_mbx {
+	u16 peer_mbx_q_id;
+	u16 peer_id;
+	bool valid:1;
+};
+
 /**
  * struct idpf_ptp - PTP parameters
  * @info: structure defining PTP hardware capabilities
@@ -62,6 +75,7 @@ enum idpf_ptp_access {
  * @caps: PTP capabilities negotiated with the Control Plane
  * @get_dev_clk_time_access: access type for getting the device clock time
  * @rsv: reserved bits
+ * @secondary_mbx: parameters for using dedicated PTP mailbox
  * @read_dev_clk_lock: spinlock protecting access to the device clock read
  *		       operation executed by the HW latch
  */
@@ -74,6 +88,7 @@ struct idpf_ptp {
 	u32 caps;
 	enum idpf_ptp_access get_dev_clk_time_access:2;
 	u32 rsv:30;
+	struct idpf_ptp_secondary_mbx secondary_mbx;
 	spinlock_t read_dev_clk_lock;
 };
 
@@ -91,11 +106,23 @@ idpf_ptp_info_to_adapter(const struct ptp_clock_info *info)
 	return ptp->adapter;
 }
 
+/**
+ * struct idpf_ptp_dev_timers - System time and device time values
+ * @sys_time_ns: system time value expressed in nanoseconds
+ * @dev_clk_time_ns: device clock time value expressed in nanoseconds
+ */
+struct idpf_ptp_dev_timers {
+	u64 sys_time_ns;
+	u64 dev_clk_time_ns;
+};
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int idpf_ptp_init(struct idpf_adapter *adapter);
 void idpf_ptp_release(struct idpf_adapter *adapter);
 int idpf_ptp_get_caps(struct idpf_adapter *adapter);
 void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
+int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
+			      struct idpf_ptp_dev_timers *dev_clk_time);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -112,5 +139,12 @@ static inline int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 static inline void
 idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
 
+static inline int
+idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
+			  struct idpf_ptp_dev_timers *dev_clk_time)
+{
+	return -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_PTP_1588_CLOCK */
 #endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index a55ff20895ed..139d19353e28 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -154,6 +154,50 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
 	return err;
 }
 
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+/**
+ * idpf_ptp_is_mb_msg - Check if the message is PTP-related
+ * @op: virtchnl opcode
+ *
+ * Return: true if msg is PTP-related, false otherwise.
+ */
+static bool idpf_ptp_is_mb_msg(u32 op)
+{
+	switch (op) {
+	case VIRTCHNL2_OP_PTP_GET_DEV_CLK_TIME:
+	case VIRTCHNL2_OP_PTP_GET_CROSS_TIME:
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * idpf_prepare_ptp_mb_msg - Prepare PTP related message
+ *
+ * @adapter: Driver specific private structure
+ * @op: virtchnl opcode
+ * @ctlq_msg: Corresponding control queue message
+ */
+static void idpf_prepare_ptp_mb_msg(struct idpf_adapter *adapter, u32 op,
+				    struct idpf_ctlq_msg *ctlq_msg)
+{
+	/* If the message is PTP-related and the secondary mailbox is available,
+	 * send the message through the secondary mailbox.
+	 */
+	if (!idpf_ptp_is_mb_msg(op) || !adapter->ptp->secondary_mbx.valid)
+		return;
+
+	ctlq_msg->opcode = idpf_mbq_opc_send_msg_to_peer_drv;
+	ctlq_msg->func_id = adapter->ptp->secondary_mbx.peer_mbx_q_id;
+	ctlq_msg->host_id = adapter->ptp->secondary_mbx.peer_id;
+}
+#else /* !CONFIG_PTP_1588_CLOCK */
+static void idpf_prepare_ptp_mb_msg(struct idpf_adapter *adapter, u32 op,
+				    struct idpf_ctlq_msg *ctlq_msg)
+{ }
+#endif /* CONFIG_PTP_1588_CLOCK */
+
 /**
  * idpf_send_mb_msg - Send message over mailbox
  * @adapter: Driver specific private structure
@@ -197,6 +241,9 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 
 	ctlq_msg->opcode = idpf_mbq_opc_send_msg_to_cp;
 	ctlq_msg->func_id = 0;
+
+	idpf_prepare_ptp_mb_msg(adapter, op, ctlq_msg);
+
 	ctlq_msg->data_len = msg_size;
 	ctlq_msg->cookie.mbx.chnl_opcode = op;
 	ctlq_msg->cookie.mbx.chnl_retval = 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index c3c6b920f277..79bd2585703b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -29,6 +29,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
 	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
+	struct idpf_ptp_secondary_mbx *scnd_mbx;
 	struct idpf_ptp *ptp = adapter->ptp;
 	enum idpf_ptp_access access_type;
 	u32 temp_offset;
@@ -50,6 +51,16 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
 	ptp->caps = le32_to_cpu(recv_ptp_caps_msg->caps);
 
+	scnd_mbx = &ptp->secondary_mbx;
+	scnd_mbx->peer_mbx_q_id = le16_to_cpu(recv_ptp_caps_msg->peer_mbx_q_id);
+
+	/* if the ptp_mb_q_id holds invalid value (0xffff), the secondary
+	 * mailbox is not supported.
+	 */
+	scnd_mbx->valid = scnd_mbx->peer_mbx_q_id != 0xffff;
+	if (scnd_mbx->valid)
+		scnd_mbx->peer_id = recv_ptp_caps_msg->peer_id;
+
 	/* Determine the access type for the PTP features */
 	idpf_ptp_get_features_access(adapter);
 
@@ -76,3 +87,39 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
 	return 0;
 }
+
+/**
+ * idpf_ptp_get_dev_clk_time - Send virtchnl get device clk time message
+ * @adapter: Driver specific private structure
+ * @dev_clk_time: Pointer to the device clock structure where the value is set
+ *
+ * Send virtchnl get time message to get the time of the clock.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
+			      struct idpf_ptp_dev_timers *dev_clk_time)
+{
+	struct virtchnl2_ptp_get_dev_clk_time get_dev_clk_time_msg;
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_GET_DEV_CLK_TIME,
+		.send_buf.iov_base = &get_dev_clk_time_msg,
+		.send_buf.iov_len = sizeof(get_dev_clk_time_msg),
+		.recv_buf.iov_base = &get_dev_clk_time_msg,
+		.recv_buf.iov_len = sizeof(get_dev_clk_time_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	int reply_sz;
+	u64 dev_time;
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz != sizeof(get_dev_clk_time_msg))
+		return -EIO;
+
+	dev_time = le64_to_cpu(get_dev_clk_time_msg.dev_time_ns);
+	dev_clk_time->dev_clk_time_ns = dev_time;
+
+	return 0;
+}
-- 
2.43.5

