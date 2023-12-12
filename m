Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 337D980EED2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 15:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B946041621;
	Tue, 12 Dec 2023 14:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B946041621
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702391413;
	bh=2fgAlcDVCYt9jA30n2+Swd9Litpnipqab8FVkZPIziY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7MWQ7pLi9HICN3cwtznNCIboY3NBlwkrUYGIWcJMvrYwgiAkoXbCq0m4d/Rrjvaii
	 aR0IZqrCg6eRKUMr9/K+r71ERMi9gcmSGGOVnRiQgtSXXwpr8W5r91YPxgC093/6cM
	 dOsxV0bQEE37cFmc6vu5qY+X5ntggtxHL8JEwKrTsKHwZwUHoOBG3EjM4Y5nrny8xX
	 xZcauwCG9XSzNugtkDjXc9Gpl6GnkZtWvAlfsFr1+MvtskpccyVoqhPqw20HZybKVv
	 AZqN+vntnTtRITc3tgv86Vro7SV9WXgV59Vj2dQWVv/3Qhcs3e58NCXg5/bfD0Lqh7
	 zFuUp3ZQ2L8Kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uirrWGsfcuQf; Tue, 12 Dec 2023 14:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14EB1408D6;
	Tue, 12 Dec 2023 14:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14EB1408D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C62571BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94526827F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94526827F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f_GVpR1bA5Dn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 14:29:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9256982890
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9256982890
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1887381"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; 
   d="scan'208";a="1887381"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 06:29:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1104923763"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="1104923763"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2023 06:29:51 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 12 Dec 2023 15:27:52 +0100
Message-ID: <20231212142752.935000-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231212142752.935000-1-aleksander.lobakin@intel.com>
References: <20231212142752.935000-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702391397; x=1733927397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SmqwRqR+FjKFB/XPmsvj5POk5lK1K1Y9U4M2qqIxTQY=;
 b=eXU4hC1/pCcSDA8MCIdqADUX7r3gO8Fx1wYfy3jdcVbQplqqUu7tADm9
 ACqI4rG0ymEmVWwYvvQDOqSsnh+HsVb+MOOrq6LYI/vVDCDYjjO0XCTl5
 ZBaqY7Blx40DP/KhahXAsJ3iWabnkrkpolMMZXLjYPp+ebZMLMOal/2Jk
 MwkVHlK+poS42BdbgVCVsz47dPvHiVuLBM+0JE4ygUk41VUsHqaqmk3XL
 f0ijYRap9zOF4HbvCupg4oJI2oE7MieDD2TF2TWt94ZOIdI46Ky6JXt3J
 fbEprqt/Gp1h2iq3kUPeKMd+7dJ39uxC15viTtGBg7Q3kjEn09FByLLGt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eXU4hC1/
Subject: [Intel-wired-lan] [PATCH net-next 2/2] idpf: add get/set for
 Ethtool's header split ringparam
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

idpf supports the header split feature and that feature is always
enabled by default.
However, for flexibility reasons and to simplify some scenarios, it
would be useful to have the support for switching the header split
off (and on) from the userspace.

Address that need by adding the user config parameter, the functions
for disabling (or enabling) the header split feature, and calls to
them from the Ethtool ringparam callbacks.
It still is enabled by default if supported by the hardware.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  7 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 11 ++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 65 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 12 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  2 +
 5 files changed, 90 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index bee73353b56a..0acc125decb3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -15,7 +15,7 @@ struct idpf_vport_max_q;
 #include <linux/pci.h>
 #include <linux/bitfield.h>
 #include <linux/sctp.h>
-#include <linux/ethtool.h>
+#include <linux/ethtool_netlink.h>
 #include <net/gro.h>
 #include <linux/dim.h>
 
@@ -418,11 +418,13 @@ struct idpf_vport {
 
 /**
  * enum idpf_user_flags
+ * @__IDPF_USER_FLAG_HSPLIT: header split state
  * @__IDPF_PROMISC_UC: Unicast promiscuous mode
  * @__IDPF_PROMISC_MC: Multicast promiscuous mode
  * @__IDPF_USER_FLAGS_NBITS: Must be last
  */
 enum idpf_user_flags {
+	__IDPF_USER_FLAG_HSPLIT = 0U,
 	__IDPF_PROMISC_UC = 32,
 	__IDPF_PROMISC_MC,
 
@@ -965,4 +967,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map);
 int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
 int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
 
+u8 idpf_vport_get_hsplit(const struct idpf_vport *vport);
+bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
+
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index bf58989a573e..d549d3c5910d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -320,6 +320,8 @@ static void idpf_get_ringparam(struct net_device *netdev,
 	ring->rx_pending = vport->rxq_desc_count;
 	ring->tx_pending = vport->txq_desc_count;
 
+	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
+
 	idpf_vport_ctrl_unlock(netdev);
 }
 
@@ -379,6 +381,14 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	    new_rx_count == vport->rxq_desc_count)
 		goto unlock_mutex;
 
+	if (!idpf_vport_set_hsplit(vport, kring->tcp_data_split)) {
+		NL_SET_ERR_MSG_MOD(ext_ack,
+				   "setting TCP data split is not supported");
+		err = -EOPNOTSUPP;
+
+		goto unlock_mutex;
+	}
+
 	config_data = &vport->adapter->vport_config[idx]->user_config;
 	config_data->num_req_txq_desc = new_tx_count;
 	config_data->num_req_rxq_desc = new_rx_count;
@@ -1334,6 +1344,7 @@ static int idpf_get_link_ksettings(struct net_device *netdev,
 static const struct ethtool_ops idpf_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
+	.supported_ring_params	= ETHTOOL_RING_USE_TCP_DATA_SPLIT,
 	.get_msglevel		= idpf_get_msglevel,
 	.set_msglevel		= idpf_set_msglevel,
 	.get_link		= ethtool_op_get_link,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 19809b0ddcd9..5fea2fd957eb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1057,6 +1057,71 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	adapter->next_vport = idpf_get_free_slot(adapter);
 }
 
+/**
+ * idpf_is_hsplit_supported - check whether the header split is supported
+ * @vport: virtual port to check the capability for
+ *
+ * Return: true if it's supported by the HW/FW, false if not.
+ */
+static bool idpf_is_hsplit_supported(const struct idpf_vport *vport)
+{
+	return idpf_is_queue_model_split(vport->rxq_model) &&
+	       idpf_is_cap_ena_all(vport->adapter, IDPF_HSPLIT_CAPS,
+				   IDPF_CAP_HSPLIT);
+}
+
+/**
+ * idpf_vport_get_hsplit - get the current header split feature state
+ * @vport: virtual port to query the state for
+ *
+ * Return: ``ETHTOOL_TCP_DATA_SPLIT_UNKNOWN`` if not supported,
+ *         ``ETHTOOL_TCP_DATA_SPLIT_DISABLED`` if disabled,
+ *         ``ETHTOOL_TCP_DATA_SPLIT_ENABLED`` if active.
+ */
+u8 idpf_vport_get_hsplit(const struct idpf_vport *vport)
+{
+	const struct idpf_vport_user_config_data *config;
+
+	if (!idpf_is_hsplit_supported(vport))
+		return ETHTOOL_TCP_DATA_SPLIT_UNKNOWN;
+
+	config = &vport->adapter->vport_config[vport->idx]->user_config;
+
+	return test_bit(__IDPF_USER_FLAG_HSPLIT, config->user_flags) ?
+	       ETHTOOL_TCP_DATA_SPLIT_ENABLED :
+	       ETHTOOL_TCP_DATA_SPLIT_DISABLED;
+}
+
+/**
+ * idpf_vport_set_hsplit - enable or disable header split on a given vport
+ * @vport: virtual port to configure
+ * @val: Ethtool flag controlling the header split state
+ *
+ * Return: true on success, false if not supported by the HW.
+ */
+bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val)
+{
+	struct idpf_vport_user_config_data *config;
+
+	if (!idpf_is_hsplit_supported(vport))
+		return val == ETHTOOL_TCP_DATA_SPLIT_UNKNOWN;
+
+	config = &vport->adapter->vport_config[vport->idx]->user_config;
+
+	switch (val) {
+	case ETHTOOL_TCP_DATA_SPLIT_UNKNOWN:
+		/* Default is to enable */
+	case ETHTOOL_TCP_DATA_SPLIT_ENABLED:
+		__set_bit(__IDPF_USER_FLAG_HSPLIT, config->user_flags);
+		return true;
+	case ETHTOOL_TCP_DATA_SPLIT_DISABLED:
+		__clear_bit(__IDPF_USER_FLAG_HSPLIT, config->user_flags);
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * idpf_vport_alloc - Allocates the next available struct vport in the adapter
  * @adapter: board private structure
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 29d2191737d5..c01fdfd41d98 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1240,12 +1240,15 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_queue *q;
 	int i, k, err = 0;
+	bool hs;
 
 	vport->rxq_grps = kcalloc(vport->num_rxq_grp,
 				  sizeof(struct idpf_rxq_group), GFP_KERNEL);
 	if (!vport->rxq_grps)
 		return -ENOMEM;
 
+	hs = idpf_vport_get_hsplit(vport) == ETHTOOL_TCP_DATA_SPLIT_ENABLED;
+
 	for (i = 0; i < vport->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
 		int j;
@@ -1298,9 +1301,8 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			q->rx_buf_size = vport->bufq_size[j];
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 			q->rx_buf_stride = IDPF_RX_BUF_STRIDE;
-			if (idpf_is_cap_ena_all(adapter, IDPF_HSPLIT_CAPS,
-						IDPF_CAP_HSPLIT) &&
-			    idpf_is_queue_model_split(vport->rxq_model)) {
+
+			if (hs) {
 				q->rx_hsplit_en = true;
 				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
 			}
@@ -1344,9 +1346,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 				rx_qgrp->splitq.rxq_sets[j]->refillq1 =
 				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
 
-			if (idpf_is_cap_ena_all(adapter, IDPF_HSPLIT_CAPS,
-						IDPF_CAP_HSPLIT) &&
-			    idpf_is_queue_model_split(vport->rxq_model)) {
+			if (hs) {
 				q->rx_hsplit_en = true;
 				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
 			}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 2c1b051fdc0d..d0cdd63b3d5b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3285,6 +3285,8 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	memcpy(vport->rx_itr_profile, rx_itr, IDPF_DIM_PROFILE_SLOTS);
 	memcpy(vport->tx_itr_profile, tx_itr, IDPF_DIM_PROFILE_SLOTS);
 
+	idpf_vport_set_hsplit(vport, ETHTOOL_TCP_DATA_SPLIT_ENABLED);
+
 	idpf_vport_init_num_qs(vport, vport_msg);
 	idpf_vport_calc_num_q_desc(vport);
 	idpf_vport_calc_num_q_groups(vport);
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
