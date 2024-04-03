Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5461F8970EC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D82C4178D;
	Wed,  3 Apr 2024 13:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5tkZjL_nV7wP; Wed,  3 Apr 2024 13:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3413741759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712150912;
	bh=FikgQm1EmN3yRqf33c0fumktW8FQEIkzyQFbXMn7ylI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GKQvCmrXhmoveoYc10fWPR+NQwSGnv9uiGwv1Qes31wka7X3Wdhdjon5OpJ9Mn8Z+
	 O/5PHGtDwVqpmaoThtDI6APmqbFEamN6rlzH/DE+faPNV1CT9hDTHbLEPVWxzOlfWu
	 RUPDbQJkS6JaGGpKaEt0jvkdE4LuNHb/6vfcx5zkPg+K0hG5263wdnAK6uL0bOVORS
	 /fPnwTcKQBlpjCnoNCAkaLzKVIXw8eYi6L9h0ROf1BoVDtJb5x7w4uJNs2s4m0N7gZ
	 UZIXO+BOd+Fqn21AORz7tfwPtDNaGjRDCrh1jP7PPIWKFyfR4erjEjOJtCV57EzdmL
	 9zUeo97Ja529A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3413741759;
	Wed,  3 Apr 2024 13:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25A951BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8713E81FDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1v7AfAUQ0Xz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:28:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 78DC982119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78DC982119
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78DC982119
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:23 +0000 (UTC)
X-CSE-ConnectionGUID: +Sg92rUbRBShLg50wLcJsA==
X-CSE-MsgGUID: rO/PrNasTP2Ih6jovYbceQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7568756"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7568756"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:28:23 -0700
X-CSE-ConnectionGUID: fw0fybJDRciXf3I66YUl/g==
X-CSE-MsgGUID: KqK84zCzSP63gfiYa3XCFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="41592078"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 03 Apr 2024 06:28:20 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8704F36C18;
 Wed,  3 Apr 2024 14:28:16 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 09:19:20 -0400
Message-Id: <20240403131927.87021-6-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
References: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150903; x=1743686903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2OK9zniD3Kl1yamTmEiOM50EMBm688Olr2BNbC6g9KE=;
 b=RVALLiROPL4lL3xw0zRBPg4Y298+1jLQ6igZunSsVG5hqwwqgl9RlM2J
 1VjGcorR5tlL+PvHxgPJBdkiesnFOA84tSf8Nf+uPHAW5ruLPkQeBWcCD
 XZAoiLkHgIzlGqfOgscBfsFeE24NE/Xy/0M1HqwZiyRx1TN6AMO7H9897
 ekB+jKO/4P8keSbvafa2eUOW42lJbw49oxA+i639QwrmNJx+u31AYJS1Y
 cwK8ntKt+JhhDf50DKXZeW1ikC1IqyQWLBufi2K0yELR47OqvOYcEuNm7
 JWaMScksqhMNA72GMBEylXIA2dkkC6UGE7DeSOA4Xq0CyOiKnhpmpAUVO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RVALLiRO
Subject: [Intel-wired-lan] [PATCH iwl-next v3 05/12] iavf: negotiate PTP
 capabilities
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

Add a new extended capabilities negotiation to exchange information from
the PF about what PTP capabilities are supported by this VF. This
requires sending a VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting
for the response from the PF. Handle this early on during the VF
initialization.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 17 +++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 69 +++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    | 12 +++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 77 +++++++++++++++++++
 4 files changed, 173 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index db00c1197c04..dbec7724a57d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -39,6 +39,7 @@
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
 #include "iavf_adv_rss.h"
+#include "iavf_ptp.h"
 #include <linux/bitmap.h>
 
 #define DEFAULT_DEBUG_LEVEL_SHIFT 3
@@ -337,13 +338,16 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
 #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
 #define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(39)
+#define IAVF_FLAG_AQ_GET_PTP_CAPS			BIT_ULL(40)
+#define IAVF_FLAG_AQ_SEND_PTP_CMD			BIT_ULL(41)
 
 	/* AQ messages that must be sent after IAVF_FLAG_AQ_GET_CONFIG, in
 	 * order to negotiated extended capabilities.
 	 */
 #define IAVF_FLAG_AQ_EXTENDED_CAPS			\
 	(IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS |	\
-	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
+	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS |		\
+	 IAVF_FLAG_AQ_GET_PTP_CAPS)
 
 	/* flags for processing extended capability messages during
 	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
@@ -357,12 +361,16 @@ struct iavf_adapter {
 #define IAVF_EXTENDED_CAP_RECV_VLAN_V2			BIT_ULL(1)
 #define IAVF_EXTENDED_CAP_SEND_RXDID			BIT_ULL(2)
 #define IAVF_EXTENDED_CAP_RECV_RXDID			BIT_ULL(3)
+#define IAVF_EXTENDED_CAP_SEND_PTP			BIT_ULL(4)
+#define IAVF_EXTENDED_CAP_RECV_PTP			BIT_ULL(5)
 
 #define IAVF_EXTENDED_CAPS				\
 	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
 	 IAVF_EXTENDED_CAP_RECV_VLAN_V2 |		\
 	 IAVF_EXTENDED_CAP_SEND_RXDID |			\
-	 IAVF_EXTENDED_CAP_RECV_RXDID)
+	 IAVF_EXTENDED_CAP_RECV_RXDID |			\
+	 IAVF_EXTENDED_CAP_SEND_PTP |			\
+	 IAVF_EXTENDED_CAP_RECV_PTP)
 
 	/* Lock to prevent possible clobbering of
 	 * current_netdev_promisc_flags
@@ -420,6 +428,8 @@ struct iavf_adapter {
 			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
 #define RXDID_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
 			   VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
+#define PTP_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
+			 VIRTCHNL_VF_CAP_PTP)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
@@ -427,6 +437,7 @@ struct iavf_adapter {
 		       ((_a)->pf_version.minor == 1))
 	struct virtchnl_vlan_caps vlan_v2_caps;
 	struct virtchnl_supported_rxdids supported_rxdids;
+	struct iavf_ptp ptp;
 	u16 msg_enable;
 	struct iavf_eth_stats current_stats;
 	struct iavf_vsi vsi;
@@ -539,6 +550,8 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
 int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
 int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter);
+int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter);
+int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter);
 void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0964939ab5f5..ea2034d7914a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2110,6 +2110,8 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return iavf_send_vf_offload_vlan_v2_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
 		return iavf_send_vf_supported_rxdids_msg(adapter);
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_PTP_CAPS)
+		return iavf_send_vf_ptp_caps_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_QUEUES) {
 		iavf_disable_queues(adapter);
 		return 0;
@@ -2684,6 +2686,64 @@ static void iavf_init_recv_supported_rxdids(struct iavf_adapter *adapter)
 	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
+/**
+ * iavf_init_send_ptp_caps - part of querying for extended PTP capabilities
+ * @adapter: board private structure
+ *
+ * Function processes send of the request for 1588 PTP capabilities to the PF.
+ * Must clear IAVF_EXTENDED_CAP_SEND_PTP if the message is not sent, e.g.
+ * due to the PF not negotiating VIRTCHNL_VF_PTP_CAP
+ */
+static void iavf_init_send_ptp_caps(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_PTP));
+
+	ret = iavf_send_vf_ptp_caps_msg(adapter);
+	if (ret && ret == -EOPNOTSUPP) {
+		/* PF does not support VIRTCHNL_VF_PTP_CAP. In this case, we
+		 * did not send the capability exchange message and do not
+		 * expect a response.
+		 */
+		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
+	}
+
+	/* We sent the message, so move on to the next step */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_PTP;
+}
+
+/**
+ * iavf_init_recv_ptp_caps - part of querying for supported PTP capabilities
+ * @adapter: board private structure
+ *
+ * Function processes receipt of the PTP capabilities supported on this VF.
+ **/
+static void iavf_init_recv_ptp_caps(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_PTP));
+
+	memset(&adapter->ptp.hw_caps, 0, sizeof(adapter->ptp.hw_caps));
+
+	ret = iavf_get_vf_ptp_caps(adapter);
+	if (ret)
+		goto err;
+
+	/* We've processed the PF response to the VIRTCHNL_OP_1588_PTP_GET_CAPS
+	 * message we sent previously.
+	 */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
+	return;
+err:
+	/* We didn't receive a reply. Make sure we try sending again when
+	 * __IAVF_INIT_FAILED attempts to recover.
+	 */
+	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_PTP;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+}
+
 /**
  * iavf_init_process_extended_caps - Part of driver startup
  * @adapter: board private structure
@@ -2717,6 +2777,15 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
 		return;
 	}
 
+	/* Process capability exchange for PTP features */
+	if (adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_PTP) {
+		iavf_init_send_ptp_caps(adapter);
+		return;
+	} else if (adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_PTP) {
+		iavf_init_recv_ptp_caps(adapter);
+		return;
+	}
+
 	/* When we reach here, no further extended capabilities exchanges are
 	 * necessary, so we finally transition into __IAVF_INIT_CONFIG_ADAPTER
 	 */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
new file mode 100644
index 000000000000..aee4e2da0b9a
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2024 Intel Corporation. */
+
+#ifndef _IAVF_PTP_H_
+#define _IAVF_PTP_H_
+
+/* fields used for PTP support */
+struct iavf_ptp {
+	struct virtchnl_ptp_caps hw_caps;
+};
+
+#endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 52b8f1721147..f922e177146d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -145,6 +145,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_CRC |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
+	       VIRTCHNL_VF_CAP_PTP |
 	       VIRTCHNL_VF_OFFLOAD_ADQ |
 	       VIRTCHNL_VF_OFFLOAD_USO |
 	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
@@ -187,6 +188,39 @@ int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter)
 				NULL, 0);
 }
 
+/**
+ * iavf_send_vf_ptp_caps_msg - Send request for PTP capabilities
+ * @adapter: private adapter structure
+ *
+ * Send the VIRTCHNL_OP_1588_PTP_GET_CAPS command to the PF to request the PTP
+ * capabilities available to this device. This includes the following
+ * potential access:
+ *
+ * * READ_PHC - access to read the PTP hardware clock time
+ * * RX_TSTAMP - access to request Rx timestamps on all received packets
+ *
+ * The PF will reply with the same opcode a filled out copy of the
+ * virtchnl_ptp_caps structure which defines the specifics of which features
+ * are accessible to this device.
+ */
+int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
+{
+	struct virtchnl_ptp_caps hw_caps = {};
+
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_PTP_CAPS;
+
+	if (!PTP_ALLOWED(adapter))
+		return -EOPNOTSUPP;
+
+	hw_caps.caps = (VIRTCHNL_1588_PTP_CAP_READ_PHC |
+			VIRTCHNL_1588_PTP_CAP_RX_TSTAMP);
+
+	adapter->current_op = VIRTCHNL_OP_1588_PTP_GET_CAPS;
+
+	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_1588_PTP_GET_CAPS,
+				(u8 *)&hw_caps, sizeof(hw_caps));
+}
+
 /**
  * iavf_validate_num_queues
  * @adapter: adapter structure
@@ -312,6 +346,45 @@ int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
 	return err;
 }
 
+int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
+{
+	struct iavf_hw *hw = &adapter->hw;
+	struct iavf_arq_event_info event;
+	enum virtchnl_ops op;
+	enum iavf_status err;
+	u16 len;
+
+	len =  sizeof(struct virtchnl_ptp_caps);
+	event.buf_len = len;
+	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
+	if (!event.msg_buf) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	while (1) {
+		/* When the AQ is empty, iavf_clean_arq_element will return
+		 * nonzero and this loop will terminate.
+		 */
+		err = iavf_clean_arq_element(hw, &event, NULL);
+		if (err != IAVF_SUCCESS)
+			goto out_alloc;
+		op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
+		if (op == VIRTCHNL_OP_1588_PTP_GET_CAPS)
+			break;
+	}
+
+	err = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
+	if (err)
+		goto out_alloc;
+
+	memcpy(&adapter->ptp.hw_caps, event.msg_buf, min(event.msg_len, len));
+out_alloc:
+	kfree(event.msg_buf);
+out:
+	return err;
+}
+
 /**
  * iavf_configure_queues
  * @adapter: adapter structure
@@ -2435,6 +2508,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		memcpy(&adapter->supported_rxdids, msg,
 		       min_t(u16, msglen, sizeof(adapter->supported_rxdids)));
 	break;
+	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
+		memcpy(&adapter->ptp.hw_caps, msg,
+		       min_t(u16, msglen, sizeof(adapter->ptp.hw_caps)));
+	break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
-- 
2.38.1

