Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5770EBD6B44
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 01:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7D4E80D52;
	Mon, 13 Oct 2025 23:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2lgE-TBbbpX; Mon, 13 Oct 2025 23:10:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB16B80D78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760397008;
	bh=1GEmizpV5UgUIyHMXYZx5Qzm1aZ3nRbwOUwWwKRKnjM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TFrxxN+JMk+ZAhShi4Rz7JxCyr/boSIz7xRL4UWmjVnQasf35QT5I6P/SxcfyuB0E
	 WUhyxEPDUfaj6AFTeAcw4SaJHHY8TPYUSVOFWgEJYQkc0+LohR6enfI4n0A6lCfjJ6
	 43G8vWvrfQLop08W/8IF9mywpt3oIOFOKazEgX/gi2XzDTPOU6PLhtTkprbtOE7WVo
	 AHQlLT8WziqDaRiJloIxU6dDg7A2P+aPX8xVe1lpgjvZnxKUSZ1d1hrMUaMedby8kg
	 /Z8CpykY6QFbhBQ5UjIOHg2nODlfH78LGtZFA/aROGOq/9cZmT1/LwzRdJ8l6NYaKi
	 twEe9gLWN7mYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB16B80D78;
	Mon, 13 Oct 2025 23:10:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D300BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 044C340DA8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xlDOPJJEkdvQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 23:10:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E73104033B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E73104033B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E73104033B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:05 +0000 (UTC)
X-CSE-ConnectionGUID: RjqL6fF/TgCABS3dvForZg==
X-CSE-MsgGUID: mvqh28LbTLuywW7bEu/4Gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="79989121"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="79989121"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 16:02:59 -0700
X-CSE-ConnectionGUID: zMo8XR5gQ2qK6v/AJc4EKA==
X-CSE-MsgGUID: b6VH3DXkTSu5dLoD783H1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181404271"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa007.fm.intel.com with ESMTP; 13 Oct 2025 16:02:58 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon, 13 Oct 2025 16:13:37 -0700
Message-Id: <20251013231341.1139603-6-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251013231341.1139603-1-joshua.a.hay@intel.com>
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760397006; x=1791933006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9KdqDf7MAyIWy/tvXlRnSZeT7D6NyQDUfbsyER2Jnh0=;
 b=OpjlKB5oHfKY8H3g3qV5VhGRYwbgaJlI9qNjSFY3mELvo9F/dzFcvWf7
 2yXC8zLGoNwl8kkfOy9WVnelpS+08oefWsYhzh+OJmsECixWXTT+7RGCI
 IEWSs7iuY7602FW87ZSmLlrmkr0JdmyP8LoCeSZ3xvOkYORJsBDbygi2R
 /OiYhaUTRNcvDpeeqMJrXlbZnXOTe1dcCBTWvu8HhHi4SLLPlSXnchRv5
 N9rtrxABbBL0iI8+Ladr7L43ZqQ/FmGt/SISHEjvcoiKn8c/pcITJjyxa
 bhPdEB0BZ9wkCn9s1Y9ivQJfh1f9X2ZJFIa8G+XtH+5k0kiOPyDySTrX5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OpjlKB5o
Subject: [Intel-wired-lan] [PATCH iwl-next v8 5/9] idpf: add rss_data field
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

Retrieve rss_data field of vport just once and pass it to RSS related
functions instead of retrieving it in each function.

While at it, update s/rss/RSS in the RSS function doc comments.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
---
v8: rebase on AF_XDP series
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
index 4e6ab58b70e7..a86791b0ca2c 100644
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
index 6c6eaf7a7851..040088bc3c2c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -481,7 +481,7 @@ static int idpf_set_rxfh(struct net_device *netdev,
 			rss_data->rss_lut[lut] = rxfh->indir[lut];
 	}
 
-	err = idpf_config_rss(vport);
+	err = idpf_config_rss(vport, rss_data);
 
 unlock_mutex:
 	idpf_vport_ctrl_unlock(netdev);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 6d64db81e1e6..be531593957a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1018,8 +1018,8 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	u16 idx = vport->idx;
 
 	vport_config = adapter->vport_config[vport->idx];
-	idpf_deinit_rss(vport);
 	rss_data = &vport_config->user_config.rss_data;
+	idpf_deinit_rss(rss_data);
 	kfree(rss_data->rss_key);
 	rss_data->rss_key = NULL;
 
@@ -1425,6 +1425,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
+	struct idpf_rss_data *rss_data;
 	int err;
 
 	if (test_bit(IDPF_VPORT_UP, np->state))
@@ -1521,10 +1522,11 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 
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
@@ -1544,7 +1546,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	return 0;
 
 deinit_rss:
-	idpf_deinit_rss(vport);
+	idpf_deinit_rss(rss_data);
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
@@ -2043,7 +2045,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_vport_stop(vport, false);
 	}
 
-	idpf_deinit_rss(vport);
+	idpf_deinit_rss(&vport_config->user_config.rss_data);
 	/* We're passing in vport here because we need its wait_queue
 	 * to send a message and it should be getting all the vport
 	 * config data out of the adapter but we need to be careful not
@@ -2242,7 +2244,7 @@ static int idpf_vport_manage_rss_lut(struct idpf_vport *vport)
 		memset(rss_data->rss_lut, 0, lut_size);
 	}
 
-	return idpf_config_rss(vport);
+	return idpf_config_rss(vport, rss_data);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 313b71a18f75..ce21c47cbe9d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4649,33 +4649,32 @@ void idpf_vport_intr_ena(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
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
@@ -4685,17 +4684,14 @@ static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
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
@@ -4710,21 +4706,17 @@ int idpf_init_rss(struct idpf_vport *vport)
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
index b40d4e8e4d95..3bf6cff60394 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1097,9 +1097,9 @@ int idpf_vport_intr_init(struct idpf_vport *vport,
 			 struct idpf_q_vec_rsrc *rsrc);
 void idpf_vport_intr_ena(struct idpf_vport *vport,
 			 struct idpf_q_vec_rsrc *rsrc);
-int idpf_config_rss(struct idpf_vport *vport);
-int idpf_init_rss(struct idpf_vport *vport);
-void idpf_deinit_rss(struct idpf_vport *vport);
+int idpf_config_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data);
+int idpf_init_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data);
+void idpf_deinit_rss(struct idpf_rss_data *rss_data);
 int idpf_rx_bufs_init_all(struct idpf_vport *vport,
 			  struct idpf_q_vec_rsrc *rsrc);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index e5e68ac436ea..7971bbfbc07c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2821,24 +2821,24 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
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
@@ -2896,24 +2896,24 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
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
index 26fd16d49b5f..a07f80ac8a2c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -192,8 +192,12 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
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
 void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);
 int idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
 			       u8 *send_msg, u16 msg_size,
-- 
2.39.2

