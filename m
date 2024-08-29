Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CEB9649C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:18:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6492E41A03;
	Thu, 29 Aug 2024 15:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id unqZ6nXrNbML; Thu, 29 Aug 2024 15:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77064419DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724944716;
	bh=my39x+4RRiLhishRbHouAS5fv7h+SBLAAoJKGN8JPEw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Akn6clLNvIMCp51fcDxioA/jgABdyGUjRZIQtrkmeuObnSkJMQLpoVKfOCzzoPkoN
	 3eLGtcAvD18rO/TyEsok1lJCNWXu5iYeDqZ3pONdSaxWPTG/qzhumOe0XFFA89TO/5
	 YDH5tjdziIPHMLhVJWeE4wj7jDvauQXxdebgGk2V/R2Xm+dlPGoRte6klp1AZIhc3V
	 TKuiGYHHpaiVRQ/miM7Y6KefvRdIdop6RrA1DnzMFSOMe8Sf4rSyPBWmnWTkNPaM8B
	 FmesZvSaoVBT4ddTZJYs9kpPDHwAZ6M3IQF5pKMRAho/DYLSV7DyXdtpHCKgEnZqrm
	 pM4ou2Pe2MvSQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77064419DD;
	Thu, 29 Aug 2024 15:18:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2611A1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1375D606E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PqDiYU-_Isgt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 15:18:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C42576061F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C42576061F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C42576061F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:32 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-119-5v585dO2Mqmfera6WAjmlw-1; Thu,
 29 Aug 2024 11:18:28 -0400
X-MC-Unique: 5v585dO2Mqmfera6WAjmlw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5E5B61955BF6; Thu, 29 Aug 2024 15:18:26 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.217])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5E58C300019C; Thu, 29 Aug 2024 15:18:21 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 29 Aug 2024 17:17:04 +0200
Message-ID: <8b95089a48ebe8ae26a8904b62a39639688e3ce2.1724944117.git.pabeni@redhat.com>
In-Reply-To: <cover.1724944116.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724944711;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=my39x+4RRiLhishRbHouAS5fv7h+SBLAAoJKGN8JPEw=;
 b=Et31RHNtBQVCkofFuzNiaydzhCt350Ph1p+78ameGZo5wsTeB8VvSjOkanhwIbu3eSX+5l
 UeDXxzDYcdt878HQMVXx9PheS34mAFpEnvTkyvZlFtfCMuDWVKcuDF7Q2SSBHRyr+ugiAQ
 L5uQvthVJ5dgnhfpvewudilBn7gnLAY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Et31RHNt
Subject: [Intel-wired-lan] [PATCH v5 net-next 11/12] iavf: Add
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
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
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

Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
v4 -> v5:
 - fix kdoc
---
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 141 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  65 ++++++++
 5 files changed, 212 insertions(+)

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
index f782402cd789..5046a1808687 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2085,6 +2085,11 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
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
@@ -2918,6 +2923,30 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
 }
 
+/**
+ * iavf_reconfig_qs_bw - Call-back task to handle hardware reset
+ * @adapter: board private structure
+ *
+ * After a reset, the shaper parameters of queues need to be replayed again.
+ * Since the net_shaper_info object inside TX rings persists across reset,
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
@@ -3124,6 +3153,8 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_up_complete(adapter);
 
 		iavf_irq_enable(adapter, true);
+
+		iavf_reconfig_qs_bw(adapter);
 	} else {
 		iavf_change_state(adapter, __IAVF_DOWN);
 		wake_up(&adapter->down_waitqueue);
@@ -4893,6 +4924,115 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 	return iavf_fix_strip_features(adapter, features);
 }
 
+static int iavf_verify_handle(struct net_shaper_binding *binding,
+			      const struct net_shaper_handle *handle,
+			      struct netlink_ext_ack *extack)
+{
+	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
+	enum net_shaper_scope scope = handle->scope;
+	int qid = handle->id;
+
+	if (scope != NET_SHAPER_SCOPE_QUEUE) {
+		NL_SET_ERR_MSG_FMT(extack, "Invalid shaper handle, unsupported scope %d",
+				   scope);
+		return -EOPNOTSUPP;
+	}
+
+	if (qid >= adapter->num_active_queues) {
+		NL_SET_ERR_MSG_FMT(extack, "Invalid shaper handle, queued id %d max %d",
+				   qid, adapter->num_active_queues);
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static int
+iavf_shaper_set(struct net_shaper_binding *binding,
+		const struct net_shaper_handle *handle,
+		const struct net_shaper_info *shaper,
+		struct netlink_ext_ack *extack)
+{
+	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
+	bool need_cfg_update = false;
+	int ret = 0;
+
+	ret = iavf_verify_handle(binding, handle, extack);
+	if (ret)
+		return ret;
+
+	if (handle->scope == NET_SHAPER_SCOPE_QUEUE) {
+		struct iavf_ring *tx_ring = &adapter->tx_rings[handle->id];
+
+		tx_ring->q_shaper.bw_min = div_u64(shaper->bw_min, 1000);
+		tx_ring->q_shaper.bw_max = div_u64(shaper->bw_max, 1000);
+		tx_ring->q_shaper_update = true;
+		need_cfg_update = true;
+	}
+
+	if (need_cfg_update)
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+
+	return 0;
+}
+
+static int iavf_shaper_del(struct net_shaper_binding *binding,
+			   const struct net_shaper_handle *handle,
+			   struct netlink_ext_ack *extack)
+{
+	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
+	bool need_cfg_update = false;
+	int ret;
+
+	ret = iavf_verify_handle(binding, handle, extack);
+	if (ret < 0)
+		return ret;
+
+	if (handle->scope == NET_SHAPER_SCOPE_QUEUE) {
+		struct iavf_ring *tx_ring = &adapter->tx_rings[handle->id];
+
+		tx_ring->q_shaper.bw_min = 0;
+		tx_ring->q_shaper.bw_max = 0;
+		tx_ring->q_shaper_update = true;
+		need_cfg_update = true;
+	}
+
+	if (need_cfg_update)
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+
+	return 0;
+}
+
+static int iavf_shaper_group(struct net_shaper_binding *binding,
+			     int leaves_count,
+			     const struct net_shaper_handle *leaves_handles,
+			     const struct net_shaper_info *leaves,
+			     const struct net_shaper_handle *root_handle,
+			     const struct net_shaper_info *root,
+			     struct netlink_ext_ack *extack)
+{
+	return -EOPNOTSUPP;
+}
+
+static int iavf_shaper_cap(struct net_shaper_binding *binding,
+			   enum net_shaper_scope scope,
+			   unsigned long *flags)
+{
+	if (scope != NET_SHAPER_SCOPE_QUEUE)
+		return -EOPNOTSUPP;
+
+	*flags = BIT(NET_SHAPER_A_CAPABILITIES_SUPPORT_BW_MIN) |
+		 BIT(NET_SHAPER_A_CAPABILITIES_SUPPORT_BW_MAX) |
+		 BIT(NET_SHAPER_A_CAPABILITIES_SUPPORT_METRIC_BPS);
+	return 0;
+}
+
+static const struct net_shaper_ops iavf_shaper_ops = {
+	.set = iavf_shaper_set,
+	.delete = iavf_shaper_del,
+	.group = iavf_shaper_group,
+	.capabilities = iavf_shaper_cap,
+};
+
 static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_open		= iavf_open,
 	.ndo_stop		= iavf_close,
@@ -4908,6 +5048,7 @@ static const struct net_device_ops iavf_netdev_ops = {
 	.ndo_fix_features	= iavf_fix_features,
 	.ndo_set_features	= iavf_set_features,
 	.ndo_setup_tc		= iavf_setup_tc,
+	.net_shaper_ops		= &iavf_shaper_ops,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index d7b5587aeb8e..dd503ee50b7f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -296,6 +296,8 @@ struct iavf_ring {
 					 */
 
 	u32 rx_buf_len;
+	struct net_shaper_info q_shaper;
+	bool q_shaper_update;
 } ____cacheline_internodealigned_in_smp;
 
 #define IAVF_ITR_ADAPTIVE_MIN_INC	0x0002
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 7e810b65380c..f719a6724774 100644
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
+	struct net_shaper_info *q_shaper;
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

