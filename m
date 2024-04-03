Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EC58970F5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D556417B3;
	Wed,  3 Apr 2024 13:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tqn8S97JRtSm; Wed,  3 Apr 2024 13:28:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 765304031F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712150919;
	bh=TO5qLMTHxuBjfr7z14LyhggAosw6I7AKI02IXe4QETg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4l/7maMYOIrXoIZXYZ4sJ/lGi4ivdhWmO5zORheJzeaLdOOkk9FZYhENJt1L/qM0E
	 po9Re1D3EvplPVfSZqX2i83thBae0jISsoQf85WWC587JlgrOrJmrh+Qf10lvBFgEq
	 6jKns5GkOyE1vkcvk/7u1Ziwi1a8j5rlAAq5rSMqkqraShBGqcwqrnOyEzVrtKSHhn
	 OMP0boFuYnE6emF/IkV1b+QcnVr8FYm+z1bgnkbYNZmIKv7AIT5ar+5oD8OUEpXkui
	 R/ziwt79Ao9v9mtkhPwxhMbjvPhI+C82kWOz0Ow9N+FqZn+EAKSGg6NzRV0iElM07h
	 eHeFFlAlrFaBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 765304031F;
	Wed,  3 Apr 2024 13:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CD071BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 396B640308
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqyPhH-SPI5o for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:28:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C5F63402FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5F63402FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5F63402FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:28 +0000 (UTC)
X-CSE-ConnectionGUID: DYMvjpWWRciisWPD6OJp/Q==
X-CSE-MsgGUID: enAyl9k8SlicwgHG2sU1rA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7568791"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7568791"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:28:28 -0700
X-CSE-ConnectionGUID: jzOWqXKoRHqGFxc1hXGxTg==
X-CSE-MsgGUID: nl+r5IPtQyKotqyPS+i0Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="41592125"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 03 Apr 2024 06:28:25 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DAF7E36C1C;
 Wed,  3 Apr 2024 14:28:21 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 09:19:26 -0400
Message-Id: <20240403131927.87021-12-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
References: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150909; x=1743686909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=la+A9Hvmq7yXG15ZEcilIfFPuZeiaCuNX79k1p9FIOw=;
 b=XJZHO42mZ1qIwS0Qbnj+Q65t2pHC3mS08mpG5S0EuBuXUBn92LfCeJ7M
 Y49PuFerw2nKpY+6CABpinJPkL6a+Ev5p3d21nTHMERfdw0M0dAYJCqwF
 EhrhZIb/KiLpwni4BJO0MsrP0FkIps5vgjufUehdkHnFmjwbgCW8f7rs5
 pgFBjGNYQvnDPpBUF7A39NXIeperQe45Rnc3uyxs316qEvt4FDcU7HMfX
 +8UictSskMZtfD2QbYOPS1lkBsmS0yNTtUAPLku6oU16DSa5QGVQub/9v
 kJCsRRmzI73sPcak5KpL4lgaZjXy5bL8bOwg+HAfYrTYlNC5QPTriTFpQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XJZHO42m
Subject: [Intel-wired-lan] [PATCH iwl-next v3 11/12] iavf: handle
 SIOCSHWTSTAMP and SIOCGHWTSTAMP
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
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Add handlers for the SIOCSHWTSTAMP and SIOCGHWTSTAMP ioctls which allow
userspace to request timestamp enablement for the device. This
support allows standard Linux applications to request the timestamping
desired.

As with other devices that support timestamping all packets, the driver
will upgrade any request for timestamping of a specific type of packet
to HWTSTAMP_FILTER_ALL.

The current configuration is stored, so that it can be retrieved by
SIOCGHWTSTAMP.

The Tx timestamps are not implemented yet so calling SIOCSHWTSTAMP for
Tx path will end with EOPNOTSUPP error code.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c |  25 ++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 135 ++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  |   3 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |   1 +
 4 files changed, 164 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6b27065af357..a2fe2d124907 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4925,6 +4925,30 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 	return iavf_fix_strip_features(adapter, features);
 }
 
+/**
+ * iavf_do_ioctl - Handle network device specific ioctls
+ * @netdev: network interface device structure
+ * @ifr: interface request data
+ * @cmd: ioctl command
+ *
+ * Callback to handle the networking device specific ioctls. Used to handle
+ * the SIOCGHWTSTAMP and SIOCSHWTSTAMP ioctl requests that configure Tx and Rx
+ * timstamping support.
+ */
+static int iavf_do_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
+{
+	struct iavf_adapter *adapter = netdev_priv(netdev);
+
+	switch (cmd) {
+	case SIOCGHWTSTAMP:
+		return iavf_ptp_get_ts_config(adapter, ifr);
+	case SIOCSHWTSTAMP:
+		return iavf_ptp_set_ts_config(adapter, ifr);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_open		= iavf_open,
 	.ndo_stop		= iavf_close,
@@ -4940,6 +4964,7 @@ static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_fix_features	= iavf_fix_features,
 	.ndo_set_features	= iavf_set_features,
 	.ndo_setup_tc		= iavf_setup_tc,
+	.ndo_eth_ioctl		= iavf_do_ioctl,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index f1f4c260e08f..0e5cae23f9be 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -3,6 +3,135 @@
 
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
+ * @config: timestamping configuration request
+ *
+ * Set the timestamping mode requested from the SIOCSHWTSTAMP ioctl.
+ *
+ * Note: this function always translates Rx timestamp requests for any packet
+ * category into HWTSTAMP_FILTER_ALL.
+ */
+static int iavf_ptp_set_timestamp_mode(struct iavf_adapter *adapter,
+				       struct hwtstamp_config *config)
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
+ * iavf_ptp_get_ts_config - Get timestamping configuration for SIOCGHWTSTAMP
+ * @adapter: private adapter structure
+ * @ifr: the ioctl request structure
+ *
+ * Copy the current hardware timestamping configuration back to userspace.
+ * Called in response to the SIOCGHWTSTAMP ioctl that queries a device's
+ * current timestamp settings.
+ */
+int iavf_ptp_get_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr)
+{
+	struct hwtstamp_config *config = &adapter->ptp.hwtstamp_config;
+
+	return copy_to_user(ifr->ifr_data, config,
+			    sizeof(*config)) ? -EFAULT : 0;
+}
+
+/**
+ * iavf_ptp_set_ts_config - Set timestamping configuration from SIOCSHWTSTAMP
+ * @adapter: private adapter structure
+ * @ifr: the ioctl request structure
+ *
+ * Program the requested timestamping configuration from SIOCSHWTSTAMP ioctl
+ * to the device.
+ */
+int iavf_ptp_set_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr)
+{
+	struct hwtstamp_config config;
+	int err;
+
+	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
+		return -EFAULT;
+
+	err = iavf_ptp_set_timestamp_mode(adapter, &config);
+	if (err)
+		return err;
+
+	/* Save successful settings for future reference */
+	adapter->ptp.hwtstamp_config = config;
+
+	return copy_to_user(ifr->ifr_data, &config,
+			    sizeof(config)) ? -EFAULT : 0;
+}
+
 /**
  * clock_to_adapter - Convert clock info pointer to adapter pointer
  * @ptp_info: PTP info structure
@@ -325,4 +454,10 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
 	else if (!adapter->ptp.initialized &&
 		 iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC))
 		iavf_ptp_init(adapter);
+
+	/* Check if the device lost access to Rx timestamp incoming packets */
+	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
+		adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+		iavf_ptp_disable_rx_tstamp(adapter);
+	}
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 7a25647980f3..337bf184a7ea 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -21,6 +21,7 @@ struct iavf_ptp {
 	struct list_head aq_cmds;
 	/* Lock protecting access to the AQ command list */
 	spinlock_t aq_cmd_lock;
+	struct hwtstamp_config hwtstamp_config;
 	u64 cached_phc_time;
 	unsigned long cached_phc_updated;
 	bool initialized;
@@ -35,5 +36,7 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter);
 bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
 void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp);
+int iavf_ptp_get_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr);
+int iavf_ptp_set_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr);
 
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 54d858303839..f77407030566 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -358,6 +358,7 @@ struct iavf_ring {
 #define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
 #define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
+#define IAVF_TXRX_FLAGS_HW_TSTAMP		BIT(6)
 
 	/* stats structs */
 	struct iavf_queue_stats	stats;
-- 
2.38.1

