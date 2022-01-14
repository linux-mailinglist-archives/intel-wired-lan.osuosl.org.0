Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB0E48E79B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 10:37:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB21D405AE;
	Fri, 14 Jan 2022 09:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjifY_sHaYD0; Fri, 14 Jan 2022 09:37:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60014405E7;
	Fri, 14 Jan 2022 09:37:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71ED31BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 09:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B91E403A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 09:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E_Ip9zXMT22s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 09:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AE98403FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 09:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642153049; x=1673689049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JLZ3xYPlszV1ocMKL2gYtNQaUs2eI9x+iA3gg/g3gbE=;
 b=ODcPzJpsvNIpH0OAF/wT4TnbPCCiIaGtICWxL5LwQZR60a64ZQQ+bz5C
 8v70YN8cQ5zbUw34iptHHE+Y+xwuCMYJ9eW10U7DOWOa7HQbzIMU82uXJ
 ciAg4cqdGPFNgyjQ8CziODFyYITe+ZgSi8aPN+fK3Xv1spmGDmIkYMzKQ
 SHBrZlkcT8+AeUmi+9ZvrWgZJPGaJBVdno1EqKadfGjKmSHSh1scXpfx5
 Q/5eXGoobpuJNvvBtsAk3DYVO0Bi6GafwbuuGW6ENuY44C8HMWr9XWsbY
 wazPjvcTtmBEM3ErGOdlocaY430KGEKs6Ip/UkSzqKvytTl0kvWK+PkmH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="231565313"
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="231565313"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 01:37:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="516318771"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga007.jf.intel.com with ESMTP; 14 Jan 2022 01:37:27 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 10:36:36 +0100
Message-Id: <20220114093636.20848-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: refactor processing of
 VLAN V2 capability message
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to handle the capability exchange necessary for
VIRTCHNL_VF_OFFLOAD_VLAN_V2, the driver must send
a VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS message. This must occur prior to
__IAVF_CONFIG_ADAPTER, and the driver must wait for the response from
the PF.

To handle this, the __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS state was
introduced. This state is intended to process the response from the VLAN
V2 caps message. This works ok, but is difficult to extend to adding
more extended capability exchange.

Existing (and future) AVF features are relying more and more on these
sort of extended ops for processing additional capabilities. Just like
VLAN V2, this exchange must happen prior to __IAVF_CONFIG_ADPATER.

Since we only send one outstanding AQ message at a time during init, it
is not clear where to place this state. Adding more capability specific
states becomes a mess. Instead of having the "previous" state send
a message and then transition into a capability-specific state,
introduce __IAVF_EXTENDED_CAPS state. This state will use a list of
extended_caps that determines what messages to send and receive. As long
as there are extended_caps bits still set, the driver will remain in
this state performing one send or one receive per state machine loop.

Refactor the VLAN V2 negotiation to use this new state, and remove the
capability-specific state. This makes it significantly easier to add
a new similar capability exchange going forward.

Extended capabilities are processed by having an associated SEND and
RECV extended capability bit. During __IAVF_EXTENDED_CAPS, the
driver checks these bits in order by feature, first the send bit for
a feature, then the recv bit for a feature. Each send flag will call
a function that sends the necessary response, while each receive flag
will wait for the response from the PF. If a given feature can't be
negotiated with the PF, the associated flags will be cleared in
order to skip processing of that feature.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  17 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c | 109 ++++++++++++++------
 2 files changed, 95 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 59806d1..16cd06f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -188,7 +188,7 @@ enum iavf_state_t {
 	__IAVF_REMOVE,		/* driver is being unloaded */
 	__IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply */
 	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
-	__IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS,
+	__IAVF_INIT_EXTENDED_CAPS,	/* process extended caps which require aq msg exchange */
 	__IAVF_INIT_CONFIG_ADAPTER,
 	__IAVF_INIT_SW,		/* got resources, setting up structs */
 	__IAVF_INIT_FAILED,	/* init failed, restarting procedure */
@@ -329,6 +329,21 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
 #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
 
+	/* flags for processing extended capability messages during
+	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
+	 * both a SEND and a RECV step, which must be processed in sequence.
+	 *
+	 * During the __IAVF_INIT_EXTENDED_CAPS state, the driver will
+	 * process one flag at a time during each state loop.
+	 */
+	u64 extended_caps;
+#define IAVF_EXTENDED_CAP_SEND_VLAN_V2			BIT_ULL(0)
+#define IAVF_EXTENDED_CAP_RECV_VLAN_V2			BIT_ULL(1)
+
+#define IAVF_EXTENDED_CAPS				\
+	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
+	 IAVF_EXTENDED_CAP_RECV_VLAN_V2)
+
 	/* OS defined structs */
 	struct net_device *netdev;
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7802f8f..ec4f85a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2187,26 +2187,17 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
 	}
 
 	err = iavf_parse_vf_resource_msg(adapter);
-	if (err)
-		goto err_alloc;
-
-	err = iavf_send_vf_offload_vlan_v2_msg(adapter);
-	if (err == -EOPNOTSUPP) {
-		/* underlying PF doesn't support VIRTCHNL_VF_OFFLOAD_VLAN_V2, so
-		 * go directly to finishing initialization
-		 */
-		iavf_change_state(adapter, __IAVF_INIT_CONFIG_ADAPTER);
-		return;
-	} else if (err) {
-		dev_err(&pdev->dev, "Unable to send offload vlan v2 request (%d)\n",
-			err);
+	if (err) {
+		dev_err(&pdev->dev, "Failed to parse VF resource message from PF (%d)\n", err);
 		goto err_alloc;
 	}
-
-	/* underlying PF supports VIRTCHNL_VF_OFFLOAD_VLAN_V2, so update the
-	 * state accordingly
+	/* Some features require additional messages to negotiate extended
+	 * capabilities. These are processed in sequence by the
+	 * __IAVF_INIT_EXTENDED_CAPS driver state.
 	 */
-	iavf_change_state(adapter, __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS);
+	adapter->extended_caps = IAVF_EXTENDED_CAPS;
+
+	iavf_change_state(adapter, __IAVF_INIT_EXTENDED_CAPS);
 	return;
 
 err_alloc:
@@ -2217,34 +2208,92 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_init_get_offload_vlan_v2_caps - part of driver startup
+ * iavf_init_send_offload_vlan_v2_caps - part of initializing VLAN V2 caps
  * @adapter: board private structure
  *
- * Function processes __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS driver state if the
- * VF negotiates VIRTCHNL_VF_OFFLOAD_VLAN_V2. If VIRTCHNL_VF_OFFLOAD_VLAN_V2 is
- * not negotiated, then this state will never be entered.
+ * Function processes send of the extended VLAN V2 capability message to the
+ * PF. Must clear IAVF_EXTENDED_CAP_RECV_VLAN_V2 if the message is not sent,
+ * e.g. due to PF not negotiating VIRTCHNL_VF_OFFLOAD_VLAN_V2.
+ */
+static void iavf_init_send_offload_vlan_v2_caps(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_VLAN_V2));
+
+	ret = iavf_send_vf_offload_vlan_v2_msg(adapter);
+	if (ret && ret == -EOPNOTSUPP) {
+		/* PF does not support VIRTCHNL_VF_OFFLOAD_V2. In this case,
+		 * we did not send the capability exchange message and do not
+		 * expect a response.
+		 */
+		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_VLAN_V2;
+	}
+
+	/* We sent the message, so move on to the next step */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_VLAN_V2;
+}
+
+/**
+ * iavf_init_recv_offload_vlan_v2_caps - part of initializing VLAN V2 caps
+ * @adapter: board private structure
+ *
+ * Function processes receipt of the extended VLAN V2 capability message from
+ * the PF.
  **/
-static void iavf_init_get_offload_vlan_v2_caps(struct iavf_adapter *adapter)
+static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
 {
 	int ret;
 
-	WARN_ON(adapter->state != __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS);
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_VLAN_V2));
 
 	memset(&adapter->vlan_v2_caps, 0, sizeof(adapter->vlan_v2_caps));
 
 	ret = iavf_get_vf_vlan_v2_caps(adapter);
-	if (ret) {
-		if (ret == IAVF_ERR_ADMIN_QUEUE_NO_WORK)
-			iavf_send_vf_offload_vlan_v2_msg(adapter);
+	if (ret)
 		goto err;
-	}
 
-	iavf_change_state(adapter, __IAVF_INIT_CONFIG_ADAPTER);
+	/* We've processed receipt of the VLAN V2 caps message */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_VLAN_V2;
 	return;
 err:
+	/* We didn't receive a reply. Make sure we try sending again when
+	 * __IAVF_INIT_FAILED attempts to recover.
+	 */
+	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_VLAN_V2;
 	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
+/**
+ * iavf_init_process_extended_caps - Part of driver startup
+ * @adapter: board private structure
+ *
+ * Function processes __IAVF_INIT_EXTENDED_CAPS driver state. This state
+ * handles negotiating capabilities for features which require an additional
+ * message.
+ *
+ * Once all extended capabilities exchanges are finished, the driver will
+ * transition into __IAVF_INIT_CONFIG_ADAPTER.
+ */
+static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
+{
+	WARN_ON(adapter->state != __IAVF_INIT_EXTENDED_CAPS);
+
+	/* Process capability exchange for VLAN V2 */
+	if (adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_VLAN_V2) {
+		iavf_init_send_offload_vlan_v2_caps(adapter);
+		return;
+	} else if (adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_VLAN_V2) {
+		iavf_init_recv_offload_vlan_v2_caps(adapter);
+		return;
+	}
+
+	/* When we reach here, no further extended capabilities exchanges are
+	 * necessary, so we finally transition into __IAVF_INIT_CONFIG_ADAPTER
+	 */
+	iavf_change_state(adapter, __IAVF_INIT_CONFIG_ADAPTER);
+}
+
 /**
  * iavf_init_config_adapter - last part of driver startup
  * @adapter: board private structure
@@ -2404,8 +2453,8 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
-	case __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS:
-		iavf_init_get_offload_vlan_v2_caps(adapter);
+	case __IAVF_INIT_EXTENDED_CAPS:
+		iavf_init_process_extended_caps(adapter);
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
