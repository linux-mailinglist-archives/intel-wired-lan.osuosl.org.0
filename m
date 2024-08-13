Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E4F9505F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79E1B81DF8;
	Tue, 13 Aug 2024 13:08:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id as6QwAZaFhE7; Tue, 13 Aug 2024 13:08:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 083A881D3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554519;
	bh=BZ3zS/fyEn1wFhKE5IS835zwpWoD2a+II5whXePqazs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vpEYHchXvuSwWFXbzM+L5nSZZHNTkihAuOIGAXwdWOn8AkkHNQ3VCbIL3UeSJH0pk
	 9G+OVetI0eBQBaIjlTSerL8gc5YRsYb2No8M+LdxUEOaWxUgeWn9nWCRw8tXx6J+84
	 lQ390wii41SvYlXcRqmJkzNOMzIIfGW49JQPSPFNZb/3P6dTPjyhm7PW+sq10pIk1D
	 0i4gE0tpFvI6YlFF79dbMmU3g5ejOQ5oa5Z1Ql993h87p1NtxAb1ehtu+GWDqxigNd
	 bNP/O91H5Jyq64mbry/Kwtweyuu3rfCpHnbsLh/7WHZhL+Szyzvg3fP1cNTIGNbxTx
	 PQiDxRpsw64dw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 083A881D3A;
	Tue, 13 Aug 2024 13:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5A71BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EC3240A49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgS6-_3U0KeX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 208B940A43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 208B940A43
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 208B940A43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
X-CSE-ConnectionGUID: Lm43lW8lRiKNVY2srCkVTw==
X-CSE-MsgGUID: 317mmW6CQ4eIPjzlWgHJAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290944"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290944"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:18 -0700
X-CSE-ConnectionGUID: oejKLHg+SF6xD9GEmbSdWg==
X-CSE-MsgGUID: /Ta9gZ9qQMqPxdTbfB2zPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417156"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:16 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3D3DD32C87;
 Tue, 13 Aug 2024 14:08:14 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:12 -0400
Message-Id: <20240813125513.8212-14-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554500; x=1755090500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XvYCQumUkBFwGQnCpViOb0WeKlpI0ZDR71vPOS39PrM=;
 b=gfw9/IjkvV72X5bkN63doR0kVYDKh2sK9GFNR1CU4Ze5MzSnv4vS7AhU
 XpC4OWtWs5vfEJSX8xvfSzQC4ievJLT7/U0fRRgZ3cnKjbQJ0LpLM6iXn
 sIEmmgsDbGcy0jUqiU4ny7W4NNyZk8ANi/TzZQZQ29Riz2GpW3ajq4ybi
 Szh3QmyKxEHZd9Ofi5IkfViybebJ/D52yXlK10z+o2KropCzoifLu59RD
 V2i0X+GlnffUE8NlH/fkxw7Xx6qsXa2uCEk0aWNkEKl8j5AvMWTBcdoeg
 mbGSYvv1WQ7D8RnmppsyCOPdO5fEky/X7FeikzWsJz2p9iKWphI0cEEYI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gfw9/Ijk
Subject: [Intel-wired-lan] [PATCH iwl-next v9 13/14] iavf: handle set and
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
 drivers/net/ethernet/intel/iavf/iavf_main.c |  21 ++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 102 ++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  |   3 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |   1 +
 4 files changed, 127 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 691de43a2c5b..1eacd06e372c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5067,6 +5067,25 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
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
 static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_open		= iavf_open,
 	.ndo_stop		= iavf_close,
@@ -5082,6 +5101,8 @@ static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_fix_features	= iavf_fix_features,
 	.ndo_set_features	= iavf_set_features,
 	.ndo_setup_tc		= iavf_setup_tc,
+	.ndo_hwtstamp_get	= iavf_hwstamp_get,
+	.ndo_hwtstamp_set	= iavf_hwstamp_set,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index 7124a717cd03..c52090c576d5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -4,6 +4,102 @@
 #include "iavf.h"
 #include "iavf_ptp.h"
 
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
+	}
+	else if (config->rx_filter > HWTSTAMP_FILTER_NTP_ALL) {
+		return -ERANGE;
+	}
+	else if (!(iavf_ptp_cap_supported(adapter,
+					  VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))) {
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
@@ -315,4 +411,10 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
 		iavf_ptp_release(adapter);
 	else if (!adapter->ptp.initialized && read_phc)
 		iavf_ptp_init(adapter);
+
+	/* Check if the device lost access to Rx timestamp incoming packets */
+	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
+		adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+		iavf_ptp_disable_rx_tstamp(adapter);
+	}
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 88f2a7bc4506..3b67a4624eee 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -15,5 +15,8 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter);
 bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap);
 void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp);
+int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
+			   struct kernel_hwtstamp_config *config,
+			   struct netlink_ext_ack *extack);
 
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index b72741f11338..bf291b53bb74 100644
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

