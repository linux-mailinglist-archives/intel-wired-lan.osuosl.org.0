Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C1AA3A48B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 18:46:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33F9D60EFD;
	Tue, 18 Feb 2025 17:46:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3sWKBzXfnlOx; Tue, 18 Feb 2025 17:46:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F6FB608F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739900784;
	bh=IV6sH1+QrFwRV7zSPXM5EEUZvAA/Wc2S6lFnkKLBVu4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AJZGc9t4WDw8xm8JEYWTbUZVn7doyWqgWeNv70NuU7GcBMon3yBK71guFXiuTzOn6
	 TZ7kTUum+eEX1J70lemyAHBWJI2tB5xfBxFA4D4TrvxJnHsAnNZArmJ0MlnzhUcjgm
	 ZgZOTe/k1YxU5f8dy2Wn5wXBBB1JFfb/Tu5RWqLYlDCc3e4xLhE16u1rwJbvhnIDjh
	 abWESJoT/Eb7sOtBHBHSfrn6oqsyEvLC4v1ap9/Yz2KjxqpQjxg49hv89O8PacUErn
	 1wxbNAbiOQbnQvIBcCojXII9lqNVXZnQ9hJMEI7pnLGPztKX2eFS6+/5u9iffl5I4Q
	 4JmnbPKxcTTnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F6FB608F6;
	Tue, 18 Feb 2025 17:46:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C5F51C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 17:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B577E60A3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 17:46:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3tsnApiB_i9M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 17:46:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8535E608F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8535E608F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8535E608F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 17:46:20 +0000 (UTC)
X-CSE-ConnectionGUID: roCTOOEWTGe+tQkaaoWT2w==
X-CSE-MsgGUID: OQE4GGgnQBu0VlGk2O7NtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44368320"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="44368320"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 09:46:20 -0800
X-CSE-ConnectionGUID: HEwBG1mHTl6srlPh9WgGeg==
X-CSE-MsgGUID: 06eG2c3MRMqpX0Y65E1eGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="119396011"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa003.jf.intel.com with ESMTP; 18 Feb 2025 09:46:18 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Date: Tue, 18 Feb 2025 18:42:26 +0100
Message-Id: <20250218174221.2291673-6-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250218174221.2291673-1-milena.olech@intel.com>
References: <20250218174221.2291673-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739900781; x=1771436781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GP2unxTIEOkNThZzzpCCEUvZFj0veegxq3/bPwqfGFs=;
 b=gl7P2zbHFRvOJhHPeb67hsEMT9XPMZWGNoSsDjiL3IoHkoWFDd7wCQ5B
 mAj8W21ZSPbBcYWzg5XqzTDhrMqCdDOUn0U5RodEWATa2ckKwJjIHf0VH
 WhIR0xfEFPXZoiBZwJ/yrEqgNuKd/ogN/CjHlP0enij7m58EaIayP9cjh
 /7WQL0qDYBkI4Nda+LUeItb2IL0UxV9R5sVNoADbAYd4IpQhNvoSsmTgl
 TfcLEjSv5HgiyGGk5U77m7EtvUjVRlDKKm4jLspONv6Fx4c48+kuO6sPZ
 jH/QKkEz6mdU//1C6OoBLkHplF1pQjklHHBOq5S+KRhVhuxMiLpU09boW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gl7P2zbH
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 05/10] idpf: add mailbox
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
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  3 +
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 66 +++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 43 ++++++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 47 +++++++++++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 83 +++++++++++++++++++
 5 files changed, 242 insertions(+)

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
index 12caeaf4c1a1..01e28085eb39 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -95,6 +95,37 @@ static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
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
@@ -110,6 +141,8 @@ static int idpf_ptp_read_src_clk_reg(struct idpf_adapter *adapter, u64 *src_clk,
 	switch (adapter->ptp->get_dev_clk_time_access) {
 	case IDPF_PTP_NONE:
 		return -EOPNOTSUPP;
+	case IDPF_PTP_MAILBOX:
+		return idpf_ptp_read_src_clk_reg_mailbox(adapter, sts, src_clk);
 	case IDPF_PTP_DIRECT:
 		*src_clk = idpf_ptp_read_src_clk_reg_direct(adapter, sts);
 		break;
@@ -146,6 +179,31 @@ static void idpf_ptp_get_sync_device_time_direct(struct idpf_adapter *adapter,
 	*sys_time = ((u64)sys_time_hi << 32) | sys_time_lo;
 }
 
+/**
+ * idpf_ptp_get_sync_device_time_mailbox - Get the cross time stamp values
+ *					   through mailbox
+ * @adapter: Driver specific private structure
+ * @dev_time: 64bit main timer value expressed in nanoseconds
+ * @sys_time: 64bit system time value expressed in nanoseconds
+ *
+ * Return: a pair of cross timestamp values on success, -errno otherwise.
+ */
+static int idpf_ptp_get_sync_device_time_mailbox(struct idpf_adapter *adapter,
+						 u64 *dev_time, u64 *sys_time)
+{
+	struct idpf_ptp_dev_timers cross_time;
+	int err;
+
+	err = idpf_ptp_get_cross_time(adapter, &cross_time);
+	if (err)
+		return err;
+
+	*dev_time = cross_time.dev_clk_time_ns;
+	*sys_time = cross_time.sys_time_ns;
+
+	return err;
+}
+
 /**
  * idpf_ptp_get_sync_device_time - Get the cross time stamp info
  * @device: Current device time
@@ -161,10 +219,18 @@ static int idpf_ptp_get_sync_device_time(ktime_t *device,
 {
 	struct idpf_adapter *adapter = ctx;
 	u64 ns_time_dev, ns_time_sys;
+	int err;
 
 	switch (adapter->ptp->get_cross_tstamp_access) {
 	case IDPF_PTP_NONE:
 		return -EOPNOTSUPP;
+	case IDPF_PTP_MAILBOX:
+		err =  idpf_ptp_get_sync_device_time_mailbox(adapter,
+							     &ns_time_dev,
+							     &ns_time_sys);
+		if (err)
+			return err;
+		break;
 	case IDPF_PTP_DIRECT:
 		idpf_ptp_get_sync_device_time_direct(adapter, &ns_time_dev,
 						     &ns_time_sys);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 68aa7a0a05d0..572ee0e79ba2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -58,6 +58,19 @@ enum idpf_ptp_access {
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
@@ -69,6 +82,7 @@ enum idpf_ptp_access {
  * @get_dev_clk_time_access: access type for getting the device clock time
  * @get_cross_tstamp_access: access type for the cross timestamping
  * @rsv: reserved bits
+ * @secondary_mbx: parameters for using dedicated PTP mailbox
  */
 struct idpf_ptp {
 	struct ptp_clock_info info;
@@ -80,6 +94,7 @@ struct idpf_ptp {
 	enum idpf_ptp_access get_dev_clk_time_access:2;
 	enum idpf_ptp_access get_cross_tstamp_access:2;
 	u32 rsv:28;
+	struct idpf_ptp_secondary_mbx secondary_mbx;
 };
 
 /**
@@ -96,11 +111,25 @@ idpf_ptp_info_to_adapter(const struct ptp_clock_info *info)
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
+int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
+			    struct idpf_ptp_dev_timers *cross_time);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -117,5 +146,19 @@ static inline int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 static inline void
 idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
 
+static inline int
+idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
+			  struct idpf_ptp_dev_timers *dev_clk_time)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int
+idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
+			struct idpf_ptp_dev_timers *cross_time)
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
index 123bc0008d43..e51fa16d13cd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -30,6 +30,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 	};
 	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
 	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
+	struct idpf_ptp_secondary_mbx *scnd_mbx;
 	struct idpf_ptp *ptp = adapter->ptp;
 	enum idpf_ptp_access access_type;
 	u32 temp_offset;
@@ -51,6 +52,16 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
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
 
@@ -93,3 +104,75 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 
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
+
+/**
+ * idpf_ptp_get_cross_time - Send virtchnl get cross time message
+ * @adapter: Driver specific private structure
+ * @cross_time: Pointer to the device clock structure where the value is set
+ *
+ * Send virtchnl get cross time message to get the time of the clock and the
+ * system time.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
+			    struct idpf_ptp_dev_timers *cross_time)
+{
+	struct virtchnl2_ptp_get_cross_time cross_time_msg;
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_GET_CROSS_TIME,
+		.send_buf.iov_base = &cross_time_msg,
+		.send_buf.iov_len = sizeof(cross_time_msg),
+		.recv_buf.iov_base = &cross_time_msg,
+		.recv_buf.iov_len = sizeof(cross_time_msg),
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	int reply_sz;
+
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	if (reply_sz != sizeof(cross_time_msg))
+		return -EIO;
+
+	cross_time->dev_clk_time_ns = le64_to_cpu(cross_time_msg.dev_time_ns);
+	cross_time->sys_time_ns = le64_to_cpu(cross_time_msg.sys_time_ns);
+
+	return 0;
+}
-- 
2.31.1

