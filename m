Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C57F9BE5AF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 12:38:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92DD38121D;
	Wed,  6 Nov 2024 11:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p5CyqMwHxkVW; Wed,  6 Nov 2024 11:38:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37F9781208
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730893090;
	bh=7Oie+8+sWvptBe1vZFKzYk/YuTOpgb1i+9SL2C8uawg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UiJjv2d3bGsW2UXC8MJTupk1cvX3w/eCHZEPu50kH7Mkt9DTJaikDCQrk13EeuSF+
	 2vGf16DFZHGId1pylAvFw6t1y3tScybvrUPHhV8K4PKhr9SgweY6mi8uJvYJY2Purr
	 VASPhBy8svsVsB2ungqhtX2E3YzBm1zOdouw4T6TMWYAE9GBzXTZ5AUgt7W6dWqpP6
	 RKXDzQlnGz7nTO541uVa6ABmT0GSqYWjPMDRgqP3ViP64x79vJ2GV3n9/zYXL3FEpz
	 H/atVxqGyWIVMcnmZqjGFumr9nMpB+gstBviJ7+t59lknbiCGAQTmR7xiV/Z8tCSju
	 xf0IYroT9KZDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37F9781208;
	Wed,  6 Nov 2024 11:38:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E57D3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D48E402E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:38:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id liAZRXZJn74O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 11:37:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E5D9403C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E5D9403C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E5D9403C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:59 +0000 (UTC)
X-CSE-ConnectionGUID: CnCUZ9tDTtKM4qlw/itoWQ==
X-CSE-MsgGUID: k52ew3RxSN24eAGs25AuqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30455537"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30455537"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 03:37:59 -0800
X-CSE-ConnectionGUID: /Up8OsqERJSuNlxLT9HreA==
X-CSE-MsgGUID: SIGQYCxGQHi+XKF59qAI4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="122020169"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 06 Nov 2024 03:37:56 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 055782FC43;
 Wed,  6 Nov 2024 11:37:54 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Wed,  6 Nov 2024 12:37:30 -0500
Message-Id: <20241106173731.4272-14-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241106173731.4272-1-mateusz.polchlopek@intel.com>
References: <20241106173731.4272-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730893079; x=1762429079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EjScfngUthEdHpcrs3G5AxafKsbeX6gngnj+LJ/MqoA=;
 b=jyJ0rT7PSy0mB8HsH3AcUNG8qW8Wz/30BgP3vITOkclAdMEm55KZHYo5
 0bXWvZQqSsQqb5ubyNFosgsS7lHmM+l8H6gTDUF6n6V20G3jVmhxCl16d
 8T+DZ0p01cd8KSet+lFmnuAP5X6rYrseVkMOz6OAE2JcI29cZhgJ1RQ7q
 twBvXWwEzJBxMd+oZa7i3lIdrgauftNpaPTkccdvXBXUGAt7/mR6iIZd8
 wMCHgyWQ4YqpJm217CedZySbB+JuFPuqZU9SQZhhBzAhtoLWBq156sAp7
 GOpJeCtDmT54SaxL2WrnEpmuTQKWhK9wyzG9/BKX1kSQoy3yJZiNa957w
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jyJ0rT7P
Subject: [Intel-wired-lan] [PATCH iwl-next v13 13/14] iavf: handle set and
 get timestamps ops
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

From: Jacob Keller <jacob.e.keller@intel.com>

Add handlers for the .ndo_hwtstamp_get and .ndo_hwtstamp_set ops which
allow userspace to request timestamp enablement for the device. This
support allows standard Linux applications to request the timestamping
desired.

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
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c |  21 ++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 100 ++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  |   9 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |   1 +
 4 files changed, 131 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index b897dd94a32e..1103c210b4e3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5137,6 +5137,25 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 	return iavf_fix_strip_features(adapter, features);
 }
 
+static int iavf_hwstamp_get(struct net_device *netdev,
+			    struct kernel_hwtstamp_config *config)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+
+	*config = adapter->ptp.hwtstamp_config;
+
+	return 0;
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
 static int
 iavf_verify_shaper(struct net_shaper_binding *binding,
 		   const struct net_shaper *shaper,
@@ -5245,6 +5264,8 @@ static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_set_features	= iavf_set_features,
 	.ndo_setup_tc		= iavf_setup_tc,
 	.net_shaper_ops		= &iavf_shaper_ops,
+	.ndo_hwtstamp_get	= iavf_hwstamp_get,
+	.ndo_hwtstamp_set	= iavf_hwstamp_set,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index c2e0d27552b0..4246ddfa6f0d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -7,6 +7,100 @@
 #define iavf_clock_to_adapter(info)				\
 	container_of_const(info, struct iavf_adapter, ptp.info)
 
+/**
+ * iavf_ptp_disable_rx_tstamp - Disable timestamping in Rx rings
+ * @adapter: private adapter structure
+ *
+ * Disable timestamp reporting for all Rx rings.
+ */
+static void iavf_ptp_disable_rx_tstamp(struct iavf_adapter *adapter)
+{
+	for (u32 i = 0; i < adapter->num_active_queues; i++)
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
+	for (u32 i = 0; i < adapter->num_active_queues; i++)
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
+ * Return: 0 on success, negative error code otherwise.
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
+	if (config->rx_filter == HWTSTAMP_FILTER_NONE) {
+		iavf_ptp_disable_rx_tstamp(adapter);
+		return 0;
+	} else if (config->rx_filter > HWTSTAMP_FILTER_NTP_ALL) {
+		return -ERANGE;
+	} else if (!(iavf_ptp_cap_supported(adapter,
+					    VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))) {
+		return -EOPNOTSUPP;
+	}
+
+	config->rx_filter = HWTSTAMP_FILTER_ALL;
+	iavf_ptp_enable_rx_tstamp(adapter);
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
+ * Return: 0 on success, negative error code otherwise.
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
  * iavf_ptp_cap_supported - Check if a PTP capability is supported
  * @adapter: private adapter structure
@@ -321,4 +415,10 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
 		iavf_ptp_release(adapter);
 	else if (!adapter->ptp.clock && phc)
 		iavf_ptp_init(adapter);
+
+	/* Check if the device lost access to Rx timestamp incoming packets */
+	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
+		adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+		iavf_ptp_disable_rx_tstamp(adapter);
+	}
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 8e2f1ed18b86..0801e3ff5a59 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -12,6 +12,9 @@ void iavf_ptp_release(struct iavf_adapter *adapter);
 void iavf_ptp_process_caps(struct iavf_adapter *adapter);
 bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap);
 void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
+int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
+			   struct kernel_hwtstamp_config *config,
+			   struct netlink_ext_ack *extack);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 static inline void iavf_ptp_init(struct iavf_adapter *adapter) { }
 static inline void iavf_ptp_release(struct iavf_adapter *adapter) { }
@@ -23,5 +26,11 @@ static inline bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter,
 }
 
 static inline void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter) { }
+static inline int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
+					 struct kernel_hwtstamp_config *config,
+					 struct netlink_ext_ack *extack)
+{
+	return -1;
+}
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index dff5c8cd27ab..79ad554f2d53 100644
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

