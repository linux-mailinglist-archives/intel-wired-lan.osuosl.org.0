Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB42AB0589
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 23:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5517F83CB2;
	Thu,  8 May 2025 21:50:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KkIuE1TcPTNY; Thu,  8 May 2025 21:50:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DBA583CA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746741056;
	bh=AI/2VN3/ULPe9DHjUHbgBEgE8aXlM59EqxYhL2pZu58=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nqtht4opIubtCwPktTcz4X9SuR+FyK0K31IRwnF7M5uTNeEwv+bAS86iEvkCnNfpL
	 fQWKndsI3LBbHKKoDF80ftNF0QSMWZ5kpRFleuW8b0UM06oPOHm/eyWvk+t2CBeqm1
	 +A2T9vfRtpcyLRZOooptD9RaI2TDFoODWLIhJL6Y15JQZQ0rWiJNlT2XIcf5DmJKLP
	 Y0/Ve4FKS2wMzM44DTwho6TsMlVf4HPSGpJ7elGIQmvX3Nkr1BO/ZSx1qVyaOGu8YU
	 wgq/5Banlt6RweZ0ss1QTx/vYy1hcsKrafuZHy+FTU35L2fQ89oMtKVgwoKy6672ry
	 cr9ofNxe18fHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DBA583CA7;
	Thu,  8 May 2025 21:50:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 731E91A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 570FE422E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Poe_I2skjbF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 21:50:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7E29C422E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E29C422E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E29C422E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:51 +0000 (UTC)
X-CSE-ConnectionGUID: yDO97SOXTvmcjT5hlG52Rw==
X-CSE-MsgGUID: EIDHxbvTQPmEKwK0KTplEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47808326"
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="47808326"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 14:50:50 -0700
X-CSE-ConnectionGUID: hRVTFDciQ7aDdbxdR+/4CA==
X-CSE-MsgGUID: 00kwTuxQSpmiBnKyK1ctvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="141534283"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa005.jf.intel.com with ESMTP; 08 May 2025 14:50:49 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Thu,  8 May 2025 14:50:10 -0700
Message-ID: <20250508215013.32668-7-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746741052; x=1778277052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c/Km5NC6GLOUGS0W15YCoLMcOGvgHptDt+EaYT5mbHU=;
 b=JMBkl8rSGUf/hmlrBNsiOkygx7R5XOV/arxUfJHu+B7rb2/qw/asCrC2
 IQZvz7kR7cHPBf9cH/8HwCDhbuB1TwTzywiZ5wV84CHy4PjWZAUGCDwXl
 Ubwyf14UWibQDOK4WPiWZOksdKWqdRjvGczhEnNXiRPIs8m3mtkJidX0T
 H2IjKuo3w9hY5c5hXbvPnziD68fCLtn61a4Yt0DFbFVjcPGWcWxg0v/c2
 KtYmYGOyiqLpblgiWvkaOlO85c+i6aoZOnXW03LoPgCelXlsyphKLsHiG
 dzYbm5sRKDTmnIRy97m1MbFC+k5kt9KnbnsBQ+Bebm1BmZwgZgv06MqrY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JMBkl8rS
Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/9] idpf: add rss_data field
 to RSS function parameters
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

Retrieve rss_data field of vport just once and pass it to RSS related
functions instead of retrieving it in each function.

While at it, update s/rss/RSS in the RSS function doc comments.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 16 +++++----
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 34 +++++++------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 24 ++++++-------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  8 +++--
 7 files changed, 45 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 188bd8364080..e53a43d5c867 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -9,6 +9,7 @@ struct idpf_adapter;
 struct idpf_vport;
 struct idpf_vport_max_q;
 struct idpf_q_vec_rsrc;
+struct idpf_rss_data;
 
 #include <net/pkt_sched.h>
 #include <linux/aer.h>
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 607ec4462031..ba54c271b775 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -453,7 +453,7 @@ static int idpf_set_rxfh(struct net_device *netdev,
 			rss_data->rss_lut[lut] = rxfh->indir[lut];
 	}
 
-	err = idpf_config_rss(vport);
+	err = idpf_config_rss(vport, rss_data);
 
 unlock_mutex:
 	idpf_vport_ctrl_unlock(netdev);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 7d97990fd626..153174d3d51d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -934,8 +934,8 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	u16 idx = vport->idx;
 
 	vport_config = adapter->vport_config[vport->idx];
-	idpf_deinit_rss(vport);
 	rss_data = &vport_config->user_config.rss_data;
+	idpf_deinit_rss(rss_data);
 	kfree(rss_data->rss_key);
 	rss_data->rss_key = NULL;
 
@@ -1322,6 +1322,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
+	struct idpf_rss_data *rss_data;
 	int err;
 
 	if (np->state != __IDPF_VPORT_DOWN)
@@ -1406,10 +1407,11 @@ static int idpf_vport_open(struct idpf_vport *vport)
 
 	idpf_restore_features(vport);
 
-	if (vport_config->user_config.rss_data.rss_lut)
-		err = idpf_config_rss(vport);
+	rss_data = &vport_config->user_config.rss_data;
+	if (rss_data->rss_lut)
+		err = idpf_config_rss(vport, rss_data);
 	else
-		err = idpf_init_rss(vport);
+		err = idpf_init_rss(vport, rss_data);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize RSS for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1426,7 +1428,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	return 0;
 
 deinit_rss:
-	idpf_deinit_rss(vport);
+	idpf_deinit_rss(rss_data);
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
@@ -1903,7 +1905,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_vport_stop(vport);
 	}
 
-	idpf_deinit_rss(vport);
+	idpf_deinit_rss(&vport_config->user_config.rss_data);
 	/* We're passing in vport here because we need its wait_queue
 	 * to send a message and it should be getting all the vport
 	 * config data out of the adapter but we need to be careful not
@@ -2100,7 +2102,7 @@ static int idpf_vport_manage_rss_lut(struct idpf_vport *vport)
 		memset(rss_data->rss_lut, 0, lut_size);
 	}
 
-	return idpf_config_rss(vport);
+	return idpf_config_rss(vport, rss_data);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 56793be3953f..addaab100862 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4477,33 +4477,32 @@ void idpf_vport_intr_ena(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
 /**
  * idpf_config_rss - Send virtchnl messages to configure RSS
  * @vport: virtual port
+ * @rss_data: pointer to RSS key and lut info
  *
  * Return 0 on success, negative on failure
  */
-int idpf_config_rss(struct idpf_vport *vport)
+int idpf_config_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data)
 {
 	int err;
 
-	err = idpf_send_get_set_rss_key_msg(vport, false);
+	err = idpf_send_get_set_rss_key_msg(vport, rss_data, false);
 	if (err)
 		return err;
 
-	return idpf_send_get_set_rss_lut_msg(vport, false);
+	return idpf_send_get_set_rss_lut_msg(vport, rss_data, false);
 }
 
 /**
  * idpf_fill_dflt_rss_lut - Fill the indirection table with the default values
  * @vport: virtual port structure
+ * @rss_data: pointer to RSS key and lut info
  */
-static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
+static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport,
+				   struct idpf_rss_data *rss_data)
 {
 	u16 num_active_rxq = vport->dflt_qv_rsrc.num_rxq;
-	struct idpf_adapter *adapter = vport->adapter;
-	struct idpf_rss_data *rss_data;
 	int i;
 
-	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
-
 	for (i = 0; i < rss_data->rss_lut_size; i++) {
 		rss_data->rss_lut[i] = i % num_active_rxq;
 		rss_data->cached_lut[i] = rss_data->rss_lut[i];
@@ -4513,17 +4512,14 @@ static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
 /**
  * idpf_init_rss - Allocate and initialize RSS resources
  * @vport: virtual port
+ * @rss_data: pointer to RSS key and lut info
  *
  * Return 0 on success, negative on failure
  */
-int idpf_init_rss(struct idpf_vport *vport)
+int idpf_init_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data)
 {
-	struct idpf_adapter *adapter = vport->adapter;
-	struct idpf_rss_data *rss_data;
 	u32 lut_size;
 
-	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
-
 	lut_size = rss_data->rss_lut_size * sizeof(u32);
 	rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
 	if (!rss_data->rss_lut)
@@ -4538,21 +4534,17 @@ int idpf_init_rss(struct idpf_vport *vport)
 	}
 
 	/* Fill the default RSS lut values */
-	idpf_fill_dflt_rss_lut(vport);
+	idpf_fill_dflt_rss_lut(vport, rss_data);
 
-	return idpf_config_rss(vport);
+	return idpf_config_rss(vport, rss_data);
 }
 
 /**
  * idpf_deinit_rss - Release RSS resources
- * @vport: virtual port
+ * @rss_data: pointer to RSS key and lut info
  */
-void idpf_deinit_rss(struct idpf_vport *vport)
+void idpf_deinit_rss(struct idpf_rss_data *rss_data)
 {
-	struct idpf_adapter *adapter = vport->adapter;
-	struct idpf_rss_data *rss_data;
-
-	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
 	kfree(rss_data->cached_lut);
 	rss_data->cached_lut = NULL;
 	kfree(rss_data->rss_lut);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 203710222771..e52c5033b25b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1034,9 +1034,9 @@ int idpf_vport_intr_init(struct idpf_vport *vport,
 			 struct idpf_q_vec_rsrc *rsrc);
 void idpf_vport_intr_ena(struct idpf_vport *vport,
 			 struct idpf_q_vec_rsrc *rsrc);
-int idpf_config_rss(struct idpf_vport *vport);
-int idpf_init_rss(struct idpf_vport *vport);
-void idpf_deinit_rss(struct idpf_vport *vport);
+int idpf_config_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data);
+int idpf_init_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data);
+void idpf_deinit_rss(struct idpf_rss_data *rss_data);
 int idpf_rx_bufs_init_all(struct idpf_q_vec_rsrc *rsrc);
 void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index f46471da833b..107b6fd6ea35 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2272,24 +2272,24 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 }
 
 /**
- * idpf_send_get_set_rss_lut_msg - Send virtchnl get or set rss lut message
+ * idpf_send_get_set_rss_lut_msg - Send virtchnl get or set RSS lut message
  * @vport: virtual port data structure
- * @get: flag to set or get rss look up table
+ * @rss_data: pointer to RSS key and lut info
+ * @get: flag to set or get RSS look up table
  *
  * Returns 0 on success, negative on failure.
  */
-int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
+int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
+				  struct idpf_rss_data *rss_data,
+				  bool get)
 {
 	struct virtchnl2_rss_lut *recv_rl __free(kfree) = NULL;
 	struct virtchnl2_rss_lut *rl __free(kfree) = NULL;
 	struct idpf_vc_xn_params xn_params = {};
-	struct idpf_rss_data *rss_data;
 	int buf_size, lut_buf_size;
 	ssize_t reply_sz;
 	int i;
 
-	rss_data =
-		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
 	buf_size = struct_size(rl, lut, rss_data->rss_lut_size);
 	rl = kzalloc(buf_size, GFP_KERNEL);
 	if (!rl)
@@ -2347,24 +2347,24 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 }
 
 /**
- * idpf_send_get_set_rss_key_msg - Send virtchnl get or set rss key message
+ * idpf_send_get_set_rss_key_msg - Send virtchnl get or set RSS key message
  * @vport: virtual port data structure
- * @get: flag to set or get rss look up table
+ * @rss_data: pointer to RSS key and lut info
+ * @get: flag to set or get RSS look up table
  *
  * Returns 0 on success, negative on failure
  */
-int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
+int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
+				  struct idpf_rss_data *rss_data,
+				  bool get)
 {
 	struct virtchnl2_rss_key *recv_rk __free(kfree) = NULL;
 	struct virtchnl2_rss_key *rk __free(kfree) = NULL;
 	struct idpf_vc_xn_params xn_params = {};
-	struct idpf_rss_data *rss_data;
 	ssize_t reply_sz;
 	int i, buf_size;
 	u16 key_size;
 
-	rss_data =
-		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
 	buf_size = struct_size(rk, key_flex, rss_data->rss_key_size);
 	rk = kzalloc(buf_size, GFP_KERNEL);
 	if (!rk)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index ef64ca98b1e1..cfeefbc5174f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -167,7 +167,11 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
 int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport);
 int idpf_send_get_stats_msg(struct idpf_vport *vport);
 int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
-int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
-int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
+int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
+				  struct idpf_rss_data *rss_data,
+				  bool get);
+int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
+				  struct idpf_rss_data *rss_data,
+				  bool get);
 
 #endif /* _IDPF_VIRTCHNL_H_ */
-- 
2.43.0

