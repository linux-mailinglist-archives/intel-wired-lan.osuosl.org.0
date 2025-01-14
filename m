Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF3DA1064E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 13:13:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A01080B04;
	Tue, 14 Jan 2025 12:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wR9pNTgamD2P; Tue, 14 Jan 2025 12:13:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AFC380B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736856824;
	bh=ldwUEdL/589XHOaB2RpCdv2LAq3xfHQJ+QkPpk0BSjY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x4nGwx9jSUeaUxL1TlubFcj10YmV8XTRSjRbMkXFy+Fo9/Px5mUPkyljYJm9UY4vE
	 kj7VGTXkQzt5Xtt5QTJdUM+NQPXCmSfSuNkbROEu7pj4aW/lUQlGNGJQ8R6Y/PzWgQ
	 EzpDNRk2LnTOwX1oEgeWATdS6TgRTRFzgHKbCSaB/qvFRmunuzLuM9pZKrSNlg6/eN
	 ySXKnWtfvRKzwf1pBBzfiZFpXx2YeBvZlfx6s6Mq0Mk2LnoFt+MZ2AxXeeoUGUoO5m
	 4ntl/pO9vkPbPpbETkmuKO+lt2dA1WM7S/HNrxIpAUgruGGHyAFqIGk1COWajnP5Jz
	 45vAqtwj69v9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AFC380B1B;
	Tue, 14 Jan 2025 12:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 895ECB8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77C0260A9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4QsyIE2TtpCY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 12:13:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 391F960792
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 391F960792
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 391F960792
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:13:41 +0000 (UTC)
X-CSE-ConnectionGUID: KBq32I1QQ8apCM39aKaA3Q==
X-CSE-MsgGUID: NXk9bgJmSCyMdaTSstrCDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="59631902"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="59631902"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:13:41 -0800
X-CSE-ConnectionGUID: +QY5CXPlScqYkQSOeKv6sg==
X-CSE-MsgGUID: 4Q5vmY5lR3eNpdJgX0VWOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104641802"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2025 04:13:38 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Date: Tue, 14 Jan 2025 13:11:00 +0100
Message-Id: <20250114121103.605288-3-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250114121103.605288-1-milena.olech@intel.com>
References: <20250114121103.605288-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736856822; x=1768392822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AXRBCGD/M21WUmCN67/DTmnwYQGCAWcD+Cc+63sb9+s=;
 b=ckteOBCU2RwWdQXnymEkAAF9Jzi8Pktbg2F1H+lWSiBSnRUbdixdnwii
 /I/T2zWVvyi2RCvtxOqHwlJxt01b+SDmgpZ9AxhwxfTlzc6qYBk6dk146
 pebAzHqM08sUbz9o9nQKs/xRZ0mJgA+WNAK/NtDcL4ZEbL/lB2q1JJQa/
 zh8e7F4NmoUXAD59j4kM3zZoEcV/BDUrkG5TGoM40j6g+4CnQn1xQqdAn
 kMyi391Q3jf1/PBcC9SUZevfQxj1CLwsPmnvX5X2rivTIKIlWRhtfLnyo
 SdBzk0xPXA/HaO4xYSWnTcND6gB31CcgwtQLGCSumqzO/EnYaVDWuYQ8P
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ckteOBCU
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 02/10] virtchnl: add PTP
 virtchnl definitions
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

PTP capabilities are negotiated using virtchnl commands. There are two
available modes of the PTP support: direct and mailbox. When the direct
access to PTP resources is negotiated, virtchnl messages returns a set
of registers that allow read/write directly. When the mailbox access to
PTP resources is negotiated, virtchnl messages are used to access
PTP clock and to read the timestamp values.

Virtchnl API covers both modes and exposes a set of PTP capabilities.

Using virtchnl API, the driver recognizes also HW abilities - maximum
adjustment of the clock and the basic increment value.

Additionally, API allows to configure the secondary mailbox, dedicated
exclusively for PTP purposes.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v1 -> v2: fix struct description

 drivers/net/ethernet/intel/idpf/virtchnl2.h | 302 ++++++++++++++++++++
 1 file changed, 302 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 63deb120359c..44a5ee84ed60 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -68,6 +68,16 @@ enum virtchnl2_op {
 	VIRTCHNL2_OP_ADD_MAC_ADDR		= 535,
 	VIRTCHNL2_OP_DEL_MAC_ADDR		= 536,
 	VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE	= 537,
+
+	/* TimeSync opcodes */
+	VIRTCHNL2_OP_PTP_GET_CAPS			= 541,
+	VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP		= 542,
+	VIRTCHNL2_OP_PTP_GET_DEV_CLK_TIME		= 543,
+	VIRTCHNL2_OP_PTP_GET_CROSS_TIME			= 544,
+	VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME		= 545,
+	VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE		= 546,
+	VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_TIME		= 547,
+	VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP_CAPS	= 548,
 };
 
 /**
@@ -1270,4 +1280,296 @@ struct virtchnl2_promisc_info {
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_promisc_info);
 
+/**
+ * enum virtchnl2_ptp_caps - PTP capabilities
+ * @VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME: direct access to get the time of
+ *					   device clock
+ * @VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB: mailbox access to get the time of
+ *					      device clock
+ * @VIRTCHNL2_CAP_PTP_GET_CROSS_TIME: direct access to cross timestamp
+ * @VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB: mailbox access to cross timestamp
+ * @VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME: direct access to set the time of
+ *					   device clock
+ * @VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB: mailbox access to set the time of
+ *					      device clock
+ * @VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK: direct access to adjust the time of device
+ *				      clock
+ * @VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB: mailbox access to adjust the time of
+ *					 device clock
+ * @VIRTCHNL2_CAP_PTP_TX_TSTAMPS: direct access to the Tx timestamping
+ * @VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB: mailbox access to the Tx timestamping
+ *
+ * PF/VF negotiates a set of supported PTP capabilities with the Control Plane.
+ * There are two access methods - mailbox (_MB) and direct.
+ * PTP capabilities enables Main Timer operations: get/set/adjust Main Timer,
+ * cross timestamping and the Tx timestamping.
+ */
+enum virtchnl2_ptp_caps {
+	VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME		= BIT(0),
+	VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB	= BIT(1),
+	VIRTCHNL2_CAP_PTP_GET_CROSS_TIME		= BIT(2),
+	VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB		= BIT(3),
+	VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME		= BIT(4),
+	VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB	= BIT(5),
+	VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK		= BIT(6),
+	VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB		= BIT(7),
+	VIRTCHNL2_CAP_PTP_TX_TSTAMPS			= BIT(8),
+	VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB			= BIT(9),
+};
+
+/**
+ * struct virtchnl2_ptp_clk_reg_offsets - Offsets of device and PHY clocks
+ *					  registers.
+ * @dev_clk_ns_l: Device clock low register offset
+ * @dev_clk_ns_h: Device clock high register offset
+ * @phy_clk_ns_l: PHY clock low register offset
+ * @phy_clk_ns_h: PHY clock high register offset
+ * @cmd_sync_trigger: The command sync trigger register offset
+ * @pad: Padding for future extensions
+ */
+struct virtchnl2_ptp_clk_reg_offsets {
+	__le32 dev_clk_ns_l;
+	__le32 dev_clk_ns_h;
+	__le32 phy_clk_ns_l;
+	__le32 phy_clk_ns_h;
+	__le32 cmd_sync_trigger;
+	u8 pad[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_ptp_clk_reg_offsets);
+
+/**
+ * struct virtchnl2_ptp_cross_time_reg_offsets - Offsets of the device cross
+ *						 time registers.
+ * @sys_time_ns_l: System time low register offset
+ * @sys_time_ns_h: System time high register offset
+ * @cmd_sync_trigger: The command sync trigger register offset
+ * @pad: Padding for future extensions
+ */
+struct virtchnl2_ptp_cross_time_reg_offsets {
+	__le32 sys_time_ns_l;
+	__le32 sys_time_ns_h;
+	__le32 cmd_sync_trigger;
+	u8 pad[4];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_cross_time_reg_offsets);
+
+/**
+ * struct virtchnl2_ptp_clk_adj_reg_offsets - Offsets of device and PHY clocks
+ *					      adjustments registers.
+ * @dev_clk_cmd_type: Device clock command type register offset
+ * @dev_clk_incval_l: Device clock increment value low register offset
+ * @dev_clk_incval_h: Device clock increment value high registers offset
+ * @dev_clk_shadj_l: Device clock shadow adjust low register offset
+ * @dev_clk_shadj_h: Device clock shadow adjust high register offset
+ * @phy_clk_cmd_type: PHY timer command type register offset
+ * @phy_clk_incval_l: PHY timer increment value low register offset
+ * @phy_clk_incval_h: PHY timer increment value high register offset
+ * @phy_clk_shadj_l: PHY timer shadow adjust low register offset
+ * @phy_clk_shadj_h: PHY timer shadow adjust high register offset
+ */
+struct virtchnl2_ptp_clk_adj_reg_offsets {
+	__le32 dev_clk_cmd_type;
+	__le32 dev_clk_incval_l;
+	__le32 dev_clk_incval_h;
+	__le32 dev_clk_shadj_l;
+	__le32 dev_clk_shadj_h;
+	__le32 phy_clk_cmd_type;
+	__le32 phy_clk_incval_l;
+	__le32 phy_clk_incval_h;
+	__le32 phy_clk_shadj_l;
+	__le32 phy_clk_shadj_h;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(40, virtchnl2_ptp_clk_adj_reg_offsets);
+
+/**
+ * struct virtchnl2_ptp_tx_tstamp_latch_caps - PTP Tx timestamp latch
+ *					       capabilities.
+ * @tx_latch_reg_offset_l: Tx timestamp latch low register offset
+ * @tx_latch_reg_offset_h: Tx timestamp latch high register offset
+ * @index: Latch index provided to the Tx descriptor
+ * @pad: Padding for future extensions
+ */
+struct virtchnl2_ptp_tx_tstamp_latch_caps {
+	__le32 tx_latch_reg_offset_l;
+	__le32 tx_latch_reg_offset_h;
+	u8 index;
+	u8 pad[7];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_tx_tstamp_latch_caps);
+
+/**
+ * struct virtchnl2_ptp_get_vport_tx_tstamp_caps - Structure that defines Tx
+ *						   tstamp entries.
+ * @vport_id: Vport number
+ * @num_latches: Total number of latches
+ * @tstamp_ns_lo_bit: First bit for nanosecond part of the timestamp
+ * @tstamp_ns_hi_bit: Last bit for nanosecond part of the timestamp
+ * @pad: Padding for future tstamp granularity extensions
+ * @tstamp_latches: Capabilities of Tx timestamp entries
+ *
+ * PF/VF sends this message to negotiate the Tx timestamp latches for each
+ * Vport.
+ *
+ * Associated with VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP_CAPS.
+ */
+struct virtchnl2_ptp_get_vport_tx_tstamp_caps {
+	__le32 vport_id;
+	__le16 num_latches;
+	u8 tstamp_ns_lo_bit;
+	u8 tstamp_ns_hi_bit;
+	u8 pad[8];
+
+	struct virtchnl2_ptp_tx_tstamp_latch_caps tstamp_latches[]
+						  __counted_by_le(num_latches);
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_vport_tx_tstamp_caps);
+
+/**
+ * struct virtchnl2_ptp_get_caps - Get PTP capabilities
+ * @caps: PTP capability bitmap. See enum virtchnl2_ptp_caps
+ * @max_adj: The maximum possible frequency adjustment
+ * @base_incval: The default timer increment value
+ * @peer_mbx_q_id: ID of the PTP Device Control daemon queue
+ * @peer_id: Peer ID for PTP Device Control daemon
+ * @secondary_mbx: Indicates to the driver that it should create a secondary
+ *		   mailbox to inetract with control plane for PTP
+ * @pad: Padding for future extensions
+ * @clk_offsets: Main timer and PHY registers offsets
+ * @cross_time_offsets: Cross time registers offsets
+ * @clk_adj_offsets: Offsets needed to adjust the PHY and the main timer
+ *
+ * PF/VF sends this message to negotiate PTP capabilities. CP updates bitmap
+ * with supported features and fulfills appropriate structures.
+ * If HW uses primary MBX for PTP: secondary_mbx is set to false.
+ * If HW uses secondary MBX for PTP: secondary_mbx is set to true.
+ *	Control plane has 2 MBX and the driver has 1 MBX, send to peer
+ *	driver may be used to send a message using valid ptp_peer_mb_q_id and
+ *	ptp_peer_id.
+ * If HW does not use send to peer driver: secondary_mbx is no care field and
+ * peer_mbx_q_id holds invalid value (0xFFFF).
+ *
+ * Associated with VIRTCHNL2_OP_PTP_GET_CAPS.
+ */
+struct virtchnl2_ptp_get_caps {
+	__le32 caps;
+	__le32 max_adj;
+	__le64 base_incval;
+	__le16 peer_mbx_q_id;
+	u8 peer_id;
+	u8 secondary_mbx;
+	u8 pad[4];
+
+	struct virtchnl2_ptp_clk_reg_offsets clk_offsets;
+	struct virtchnl2_ptp_cross_time_reg_offsets cross_time_offsets;
+	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(104, virtchnl2_ptp_get_caps);
+
+/**
+ * struct virtchnl2_ptp_tx_tstamp_latch - Structure that describes tx tstamp
+ *					  values, index and validity.
+ * @tstamp: Timestamp value
+ * @index: Timestamp index from which the value is read
+ * @valid: Timestamp validity
+ * @pad: Padding for future extensions
+ */
+struct virtchnl2_ptp_tx_tstamp_latch {
+	__le64 tstamp;
+	u8 index;
+	u8 valid;
+	u8 pad[6];
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_tx_tstamp_latch);
+
+/**
+ * struct virtchnl2_ptp_get_vport_tx_tstamp_latches - Tx timestamp latches
+ *						      associated with the vport.
+ * @vport_id: Number of vport that requests the timestamp
+ * @num_latches: Number of latches
+ * @get_devtime_with_txtstmp: Flag to request device time along with Tx timestamp
+ * @pad: Padding for future extensions
+ * @device_time: device time if get_devtime_with_txtstmp was set in request
+ * @tstamp_latches: PTP TX timestamp latch
+ *
+ * PF/VF sends this message to receive a specified number of timestamps
+ * entries.
+ *
+ * Associated with VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP.
+ */
+struct virtchnl2_ptp_get_vport_tx_tstamp_latches {
+	__le32 vport_id;
+	__le16 num_latches;
+	u8 get_devtime_with_txtstmp;
+	u8 pad[1];
+	__le64 device_time;
+
+	struct virtchnl2_ptp_tx_tstamp_latch tstamp_latches[]
+					     __counted_by_le(num_latches);
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_vport_tx_tstamp_latches);
+
+/**
+ * struct virtchnl2_ptp_get_dev_clk_time - Associated with message
+ *					   VIRTCHNL2_OP_PTP_GET_DEV_CLK_TIME.
+ * @dev_time_ns: Device clock time value in nanoseconds
+ *
+ * PF/VF sends this message to receive the time from the main timer.
+ */
+struct virtchnl2_ptp_get_dev_clk_time {
+	__le64 dev_time_ns;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_get_dev_clk_time);
+
+/**
+ * struct virtchnl2_ptp_get_cross_time: Associated with message
+ *					VIRTCHNL2_OP_PTP_GET_CROSS_TIME.
+ * @sys_time_ns: System counter value expressed in nanoseconds, read
+ *		 synchronously with device time
+ * @dev_time_ns: Device clock time value expressed in nanoseconds
+ *
+ * PF/VF sends this message to receive the cross time.
+ */
+struct virtchnl2_ptp_get_cross_time {
+	__le64 sys_time_ns;
+	__le64 dev_time_ns;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_cross_time);
+
+/**
+ * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
+ *					  VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME.
+ * @dev_time_ns: Device time value expressed in nanoseconds to set
+ *
+ * PF/VF sends this message to set the time of the main timer.
+ */
+struct virtchnl2_ptp_set_dev_clk_time {
+	__le64 dev_time_ns;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_set_dev_clk_time);
+
+/**
+ * struct virtchnl2_ptp_adj_dev_clk_fine: Associated with message
+ *					  VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE.
+ * @incval: Source timer increment value per clock cycle
+ *
+ * PF/VF sends this message to adjust the frequency of the main timer by the
+ * indicated scaled ppm.
+ */
+struct virtchnl2_ptp_adj_dev_clk_fine {
+	__le64 incval;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_adj_dev_clk_fine);
+
+/**
+ * struct virtchnl2_ptp_adj_dev_clk_time: Associated with message
+ *					  VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_TIME.
+ * @delta: Offset in nanoseconds to adjust the time by
+ *
+ * PF/VF sends this message to adjust the time of the main timer by the delta.
+ */
+struct virtchnl2_ptp_adj_dev_clk_time {
+	__le64 delta;
+};
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_adj_dev_clk_time);
+
 #endif /* _VIRTCHNL_2_H_ */
-- 
2.31.1

