Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75765996214
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 10:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 279F440B3A;
	Wed,  9 Oct 2024 08:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gajCw_UdxV2g; Wed,  9 Oct 2024 08:12:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A05A940B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728461558;
	bh=Oaual2GCrHO36kW2W31YlDOLNCY77G+tohU9zv4j3yI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QlVfVdOUXcgUgt+y9+gLdfRo/HLd5CFE4tOdkBUpN86iJ/rhhithyIOR5ePzm+q4c
	 7P69pmPgmAoYxlBC6yrO5XAzvKB3hBiHkDGHUWEzmBLbzcxPl+zlPwJ3l6NEpVsLPv
	 3jhL6fKf660SLSEaBW8/Q9txgEZpx6Y9nvSq02aly5+CXlhHgSCJcQZAGeg+SEOe/2
	 C6qtX0TXCAqmqTVoYKOm/Mc0Sw7FAW80SnYD/4OybNDUtVjPG7e4VgoAaAcb2blT8I
	 EWeDAQnbO2BIGhnnsCTmTfmVMizu72uqvMHqs0aTBLUlmfHM5vWqot76CeNDCZVbF3
	 mWflpwkTshGKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A05A940B30;
	Wed,  9 Oct 2024 08:12:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24B451BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1220F401E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eh07grz_TUjA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 08:12:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 69F1440634
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69F1440634
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69F1440634
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:33 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-526-NxYQUIxLN8GWu8RF4k1B8A-1; Wed,
 09 Oct 2024 04:12:26 -0400
X-MC-Unique: NxYQUIxLN8GWu8RF4k1B8A-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5FD88196CE4D; Wed,  9 Oct 2024 08:11:41 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.249])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E599D19560AE; Wed,  9 Oct 2024 08:11:35 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Oct 2024 10:10:00 +0200
Message-ID: <5a882cb51998c4c2c3d21fed521498eba1c8f079.1728460186.git.pabeni@redhat.com>
In-Reply-To: <cover.1728460186.git.pabeni@redhat.com>
References: <cover.1728460186.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728461552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Oaual2GCrHO36kW2W31YlDOLNCY77G+tohU9zv4j3yI=;
 b=IUHXFeHW/RW8T6+brRjsAjIt849DzUrY/JZjBaSDPz0c84zmhL0hdh/4lML4TuRzbW3HEi
 9nMdNiX9ymWyIVJUpaWruLmJ9SzrT+OqJMXs1y2oRKscwvN78g5afWtBWZe3zqN3na0fIp
 2yTbAc7b+NhogkQ0/P021vVjzCrobIk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IUHXFeHW
Subject: [Intel-wired-lan] [PATCH v9 net-next 14/15] iavf: Add
 net_shaper_ops support
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

Implement net_shaper_ops support for IAVF. This enables configuration
of rate limiting on per queue basis. Customer intends to enforce
bandwidth limit on Tx traffic steered to the queue by configuring
rate limits on the queue.

To set rate limiting for a queue, update shaper object of given queues
in driver and send VIRTCHNL_OP_CONFIG_QUEUE_BW to PF to update HW
configuration.

Deleting shaper configured for queue is nothing but configuring shaper
with bw_max 0. The PF restores the default rate limiting config
when bw_max is zero.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v8 -> v9:
 - fixed SoB chain

v7 -> v8:
 - always acquire dev->lock unconditionally in iavf_finish_config()

v6 -> v7:
 - acquire dev->lock around channel manipulation
 - acquire crit_lock in shaper callback
 - handle gracefully 'old queues' id

v5 -> v6:
 - adapted to new API
 - dropped scope-related checks (moved into the core)

v4 -> v5:
 - fix kdoc
---
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 112 +++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  65 ++++++++++
 5 files changed, 182 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 0375c7448a57..20bc40eec487 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -258,6 +258,7 @@ config I40E_DCB
 config IAVF
 	tristate
 	select LIBIE
+	select NET_SHAPER
 
 config I40EVF
 	tristate "Intel(R) Ethernet Adaptive Virtual Function support"
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 48cd1d06761c..a84bdbfbb0f7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -34,6 +34,7 @@
 #include <net/tc_act/tc_gact.h>
 #include <net/tc_act/tc_mirred.h>
 #include <net/tc_act/tc_skbedit.h>
+#include <net/net_shaper.h>
 
 #include "iavf_type.h"
 #include <linux/avf/virtchnl.h>
@@ -336,6 +337,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION	BIT_ULL(36)
 #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
 #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
+#define IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW		BIT_ULL(39)
 
 	/* flags for processing extended capability messages during
 	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
@@ -581,6 +583,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 int iavf_config_rss(struct iavf_adapter *adapter);
 int iavf_lan_add_device(struct iavf_adapter *adapter);
 int iavf_lan_del_device(struct iavf_adapter *adapter);
+void iavf_cfg_queues_bw(struct iavf_adapter *adapter);
 void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f782402cd789..7764d8ce7f4e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1972,8 +1972,11 @@ static void iavf_finish_config(struct work_struct *work)
 
 	adapter = container_of(work, struct iavf_adapter, finish_config);
 
-	/* Always take RTNL first to prevent circular lock dependency */
+	/* Always take RTNL first to prevent circular lock dependency;
+	 * The dev->lock is needed to update the queue number
+	 */
 	rtnl_lock();
+	mutex_lock(&adapter->netdev->lock);
 	mutex_lock(&adapter->crit_lock);
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
@@ -2017,6 +2020,7 @@ static void iavf_finish_config(struct work_struct *work)
 
 out:
 	mutex_unlock(&adapter->crit_lock);
+	mutex_unlock(&adapter->netdev->lock);
 	rtnl_unlock();
 }
 
@@ -2085,6 +2089,11 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return 0;
 	}
 
+	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW) {
+		iavf_cfg_queues_bw(adapter);
+		return 0;
+	}
+
 	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_QUEUES) {
 		iavf_configure_queues(adapter);
 		return 0;
@@ -2918,6 +2927,30 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
 }
 
+/**
+ * iavf_reconfig_qs_bw - Call-back task to handle hardware reset
+ * @adapter: board private structure
+ *
+ * After a reset, the shaper parameters of queues need to be replayed again.
+ * Since the net_shaper object inside TX rings persists across reset,
+ * set the update flag for all queues so that the virtchnl message is triggered
+ * for all queues.
+ **/
+static void iavf_reconfig_qs_bw(struct iavf_adapter *adapter)
+{
+	int i, num = 0;
+
+	for (i = 0; i < adapter->num_active_queues; i++)
+		if (adapter->tx_rings[i].q_shaper.bw_min ||
+		    adapter->tx_rings[i].q_shaper.bw_max) {
+			adapter->tx_rings[i].q_shaper_update = true;
+			num++;
+		}
+
+	if (num)
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+}
+
 /**
  * iavf_reset_task - Call-back task to handle hardware reset
  * @work: pointer to work_struct
@@ -2944,10 +2977,12 @@ static void iavf_reset_task(struct work_struct *work)
 	/* When device is being removed it doesn't make sense to run the reset
 	 * task, just return in such a case.
 	 */
+	mutex_lock(&netdev->lock);
 	if (!mutex_trylock(&adapter->crit_lock)) {
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
+		mutex_unlock(&netdev->lock);
 		return;
 	}
 
@@ -2995,6 +3030,7 @@ static void iavf_reset_task(struct work_struct *work)
 			reg_val);
 		iavf_disable_vf(adapter);
 		mutex_unlock(&adapter->crit_lock);
+		mutex_unlock(&netdev->lock);
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
 
@@ -3124,6 +3160,8 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_up_complete(adapter);
 
 		iavf_irq_enable(adapter, true);
+
+		iavf_reconfig_qs_bw(adapter);
 	} else {
 		iavf_change_state(adapter, __IAVF_DOWN);
 		wake_up(&adapter->down_waitqueue);
@@ -3133,6 +3171,7 @@ static void iavf_reset_task(struct work_struct *work)
 
 	wake_up(&adapter->reset_waitqueue);
 	mutex_unlock(&adapter->crit_lock);
+	mutex_unlock(&netdev->lock);
 
 	return;
 reset_err:
@@ -3143,6 +3182,7 @@ static void iavf_reset_task(struct work_struct *work)
 	iavf_disable_vf(adapter);
 
 	mutex_unlock(&adapter->crit_lock);
+	mutex_unlock(&netdev->lock);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 }
 
@@ -3614,8 +3654,10 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
 		return 0;
 
+	mutex_lock(&netdev->lock);
 	netif_set_real_num_rx_queues(netdev, total_qps);
 	netif_set_real_num_tx_queues(netdev, total_qps);
+	mutex_unlock(&netdev->lock);
 
 	return ret;
 }
@@ -4893,6 +4935,73 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 	return iavf_fix_strip_features(adapter, features);
 }
 
+static int
+iavf_shaper_set(struct net_shaper_binding *binding,
+		const struct net_shaper *shaper,
+		struct netlink_ext_ack *extack)
+{
+	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
+	const struct net_shaper_handle *handle = &shaper->handle;
+	struct iavf_ring *tx_ring;
+
+	mutex_lock(&adapter->crit_lock);
+	if (handle->id >= adapter->num_active_queues)
+		goto unlock;
+
+	tx_ring = &adapter->tx_rings[handle->id];
+
+	tx_ring->q_shaper.bw_min = div_u64(shaper->bw_min, 1000);
+	tx_ring->q_shaper.bw_max = div_u64(shaper->bw_max, 1000);
+	tx_ring->q_shaper_update = true;
+
+	adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+
+unlock:
+	mutex_unlock(&adapter->crit_lock);
+	return 0;
+}
+
+static int iavf_shaper_del(struct net_shaper_binding *binding,
+			   const struct net_shaper_handle *handle,
+			   struct netlink_ext_ack *extack)
+{
+	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
+	struct iavf_ring *tx_ring;
+
+	mutex_lock(&adapter->crit_lock);
+	if (handle->id >= adapter->num_active_queues)
+		goto unlock;
+
+	tx_ring = &adapter->tx_rings[handle->id];
+	tx_ring->q_shaper.bw_min = 0;
+	tx_ring->q_shaper.bw_max = 0;
+	tx_ring->q_shaper_update = true;
+
+	adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+
+unlock:
+	mutex_unlock(&adapter->crit_lock);
+	return 0;
+}
+
+static void iavf_shaper_cap(struct net_shaper_binding *binding,
+			    enum net_shaper_scope scope,
+			    unsigned long *flags)
+{
+	if (scope != NET_SHAPER_SCOPE_QUEUE)
+		return;
+
+	*flags = BIT(NET_SHAPER_A_CAPS_SUPPORT_BW_MIN) |
+		 BIT(NET_SHAPER_A_CAPS_SUPPORT_BW_MAX) |
+		 BIT(NET_SHAPER_A_CAPS_SUPPORT_METRIC_BPS);
+}
+
+static const struct net_shaper_ops iavf_shaper_ops = {
+	.set = iavf_shaper_set,
+	.delete = iavf_shaper_del,
+	.capabilities = iavf_shaper_cap,
+};
+
 static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_open		= iavf_open,
 	.ndo_stop		= iavf_close,
@@ -4908,6 +5017,7 @@ static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_fix_features	= iavf_fix_features,
 	.ndo_set_features	= iavf_set_features,
 	.ndo_setup_tc		= iavf_setup_tc,
+	.net_shaper_ops		= &iavf_shaper_ops,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index d7b5587aeb8e..f97c702c0802 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -296,6 +296,8 @@ struct iavf_ring {
 					 */
 
 	u32 rx_buf_len;
+	struct net_shaper q_shaper;
+	bool q_shaper_update;
 } ____cacheline_internodealigned_in_smp;
 
 #define IAVF_ITR_ADAPTIVE_MIN_INC	0x0002
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 7e810b65380c..64ddd0e66c0d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1507,6 +1507,60 @@ iavf_set_adapter_link_speed_from_vpe(struct iavf_adapter *adapter,
 		adapter->link_speed = vpe->event_data.link_event.link_speed;
 }
 
+/**
+ * iavf_cfg_queues_bw - configure bandwidth of allocated queues
+ * @adapter: iavf adapter structure instance
+ *
+ * This function requests PF to configure queue bandwidth of allocated queues
+ */
+void iavf_cfg_queues_bw(struct iavf_adapter *adapter)
+{
+	struct virtchnl_queues_bw_cfg *qs_bw_cfg;
+	struct net_shaper *q_shaper;
+	int qs_to_update = 0;
+	int i, inx = 0;
+	size_t len;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev,
+			"Cannot set tc queue bw, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	for (i = 0; i < adapter->num_active_queues; i++) {
+		if (adapter->tx_rings[i].q_shaper_update)
+			qs_to_update++;
+	}
+	len = struct_size(qs_bw_cfg, cfg, qs_to_update);
+	qs_bw_cfg = kzalloc(len, GFP_KERNEL);
+	if (!qs_bw_cfg)
+		return;
+
+	qs_bw_cfg->vsi_id = adapter->vsi.id;
+	qs_bw_cfg->num_queues = qs_to_update;
+
+	for (i = 0; i < adapter->num_active_queues; i++) {
+		struct iavf_ring *tx_ring = &adapter->tx_rings[i];
+
+		q_shaper = &tx_ring->q_shaper;
+		if (tx_ring->q_shaper_update) {
+			qs_bw_cfg->cfg[inx].queue_id = i;
+			qs_bw_cfg->cfg[inx].shaper.peak = q_shaper->bw_max;
+			qs_bw_cfg->cfg[inx].shaper.committed = q_shaper->bw_min;
+			qs_bw_cfg->cfg[inx].tc = 0;
+			inx++;
+		}
+	}
+
+	adapter->current_op = VIRTCHNL_OP_CONFIG_QUEUE_BW;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_QUEUE_BW,
+			 (u8 *)qs_bw_cfg, len);
+	kfree(qs_bw_cfg);
+}
+
 /**
  * iavf_enable_channels
  * @adapter: adapter structure
@@ -2227,6 +2281,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 					VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC;
 
 			break;
+		case VIRTCHNL_OP_CONFIG_QUEUE_BW:
+			dev_warn(&adapter->pdev->dev, "Failed to Config Queue BW, error %s\n",
+				 iavf_stat_str(&adapter->hw, v_retval));
+			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
 				v_retval, iavf_stat_str(&adapter->hw, v_retval),
@@ -2569,6 +2627,13 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		if (!v_retval)
 			iavf_netdev_features_vlan_strip_set(netdev, false);
 		break;
+	case VIRTCHNL_OP_CONFIG_QUEUE_BW: {
+		int i;
+		/* shaper configuration is successful for all queues */
+		for (i = 0; i < adapter->num_active_queues; i++)
+			adapter->tx_rings[i].q_shaper_update = false;
+	}
+		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
 			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-- 
2.45.2

