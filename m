Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 519BA940D83
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26B4F60A42;
	Tue, 30 Jul 2024 09:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6yIOLDxhqCK3; Tue, 30 Jul 2024 09:28:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E115F60908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722331698;
	bh=JwXNgtaVSWyv+bmpVMU/RlUNkkPL9QOv52fgAmksLe4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zcQXdcVgEcA5j/5D5x5RMeStvOISbXtJV2UChLcCO7wOCadIeaf6z2qqBZUO1Krjv
	 +7Dgwb4sUjATzoFlRwGCronv/L8accyOsPKX4mtqAfRcH3Wn65qNRjTrejixJNduZh
	 wl7wUTPGrl3D6mPVYj/op2L16eMmlZAmx5TcJDBtTy/1N7k2gX00ISvluz28xKdWTm
	 ecT4lEJOVrtO8FeXu7TM2Y2Uw4hcjgMTQ4cQ74yfjOfFamPfHm1CC/QlMyxi90PLhq
	 rAdjN3ldKgUQYMhIbX4vWjBnCgGN7H8m3ERXnF+ktfwJnqEAIY/Bsw1h1ZjNA1VVyB
	 XicDk9JvXK6Zg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E115F60908;
	Tue, 30 Jul 2024 09:28:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 719EA1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BED24032A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOGHq8KKVMei for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:28:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 38B9640332
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38B9640332
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38B9640332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:28:08 +0000 (UTC)
X-CSE-ConnectionGUID: CYWbO4U6TUuvJKIX/UsKUA==
X-CSE-MsgGUID: xYSpoHurR7yehGJqhXy0uA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45551342"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="45551342"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:28:08 -0700
X-CSE-ConnectionGUID: 5pnHWKiqTqywuqCjxgfpTQ==
X-CSE-MsgGUID: LxDZ6Jj4Rz6n14n24mnOnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84923227"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2024 02:28:04 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 602072816F;
 Tue, 30 Jul 2024 10:28:03 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 30 Jul 2024 05:15:08 -0400
Message-Id: <20240730091509.18846-14-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722331688; x=1753867688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BVSc5KzZm+D2Na14VnVthuFUE5gYtFSWcwL/KOS31vI=;
 b=d+P6SdSKhbk0yoyVWLWjlNkrWqt05GOqjY5dGZDsDjzeqHIEy7UWqGMo
 0mgsrBdWoYzMJERYNffhOecGOSvtr65Aw1GpMGCmBcLG//Rv24FNg8z1A
 ISzfL8hWwKeGbA4CSN0BA2OoZ5SdKWdRPlkfmPH9qPZV14qrxFF5JBrfg
 XVAR3Jjxma4hWjiQXEr0oHTakjGxeMRvLPsuaFNxXQLmuzS0t3seYGffo
 4DsP+cAj6DDn+uWAMoVI5L0A+x69YhG9rMNW8RTlh3XTkjYmITVBPqbaS
 2GfErWnIOA0mQdQQX2bkfFs30S7HARZ5to9nxRn4HhracUDCmGzdej2D6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d+P6SdSK
Subject: [Intel-wired-lan] [PATCH iwl-next v8 13/14] iavf: handle set and
 get timestamps ops
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Add handlers for the .ndo_hwtstamp_get and .ndo_hwtstamp_set ops which allow
userspace to request timestamp enablement for the device. This support allows
standard Linux applications to request the timestamping desired.

As with other devices that support timestamping all packets, the driver
will upgrade any request for timestamping of a specific type of packet
to HWTSTAMP_FILTER_ALL.

The current configuration is stored, so that it can be retrieved by
calling .ndo_hwtstamp_get

The Tx timestamps are not implemented yet so calling set ops for
Tx path will end with EOPNOTSUPP error code.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c |  19 +++
 drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 136 ++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  |   6 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |   1 +
 4 files changed, 162 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index dc1908690e2d..61720b27c8f1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5067,6 +5067,23 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 	return iavf_fix_strip_features(adapter, features);
 }
 
+static int iavf_hwstamp_get(struct net_device *netdev,
+			    struct kernel_hwtstamp_config *config)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+
+	return iavf_ptp_get_ts_config(adapter, config);
+}
+
+static int iavf_hwstamp_set(struct net_device *netdev,
+			    struct kernel_hwtstamp_config *config,
+			    struct netlink_ext_ack *extack)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+
+	return iavf_ptp_set_ts_config(adapter, config, extack);
+}
+
 static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_open		= iavf_open,
 	.ndo_stop		= iavf_close,
@@ -5082,6 +5099,8 @@ static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_fix_features	= iavf_fix_features,
 	.ndo_set_features	= iavf_set_features,
 	.ndo_setup_tc		= iavf_setup_tc,
+	.ndo_hwtstamp_get	= iavf_hwstamp_get,
+	.ndo_hwtstamp_set	= iavf_hwstamp_set,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index 9eb3161575d5..7754f4f24052 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -3,6 +3,136 @@
 
 #include "iavf.h"
 
+/**
+ * iavf_ptp_disable_rx_tstamp - Disable timestamping in Rx rings
+ * @adapter: private adapter structure
+ *
+ * Disable timestamp reporting for all Rx rings.
+ */
+static void iavf_ptp_disable_rx_tstamp(struct iavf_adapter *adapter)
+{
+	unsigned int i;
+
+	for (i = 0; i < adapter->num_active_queues; i++)
+		adapter->rx_rings[i].flags &= ~IAVF_TXRX_FLAGS_HW_TSTAMP;
+}
+
+/**
+ * iavf_ptp_enable_rx_tstamp - Enable timestamping in Rx rings
+ * @adapter: private adapter structure
+ *
+ * Enable timestamp reporting for all Rx rings.
+ */
+static void iavf_ptp_enable_rx_tstamp(struct iavf_adapter *adapter)
+{
+	unsigned int i;
+
+	for (i = 0; i < adapter->num_active_queues; i++)
+		adapter->rx_rings[i].flags |= IAVF_TXRX_FLAGS_HW_TSTAMP;
+}
+
+/**
+ * iavf_ptp_set_timestamp_mode - Set device timestamping mode
+ * @adapter: private adapter structure
+ * @config: pointer to kernel_hwtstamp_config
+ *
+ * Set the timestamping mode requested from the userspace.
+ *
+ * Note: this function always translates Rx timestamp requests for any packet
+ * category into HWTSTAMP_FILTER_ALL.
+ *
+ * Return: zero.
+ */
+static int iavf_ptp_set_timestamp_mode(struct iavf_adapter *adapter,
+				       struct kernel_hwtstamp_config *config)
+{
+	/* Reserved for future extensions. */
+	if (config->flags)
+		return -EINVAL;
+
+	switch (config->tx_type) {
+	case HWTSTAMP_TX_OFF:
+		break;
+	case HWTSTAMP_TX_ON:
+		return -EOPNOTSUPP;
+	default:
+		return -ERANGE;
+	}
+
+	switch (config->rx_filter) {
+	case HWTSTAMP_FILTER_NONE:
+		iavf_ptp_disable_rx_tstamp(adapter);
+		break;
+	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
+	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
+	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
+	case HWTSTAMP_FILTER_NTP_ALL:
+	case HWTSTAMP_FILTER_ALL:
+		if (!(iavf_ptp_cap_supported(adapter,
+					     VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)))
+			return -EOPNOTSUPP;
+		config->rx_filter = HWTSTAMP_FILTER_ALL;
+		iavf_ptp_enable_rx_tstamp(adapter);
+		break;
+	default:
+		return -ERANGE;
+	}
+
+	return 0;
+}
+
+/**
+ * iavf_ptp_get_ts_config - Get timestamping configuration
+ * @adapter: private adapter structure
+ * @config: pointer to kernel_hwtstamp_config
+ *
+ * Return the current hardware timestamping configuration back to userspace.
+ *
+ * Return: zero.
+ */
+int iavf_ptp_get_ts_config(struct iavf_adapter *adapter,
+			   struct kernel_hwtstamp_config *config)
+{
+	*config = adapter->ptp.hwtstamp_config;
+
+	return 0;
+}
+
+/**
+ * iavf_ptp_set_ts_config - Set timestamping configuration
+ * @adapter: private adapter structure
+ * @config: pointer to kernel_hwtstamp_config structure
+ * @extack: pointer to netlink_ext_ack structure
+ *
+ * Program the requested timestamping configuration to the device.
+ *
+ * Return: zero.
+ */
+int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
+			   struct kernel_hwtstamp_config *config,
+			   struct netlink_ext_ack *extack)
+{
+	int err;
+
+	err = iavf_ptp_set_timestamp_mode(adapter, config);
+	if (err)
+		return err;
+
+	/* Save successful settings for future reference */
+	adapter->ptp.hwtstamp_config = *config;
+
+	return 0;
+}
+
 /**
  * clock_to_adapter - Convert clock info pointer to adapter pointer
  * @ptp_info: PTP info structure
@@ -336,4 +466,10 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
 		 iavf_ptp_cap_supported(adapter,
 					VIRTCHNL_1588_PTP_CAP_READ_PHC))
 		iavf_ptp_init(adapter);
+
+	/* Check if the device lost access to Rx timestamp incoming packets */
+	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
+		adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+		iavf_ptp_disable_rx_tstamp(adapter);
+	}
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 5f0efc5fbad1..656d360d2bb4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -21,6 +21,7 @@ struct iavf_ptp {
 	struct list_head aq_cmds;
 	/* Lock protecting access to the AQ command list */
 	struct mutex aq_cmd_lock;
+	struct kernel_hwtstamp_config hwtstamp_config;
 	u64 cached_phc_time;
 	unsigned long cached_phc_updated;
 	bool initialized;
@@ -35,5 +36,10 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter);
 bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
 void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp);
+int iavf_ptp_get_ts_config(struct iavf_adapter *adapter,
+			   struct kernel_hwtstamp_config *config);
+int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
+			   struct kernel_hwtstamp_config *config,
+			   struct netlink_ext_ack *extack);
 
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 94023873cb36..fd3444241a45 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -252,6 +252,7 @@ struct iavf_ring {
 #define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
 #define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
+#define IAVF_TXRX_FLAGS_HW_TSTAMP		BIT(6)
 
 	/* stats structs */
 	struct iavf_queue_stats	stats;
-- 
2.38.1

