Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B66176E85C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 01:18:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB4F2402D1;
	Wed, 19 Apr 2023 23:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB4F2402D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681946300;
	bh=wXv1Xgh1QY/PfN0r2XJABjKjdoQPQbXMZkQObz+lUtE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L6dwtRzffTI7ddiHmEK9JzoQFgz3p50IgjmS45mVMBAze5ka6IVydYaSuI+OSkRbM
	 Sr9w8T88J591RKyJcaun94CZ0lPnmJF+rMdaoarCIHWd/FXTotQpuH79ATZt3JcPI+
	 Hh141wAAyjHcUs+1x4ityhBAZfqYfIQ/5sRiHvkzjLelZRWG+hMEqHDdxzHqX61R1G
	 6iFdL5+JBwp8ip3mHMIaFILGMvivI+OhAAYScKSkWTt/Uj2DOXYQSE65gSQd5b0XSk
	 Q7gfdfvolXfSEiYNpimBUKXmyDZgo0djW9Qu4wAiR5bvfOtyDvzVkaRgR5q4GcVrO6
	 S7ViUY3p9VPzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrcO8kFfo4Ey; Wed, 19 Apr 2023 23:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ED3D40304;
	Wed, 19 Apr 2023 23:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8ED3D40304
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EABF11C416E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 23:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C60484035D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 23:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C60484035D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkGOlCWINI31 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 23:18:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 986724018F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 986724018F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 23:18:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="343064949"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="343064949"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 16:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="756268252"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="756268252"
Received: from mmocanu-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.79])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 16:17:57 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 19 Apr 2023 17:17:51 -0600
Message-Id: <20230419231751.11581-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681946289; x=1713482289;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tXVHhr66HfDqLo5aAdsh5rDlKvebtcHaCPFAJEUVmEE=;
 b=eDBLXwfEwMx73L7EVOaB3tWxKCqugQotFV15++Wz18r0AGBAUDuyl/pO
 TQtqGyV1CA5MTPQY5/lAqwuwjR3NIv27hqOZuC/tUYAVKD1zlvVTkUAQO
 ZdAZKhFlFoEmNkDSPJgezhUCy+U1xRSbAd3f2TzxUWTMvHXEMF/Zf9s0M
 c/tdWyeHeA4HZODw0kDqgNJyh2AYA3BYPYGw8cBfQl7GmaSYyexzwpyRd
 5r8+Rsxhi34q7XuxsohO6/Et0GiFECZulhaJ7c6pwlKACgbPGl7aQzYOk
 PP0bRPi3hWYYU8AJW9HvIW3Nh1fyhzCLeVZWWhOXHXglgJfoxOD7qHhIO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eDBLXwfE
Subject: [Intel-wired-lan] [PATCH net-next] iavf: remove double underscores
 from states names
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

No need to prepend some states names with "__", especially that others do
not have these underscores.

Link: https://lore.kernel.org/netdev/20230406130415.1aa1d1cd@kernel.org
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 110 +++++-----
 drivers/net/ethernet/intel/iavf/iavf_client.c |  18 +-
 drivers/net/ethernet/intel/iavf/iavf_client.h |   8 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 194 +++++++++---------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  10 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  34 +--
 7 files changed, 191 insertions(+), 191 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9abaff1f2aff..f26e54cf66ae 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -49,9 +49,9 @@ int virtchnl_status_to_errno(enum virtchnl_status_code v_status);
 
 /* VSI state flags shared with common code */
 enum iavf_vsi_state_t {
-	__IAVF_VSI_DOWN,
+	IAVF_VSI_DOWN,
 	/* This must be last as it determines the size of the BITMAP */
-	__IAVF_VSI_STATE_SIZE__,
+	IAVF_VSI_STATE_SIZE__,
 };
 
 /* dummy struct to make common code less painful */
@@ -60,7 +60,7 @@ struct iavf_vsi {
 	struct net_device *netdev;
 	u16 seid;
 	u16 id;
-	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
+	DECLARE_BITMAP(state, IAVF_VSI_STATE_SIZE__);
 	int base_vector;
 	u16 qs_handle;
 	void *priv;     /* client driver data reference. */
@@ -174,8 +174,8 @@ struct iavf_vlan_filter {
 #define IAVF_MAX_TRAFFIC_CLASS	4
 /* State of traffic class creation */
 enum iavf_tc_state_t {
-	__IAVF_TC_INVALID, /* no traffic class, default state */
-	__IAVF_TC_RUNNING, /* traffic classes have been created */
+	IAVF_TC_INVALID, /* no traffic class, default state */
+	IAVF_TC_RUNNING, /* traffic classes have been created */
 };
 
 /* channel info */
@@ -187,33 +187,33 @@ struct iavf_channel_config {
 
 /* State of cloud filter */
 enum iavf_cloud_filter_state_t {
-	__IAVF_CF_INVALID,	 /* cloud filter not added */
-	__IAVF_CF_ADD_PENDING, /* cloud filter pending add by the PF */
-	__IAVF_CF_DEL_PENDING, /* cloud filter pending del by the PF */
-	__IAVF_CF_ACTIVE,	 /* cloud filter is active */
+	IAVF_CF_INVALID,	/* cloud filter not added */
+	IAVF_CF_ADD_PENDING,	/* cloud filter pending add by the PF */
+	IAVF_CF_DEL_PENDING,	/* cloud filter pending del by the PF */
+	IAVF_CF_ACTIVE,		/* cloud filter is active */
 };
 
 /* Driver state. The order of these is important! */
 enum iavf_state_t {
-	__IAVF_STARTUP,		/* driver loaded, probe complete */
-	__IAVF_REMOVE,		/* driver is being unloaded */
-	__IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply */
-	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
-	__IAVF_INIT_EXTENDED_CAPS,	/* process extended caps which require aq msg exchange */
-	__IAVF_INIT_CONFIG_ADAPTER,
-	__IAVF_INIT_SW,		/* got resources, setting up structs */
-	__IAVF_INIT_FAILED,	/* init failed, restarting procedure */
-	__IAVF_RESETTING,		/* in reset */
-	__IAVF_COMM_FAILED,		/* communication with PF failed */
+	IAVF_STARTUP,		/* driver loaded, probe complete */
+	IAVF_REMOVE,		/* driver is being unloaded */
+	IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply */
+	IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
+	IAVF_INIT_EXTENDED_CAPS,	/* process extended caps which require aq msg exchange */
+	IAVF_INIT_CONFIG_ADAPTER,
+	IAVF_INIT_SW,		/* got resources, setting up structs */
+	IAVF_INIT_FAILED,	/* init failed, restarting procedure */
+	IAVF_RESETTING,		/* in reset */
+	IAVF_COMM_FAILED,	/* communication with PF failed */
 	/* Below here, watchdog is running */
-	__IAVF_DOWN,			/* ready, can be opened */
-	__IAVF_DOWN_PENDING,		/* descending, waiting for watchdog */
-	__IAVF_TESTING,		/* in ethtool self-test */
-	__IAVF_RUNNING,		/* opened, working */
+	IAVF_DOWN,		/* ready, can be opened */
+	IAVF_DOWN_PENDING,	/* descending, waiting for watchdog */
+	IAVF_TESTING,		/* in ethtool self-test */
+	IAVF_RUNNING,		/* opened, working */
 };
 
 enum iavf_critical_section_t {
-	__IAVF_IN_REMOVE_TASK,	/* device being removed */
+	IAVF_IN_REMOVE_TASK,	/* device being removed */
 };
 
 #define IAVF_CLOUD_FIELD_OMAC		0x01
@@ -349,10 +349,10 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
 
 	/* flags for processing extended capability messages during
-	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
+	 * IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
 	 * both a SEND and a RECV step, which must be processed in sequence.
 	 *
-	 * During the __IAVF_INIT_EXTENDED_CAPS state, the driver will
+	 * During the IAVF_INIT_EXTENDED_CAPS state, the driver will
 	 * process one flag at a time during each state loop.
 	 */
 	u64 extended_caps;
@@ -468,36 +468,36 @@ extern char iavf_driver_name[];
 static inline const char *iavf_state_str(enum iavf_state_t state)
 {
 	switch (state) {
-	case __IAVF_STARTUP:
-		return "__IAVF_STARTUP";
-	case __IAVF_REMOVE:
-		return "__IAVF_REMOVE";
-	case __IAVF_INIT_VERSION_CHECK:
-		return "__IAVF_INIT_VERSION_CHECK";
-	case __IAVF_INIT_GET_RESOURCES:
-		return "__IAVF_INIT_GET_RESOURCES";
-	case __IAVF_INIT_EXTENDED_CAPS:
-		return "__IAVF_INIT_EXTENDED_CAPS";
-	case __IAVF_INIT_CONFIG_ADAPTER:
-		return "__IAVF_INIT_CONFIG_ADAPTER";
-	case __IAVF_INIT_SW:
-		return "__IAVF_INIT_SW";
-	case __IAVF_INIT_FAILED:
-		return "__IAVF_INIT_FAILED";
-	case __IAVF_RESETTING:
-		return "__IAVF_RESETTING";
-	case __IAVF_COMM_FAILED:
-		return "__IAVF_COMM_FAILED";
-	case __IAVF_DOWN:
-		return "__IAVF_DOWN";
-	case __IAVF_DOWN_PENDING:
-		return "__IAVF_DOWN_PENDING";
-	case __IAVF_TESTING:
-		return "__IAVF_TESTING";
-	case __IAVF_RUNNING:
-		return "__IAVF_RUNNING";
+	case IAVF_STARTUP:
+		return "IAVF_STARTUP";
+	case IAVF_REMOVE:
+		return "IAVF_REMOVE";
+	case IAVF_INIT_VERSION_CHECK:
+		return "IAVF_INIT_VERSION_CHECK";
+	case IAVF_INIT_GET_RESOURCES:
+		return "IAVF_INIT_GET_RESOURCES";
+	case IAVF_INIT_EXTENDED_CAPS:
+		return "IAVF_INIT_EXTENDED_CAPS";
+	case IAVF_INIT_CONFIG_ADAPTER:
+		return "IAVF_INIT_CONFIG_ADAPTER";
+	case IAVF_INIT_SW:
+		return "IAVF_INIT_SW";
+	case IAVF_INIT_FAILED:
+		return "IAVF_INIT_FAILED";
+	case IAVF_RESETTING:
+		return "IAVF_RESETTING";
+	case IAVF_COMM_FAILED:
+		return "IAVF_COMM_FAILED";
+	case IAVF_DOWN:
+		return "IAVF_DOWN";
+	case IAVF_DOWN_PENDING:
+		return "IAVF_DOWN_PENDING";
+	case IAVF_TESTING:
+		return "IAVF_TESTING";
+	case IAVF_RUNNING:
+		return "IAVF_RUNNING";
 	default:
-		return "__IAVF_UNKNOWN_STATE";
+		return "IAVF_UNKNOWN_STATE";
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.c b/drivers/net/ethernet/intel/iavf/iavf_client.c
index 93c903c02c64..727cfce0f587 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_client.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_client.c
@@ -119,10 +119,10 @@ void iavf_notify_client_open(struct iavf_vsi *vsi)
 			"Cannot locate client instance open function\n");
 		return;
 	}
-	if (!(test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state))) {
+	if (!(test_bit(IAVF_CLIENT_INSTANCE_OPENED, &cinst->state))) {
 		ret = cinst->client->ops->open(&cinst->lan_info, cinst->client);
 		if (!ret)
-			set_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
+			set_bit(IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
 	}
 }
 
@@ -172,7 +172,7 @@ void iavf_notify_client_close(struct iavf_vsi *vsi, bool reset)
 	}
 	cinst->client->ops->close(&cinst->lan_info, cinst->client, reset);
 	iavf_client_release_qvlist(&cinst->lan_info);
-	clear_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
+	clear_bit(IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
 }
 
 /**
@@ -213,7 +213,7 @@ iavf_client_add_instance(struct iavf_adapter *adapter)
 	cinst->lan_info.version.build = IAVF_CLIENT_VERSION_BUILD;
 	iavf_client_get_params(vsi, &params);
 	cinst->lan_info.params = params;
-	set_bit(__IAVF_CLIENT_INSTANCE_NONE, &cinst->state);
+	set_bit(IAVF_CLIENT_INSTANCE_NONE, &cinst->state);
 
 	cinst->lan_info.msix_count = adapter->num_rdma_msix;
 	cinst->lan_info.msix_entries =
@@ -254,7 +254,7 @@ void iavf_client_subtask(struct iavf_adapter *adapter)
 	struct iavf_client_instance *cinst;
 	int ret = 0;
 
-	if (adapter->state < __IAVF_DOWN)
+	if (adapter->state < IAVF_DOWN)
 		return;
 
 	/* first check client is registered */
@@ -269,13 +269,13 @@ void iavf_client_subtask(struct iavf_adapter *adapter)
 	dev_info(&adapter->pdev->dev, "Added instance of Client %s\n",
 		 client->name);
 
-	if (!test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
+	if (!test_bit(IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
 		/* Send an Open request to the client */
 
 		if (client->ops && client->ops->open)
 			ret = client->ops->open(&cinst->lan_info, client);
 		if (!ret)
-			set_bit(__IAVF_CLIENT_INSTANCE_OPENED,
+			set_bit(IAVF_CLIENT_INSTANCE_OPENED,
 				&cinst->state);
 		else
 			/* remove client instance */
@@ -369,12 +369,12 @@ static void iavf_client_release(struct iavf_client *client)
 		cinst = adapter->cinst;
 		if (!cinst)
 			continue;
-		if (test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
+		if (test_bit(IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
 			if (client->ops && client->ops->close)
 				client->ops->close(&cinst->lan_info, client,
 						   false);
 			iavf_client_release_qvlist(&cinst->lan_info);
-			clear_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
+			clear_bit(IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
 
 			dev_warn(&adapter->pdev->dev,
 				 "Client %s instance closed\n", client->name);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.h b/drivers/net/ethernet/intel/iavf/iavf_client.h
index c5d51d7dc7cc..9cd8d54f6cb1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_client.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_client.h
@@ -25,13 +25,13 @@ struct iavf_client_version {
 };
 
 enum iavf_client_state {
-	__IAVF_CLIENT_NULL,
-	__IAVF_CLIENT_REGISTERED
+	IAVF_CLIENT_NULL,
+	IAVF_CLIENT_REGISTERED
 };
 
 enum iavf_client_instance_state {
-	__IAVF_CLIENT_INSTANCE_NONE,
-	__IAVF_CLIENT_INSTANCE_OPENED,
+	IAVF_CLIENT_INSTANCE_NONE,
+	IAVF_CLIENT_INSTANCE_OPENED,
 };
 
 struct iavf_ops;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2de4baff4c20..bb5da06ace35 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -408,7 +408,7 @@ static irqreturn_t iavf_msix_aq(int irq, void *data)
 	rd32(hw, IAVF_VFINT_ICR01);
 	rd32(hw, IAVF_VFINT_ICR0_ENA1);
 
-	if (adapter->state != __IAVF_REMOVE)
+	if (adapter->state != IAVF_REMOVE)
 		/* schedule work on the private workqueue */
 		queue_work(adapter->wq, &adapter->adminq_task);
 
@@ -1251,12 +1251,12 @@ static void iavf_configure(struct iavf_adapter *adapter)
  * iavf_up_complete - Finish the last steps of bringing up a connection
  * @adapter: board private structure
  *
- * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
+ * Expects to be called while holding the IAVF_IN_CRITICAL_TASK bit lock.
  **/
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
-	iavf_change_state(adapter, __IAVF_RUNNING);
-	clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+	iavf_change_state(adapter, IAVF_RUNNING);
+	clear_bit(IAVF_VSI_DOWN, adapter->vsi.state);
 
 	iavf_napi_enable_all(adapter);
 
@@ -1375,13 +1375,13 @@ static void iavf_clear_adv_rss_conf(struct iavf_adapter *adapter)
  * iavf_down - Shutdown the connection processing
  * @adapter: board private structure
  *
- * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
+ * Expects to be called while holding the IAVF_IN_CRITICAL_TASK bit lock.
  **/
 void iavf_down(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
 
-	if (adapter->state <= __IAVF_DOWN_PENDING)
+	if (adapter->state <= IAVF_DOWN_PENDING)
 		return;
 
 	netif_carrier_off(netdev);
@@ -1972,7 +1972,7 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
 	if (err)
 		goto err;
 
-	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+	set_bit(IAVF_VSI_DOWN, adapter->vsi.state);
 
 	iavf_map_rings_to_vectors(adapter);
 err:
@@ -2257,9 +2257,9 @@ iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
  * iavf_startup - first step of driver startup
  * @adapter: board private structure
  *
- * Function process __IAVF_STARTUP driver state.
- * When success the state is changed to __IAVF_INIT_VERSION_CHECK
- * when fails the state is changed to __IAVF_INIT_FAILED
+ * Function process IAVF_STARTUP driver state.
+ * When success the state is changed to IAVF_INIT_VERSION_CHECK
+ * when fails the state is changed to IAVF_INIT_FAILED
  **/
 static void iavf_startup(struct iavf_adapter *adapter)
 {
@@ -2268,7 +2268,7 @@ static void iavf_startup(struct iavf_adapter *adapter)
 	enum iavf_status status;
 	int ret;
 
-	WARN_ON(adapter->state != __IAVF_STARTUP);
+	WARN_ON(adapter->state != IAVF_STARTUP);
 
 	/* driver loaded, probe complete */
 	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
@@ -2302,19 +2302,19 @@ static void iavf_startup(struct iavf_adapter *adapter)
 		iavf_shutdown_adminq(hw);
 		goto err;
 	}
-	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
+	iavf_change_state(adapter, IAVF_INIT_VERSION_CHECK);
 	return;
 err:
-	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+	iavf_change_state(adapter, IAVF_INIT_FAILED);
 }
 
 /**
  * iavf_init_version_check - second step of driver startup
  * @adapter: board private structure
  *
- * Function process __IAVF_INIT_VERSION_CHECK driver state.
- * When success the state is changed to __IAVF_INIT_GET_RESOURCES
- * when fails the state is changed to __IAVF_INIT_FAILED
+ * Function process IAVF_INIT_VERSION_CHECK driver state.
+ * When success the state is changed to IAVF_INIT_GET_RESOURCES
+ * when fails the state is changed to IAVF_INIT_FAILED
  **/
 static void iavf_init_version_check(struct iavf_adapter *adapter)
 {
@@ -2322,12 +2322,12 @@ static void iavf_init_version_check(struct iavf_adapter *adapter)
 	struct iavf_hw *hw = &adapter->hw;
 	int err = -EAGAIN;
 
-	WARN_ON(adapter->state != __IAVF_INIT_VERSION_CHECK);
+	WARN_ON(adapter->state != IAVF_INIT_VERSION_CHECK);
 
 	if (!iavf_asq_done(hw)) {
 		dev_err(&pdev->dev, "Admin queue command never completed\n");
 		iavf_shutdown_adminq(hw);
-		iavf_change_state(adapter, __IAVF_STARTUP);
+		iavf_change_state(adapter, IAVF_STARTUP);
 		goto err;
 	}
 
@@ -2350,10 +2350,10 @@ static void iavf_init_version_check(struct iavf_adapter *adapter)
 			err);
 		goto err;
 	}
-	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
+	iavf_change_state(adapter, IAVF_INIT_GET_RESOURCES);
 	return;
 err:
-	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+	iavf_change_state(adapter, IAVF_INIT_FAILED);
 }
 
 /**
@@ -2412,10 +2412,10 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
  * iavf_init_get_resources - third step of driver startup
  * @adapter: board private structure
  *
- * Function process __IAVF_INIT_GET_RESOURCES driver state and
+ * Function process IAVF_INIT_GET_RESOURCES driver state and
  * finishes driver initialization procedure.
- * When success the state is changed to __IAVF_DOWN
- * when fails the state is changed to __IAVF_INIT_FAILED
+ * When success the state is changed to IAVF_DOWN
+ * when fails the state is changed to IAVF_INIT_FAILED
  **/
 static void iavf_init_get_resources(struct iavf_adapter *adapter)
 {
@@ -2423,7 +2423,7 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
 	struct iavf_hw *hw = &adapter->hw;
 	int err;
 
-	WARN_ON(adapter->state != __IAVF_INIT_GET_RESOURCES);
+	WARN_ON(adapter->state != IAVF_INIT_GET_RESOURCES);
 	/* aq msg sent, awaiting reply */
 	if (!adapter->vf_res) {
 		adapter->vf_res = kzalloc(IAVF_VIRTCHNL_VF_RESOURCE_SIZE,
@@ -2459,18 +2459,18 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
 	}
 	/* Some features require additional messages to negotiate extended
 	 * capabilities. These are processed in sequence by the
-	 * __IAVF_INIT_EXTENDED_CAPS driver state.
+	 * IAVF_INIT_EXTENDED_CAPS driver state.
 	 */
 	adapter->extended_caps = IAVF_EXTENDED_CAPS;
 
-	iavf_change_state(adapter, __IAVF_INIT_EXTENDED_CAPS);
+	iavf_change_state(adapter, IAVF_INIT_EXTENDED_CAPS);
 	return;
 
 err_alloc:
 	kfree(adapter->vf_res);
 	adapter->vf_res = NULL;
 err:
-	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+	iavf_change_state(adapter, IAVF_INIT_FAILED);
 }
 
 /**
@@ -2524,26 +2524,26 @@ static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
 	return;
 err:
 	/* We didn't receive a reply. Make sure we try sending again when
-	 * __IAVF_INIT_FAILED attempts to recover.
+	 * IAVF_INIT_FAILED attempts to recover.
 	 */
 	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_VLAN_V2;
-	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+	iavf_change_state(adapter, IAVF_INIT_FAILED);
 }
 
 /**
  * iavf_init_process_extended_caps - Part of driver startup
  * @adapter: board private structure
  *
- * Function processes __IAVF_INIT_EXTENDED_CAPS driver state. This state
+ * Function processes IAVF_INIT_EXTENDED_CAPS driver state. This state
  * handles negotiating capabilities for features which require an additional
  * message.
  *
  * Once all extended capabilities exchanges are finished, the driver will
- * transition into __IAVF_INIT_CONFIG_ADAPTER.
+ * transition into IAVF_INIT_CONFIG_ADAPTER.
  */
 static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
 {
-	WARN_ON(adapter->state != __IAVF_INIT_EXTENDED_CAPS);
+	WARN_ON(adapter->state != IAVF_INIT_EXTENDED_CAPS);
 
 	/* Process capability exchange for VLAN V2 */
 	if (adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_VLAN_V2) {
@@ -2555,9 +2555,9 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
 	}
 
 	/* When we reach here, no further extended capabilities exchanges are
-	 * necessary, so we finally transition into __IAVF_INIT_CONFIG_ADAPTER
+	 * necessary, so we finally transition into IAVF_INIT_CONFIG_ADAPTER
 	 */
-	iavf_change_state(adapter, __IAVF_INIT_CONFIG_ADAPTER);
+	iavf_change_state(adapter, IAVF_INIT_CONFIG_ADAPTER);
 }
 
 /**
@@ -2565,7 +2565,7 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
  * @adapter: board private structure
  *
  * After all the supported capabilities are negotiated, then the
- * __IAVF_INIT_CONFIG_ADAPTER state will finish driver initialization.
+ * IAVF_INIT_CONFIG_ADAPTER state will finish driver initialization.
  */
 static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 {
@@ -2573,7 +2573,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	struct pci_dev *pdev = adapter->pdev;
 	int err;
 
-	WARN_ON(adapter->state != __IAVF_INIT_CONFIG_ADAPTER);
+	WARN_ON(adapter->state != IAVF_INIT_CONFIG_ADAPTER);
 
 	if (iavf_process_config(adapter))
 		goto err;
@@ -2618,7 +2618,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	adapter->link_up = false;
 
 	/* set the semaphore to prevent any callbacks after device registration
-	 * up to time when state of driver will be set to __IAVF_DOWN
+	 * up to time when state of driver will be set to IAVF_DOWN
 	 */
 	rtnl_lock();
 	if (!adapter->netdev_registered) {
@@ -2642,8 +2642,8 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	if (netdev->features & NETIF_F_GRO)
 		dev_info(&pdev->dev, "GRO is enabled\n");
 
-	iavf_change_state(adapter, __IAVF_DOWN);
-	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+	iavf_change_state(adapter, IAVF_DOWN);
+	set_bit(IAVF_VSI_DOWN, adapter->vsi.state);
 	rtnl_unlock();
 
 	iavf_misc_irq_enable(adapter);
@@ -2672,7 +2672,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 err_sw_init:
 	iavf_reset_interrupt_capability(adapter);
 err:
-	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+	iavf_change_state(adapter, IAVF_INIT_FAILED);
 }
 
 /**
@@ -2688,7 +2688,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 	u32 reg_val;
 
 	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state == __IAVF_REMOVE)
+		if (adapter->state == IAVF_REMOVE)
 			return;
 
 		goto restart_watchdog;
@@ -2696,7 +2696,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
 	    adapter->netdev_registered &&
-	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section) &&
+	    !test_bit(IAVF_IN_REMOVE_TASK, &adapter->crit_section) &&
 	    rtnl_trylock()) {
 		netdev_update_features(adapter->netdev);
 		rtnl_unlock();
@@ -2704,7 +2704,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 	}
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
-		iavf_change_state(adapter, __IAVF_COMM_FAILED);
+		iavf_change_state(adapter, IAVF_COMM_FAILED);
 
 	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
 		adapter->aq_required = 0;
@@ -2715,38 +2715,38 @@ static void iavf_watchdog_task(struct work_struct *work)
 	}
 
 	switch (adapter->state) {
-	case __IAVF_STARTUP:
+	case IAVF_STARTUP:
 		iavf_startup(adapter);
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(30));
 		return;
-	case __IAVF_INIT_VERSION_CHECK:
+	case IAVF_INIT_VERSION_CHECK:
 		iavf_init_version_check(adapter);
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(30));
 		return;
-	case __IAVF_INIT_GET_RESOURCES:
+	case IAVF_INIT_GET_RESOURCES:
 		iavf_init_get_resources(adapter);
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
-	case __IAVF_INIT_EXTENDED_CAPS:
+	case IAVF_INIT_EXTENDED_CAPS:
 		iavf_init_process_extended_caps(adapter);
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
-	case __IAVF_INIT_CONFIG_ADAPTER:
+	case IAVF_INIT_CONFIG_ADAPTER:
 		iavf_init_config_adapter(adapter);
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
-	case __IAVF_INIT_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
+	case IAVF_INIT_FAILED:
+		if (test_bit(IAVF_IN_REMOVE_TASK,
 			     &adapter->crit_section)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
@@ -2770,14 +2770,14 @@ static void iavf_watchdog_task(struct work_struct *work)
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task, HZ);
 		return;
-	case __IAVF_COMM_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
+	case IAVF_COMM_FAILED:
+		if (test_bit(IAVF_IN_REMOVE_TASK,
 			     &adapter->crit_section)) {
-			/* Set state to __IAVF_INIT_FAILED and perform remove
+			/* Set state to IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
-			 * doesn't bring the state back to __IAVF_COMM_FAILED.
+			 * doesn't bring the state back to IAVF_COMM_FAILED.
 			 */
-			iavf_change_state(adapter, __IAVF_INIT_FAILED);
+			iavf_change_state(adapter, IAVF_INIT_FAILED);
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 			mutex_unlock(&adapter->crit_lock);
 			return;
@@ -2793,7 +2793,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 			 * gets everything set up again, it'll restart the
 			 * watchdog for us. Down, boy. Sit. Stay. Woof.
 			 */
-			iavf_change_state(adapter, __IAVF_STARTUP);
+			iavf_change_state(adapter, IAVF_STARTUP);
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 		}
 		adapter->aq_required = 0;
@@ -2803,15 +2803,15 @@ static void iavf_watchdog_task(struct work_struct *work)
 				   &adapter->watchdog_task,
 				   msecs_to_jiffies(10));
 		return;
-	case __IAVF_RESETTING:
+	case IAVF_RESETTING:
 		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   HZ * 2);
 		return;
-	case __IAVF_DOWN:
-	case __IAVF_DOWN_PENDING:
-	case __IAVF_TESTING:
-	case __IAVF_RUNNING:
+	case IAVF_DOWN:
+	case IAVF_DOWN_PENDING:
+	case IAVF_TESTING:
+	case IAVF_RUNNING:
 		if (adapter->current_op) {
 			if (!iavf_asq_done(hw)) {
 				dev_dbg(&adapter->pdev->dev,
@@ -2826,13 +2826,13 @@ static void iavf_watchdog_task(struct work_struct *work)
 			 * if the error isn't -ENOTSUPP
 			 */
 			if (ret && ret != -EOPNOTSUPP &&
-			    adapter->state == __IAVF_RUNNING)
+			    adapter->state == IAVF_RUNNING)
 				iavf_request_stats(adapter);
 		}
-		if (adapter->state == __IAVF_RUNNING)
+		if (adapter->state == IAVF_RUNNING)
 			iavf_detect_recover_hung(&adapter->vsi);
 		break;
-	case __IAVF_REMOVE:
+	case IAVF_REMOVE:
 	default:
 		mutex_unlock(&adapter->crit_lock);
 		return;
@@ -2855,7 +2855,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
-	if (adapter->state >= __IAVF_DOWN)
+	if (adapter->state >= IAVF_DOWN)
 		queue_work(adapter->wq, &adapter->adminq_task);
 	if (adapter->aq_required)
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
@@ -2884,8 +2884,8 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
 	 */
-	if (adapter->state == __IAVF_RUNNING) {
-		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+	if (adapter->state == IAVF_RUNNING) {
+		set_bit(IAVF_VSI_DOWN, adapter->vsi.state);
 		netif_carrier_off(adapter->netdev);
 		netif_tx_disable(adapter->netdev);
 		adapter->link_up = false;
@@ -2927,7 +2927,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-	iavf_change_state(adapter, __IAVF_DOWN);
+	iavf_change_state(adapter, IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
 }
@@ -2964,7 +2964,7 @@ static void iavf_reset_task(struct work_struct *work)
 	 * task, just return in such a case.
 	 */
 	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state != __IAVF_REMOVE)
+		if (adapter->state != IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
 		goto reset_finish;
@@ -3038,7 +3038,7 @@ static void iavf_reset_task(struct work_struct *work)
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
 	 */
-	running = adapter->state == __IAVF_RUNNING;
+	running = adapter->state == IAVF_RUNNING;
 
 	if (running) {
 		netif_carrier_off(netdev);
@@ -3048,7 +3048,7 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 	iavf_irq_disable(adapter);
 
-	iavf_change_state(adapter, __IAVF_RESETTING);
+	iavf_change_state(adapter, IAVF_RESETTING);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 
 	/* free the Tx/Rx rings and descriptors, might be better to just
@@ -3154,13 +3154,13 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_configure(adapter);
 
 		/* iavf_up_complete() will switch device back
-		 * to __IAVF_RUNNING
+		 * to IAVF_RUNNING
 		 */
 		iavf_up_complete(adapter);
 
 		iavf_irq_enable(adapter, true);
 	} else {
-		iavf_change_state(adapter, __IAVF_DOWN);
+		iavf_change_state(adapter, IAVF_DOWN);
 		wake_up(&adapter->down_waitqueue);
 	}
 
@@ -3172,7 +3172,7 @@ static void iavf_reset_task(struct work_struct *work)
 	goto reset_finish;
 reset_err:
 	if (running) {
-		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+		set_bit(IAVF_VSI_DOWN, adapter->vsi.state);
 		iavf_free_traffic_irqs(adapter);
 	}
 	iavf_disable_vf(adapter);
@@ -3215,7 +3215,7 @@ static void iavf_adminq_task(struct work_struct *work)
 		goto out;
 
 	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state == __IAVF_REMOVE)
+		if (adapter->state == IAVF_REMOVE)
 			return;
 
 		queue_work(adapter->wq, &adapter->adminq_task);
@@ -3244,7 +3244,7 @@ static void iavf_adminq_task(struct work_struct *work)
 
 	if ((adapter->flags &
 	     (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED)) ||
-	    adapter->state == __IAVF_RESETTING)
+	    adapter->state == IAVF_RESETTING)
 		goto freedom;
 
 	/* check for error indications */
@@ -3593,7 +3593,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 
 	/* delete queue_channel */
 	if (!mqprio_qopt->qopt.hw) {
-		if (adapter->ch_config.state == __IAVF_TC_RUNNING) {
+		if (adapter->ch_config.state == IAVF_TC_RUNNING) {
 			/* reset the tc configuration */
 			netdev_reset_tc(netdev);
 			adapter->num_tc = 0;
@@ -3614,7 +3614,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 			dev_err(&adapter->pdev->dev, "ADq not supported\n");
 			return -EOPNOTSUPP;
 		}
-		if (adapter->ch_config.state != __IAVF_TC_INVALID) {
+		if (adapter->ch_config.state != IAVF_TC_INVALID) {
 			dev_err(&adapter->pdev->dev, "TC configuration already exists\n");
 			return -EINVAL;
 		}
@@ -3676,7 +3676,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 		}
 	}
 exit:
-	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+	if (test_bit(IAVF_IN_REMOVE_TASK, &adapter->crit_section))
 		return 0;
 
 	netif_set_real_num_rx_queues(netdev, total_qps);
@@ -4170,24 +4170,24 @@ static int iavf_open(struct net_device *netdev)
 	}
 
 	while (!mutex_trylock(&adapter->crit_lock)) {
-		/* If we are in __IAVF_INIT_CONFIG_ADAPTER state the crit_lock
+		/* If we are in IAVF_INIT_CONFIG_ADAPTER state the crit_lock
 		 * is already taken and iavf_open is called from an upper
 		 * device's notifier reacting on NETDEV_REGISTER event.
 		 * We have to leave here to avoid dead lock.
 		 */
-		if (adapter->state == __IAVF_INIT_CONFIG_ADAPTER)
+		if (adapter->state == IAVF_INIT_CONFIG_ADAPTER)
 			return -EBUSY;
 
 		usleep_range(500, 1000);
 	}
 
-	if (adapter->state != __IAVF_DOWN) {
+	if (adapter->state != IAVF_DOWN) {
 		err = -EBUSY;
 		goto err_unlock;
 	}
 
-	if (adapter->state == __IAVF_RUNNING &&
-	    !test_bit(__IAVF_VSI_DOWN, adapter->vsi.state)) {
+	if (adapter->state == IAVF_RUNNING &&
+	    !test_bit(IAVF_VSI_DOWN, adapter->vsi.state)) {
 		dev_dbg(&adapter->pdev->dev, "VF is already open.\n");
 		err = 0;
 		goto err_unlock;
@@ -4259,12 +4259,12 @@ static int iavf_close(struct net_device *netdev)
 
 	mutex_lock(&adapter->crit_lock);
 
-	if (adapter->state <= __IAVF_DOWN_PENDING) {
+	if (adapter->state <= IAVF_DOWN_PENDING) {
 		mutex_unlock(&adapter->crit_lock);
 		return 0;
 	}
 
-	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
+	set_bit(IAVF_VSI_DOWN, adapter->vsi.state);
 	if (CLIENT_ENABLED(adapter))
 		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
 	/* We cannot send IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS before
@@ -4292,7 +4292,7 @@ static int iavf_close(struct net_device *netdev)
 			   IAVF_FLAG_AQ_ADD_ADV_RSS_CFG);
 
 	iavf_down(adapter);
-	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
+	iavf_change_state(adapter, IAVF_DOWN_PENDING);
 	iavf_free_traffic_irqs(adapter);
 
 	mutex_unlock(&adapter->crit_lock);
@@ -4302,14 +4302,14 @@ static int iavf_close(struct net_device *netdev)
 	 * iavf_virtchnl_completion() after we get confirmation from the PF
 	 * driver that the rings have been stopped.
 	 *
-	 * Also, we wait for state to transition to __IAVF_DOWN before
+	 * Also, we wait for state to transition to IAVF_DOWN before
 	 * returning. State change occurs in iavf_virtchnl_completion() after
 	 * VF resources are released (which occurs after PF driver processes and
 	 * responds to admin queue commands).
 	 */
 
 	status = wait_event_timeout(adapter->down_waitqueue,
-				    adapter->state == __IAVF_DOWN,
+				    adapter->state == IAVF_DOWN,
 				    msecs_to_jiffies(500));
 	if (!status)
 		netdev_warn(netdev, "Device resources not yet released\n");
@@ -4821,7 +4821,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
 	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
 		dev_warn(&adapter->pdev->dev, "%s: failed to acquire crit_lock\n", __func__);
 	/* Prevent the watchdog from running. */
-	iavf_change_state(adapter, __IAVF_REMOVE);
+	iavf_change_state(adapter, IAVF_REMOVE);
 	adapter->aq_required = 0;
 	mutex_unlock(&adapter->crit_lock);
 
@@ -4896,7 +4896,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 
 	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
-	iavf_change_state(adapter, __IAVF_STARTUP);
+	iavf_change_state(adapter, IAVF_STARTUP);
 
 	/* Call save state here because it relies on the adapter struct. */
 	pci_save_state(pdev);
@@ -5052,7 +5052,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	netdev = adapter->netdev;
 	hw = &adapter->hw;
 
-	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+	if (test_and_set_bit(IAVF_IN_REMOVE_TASK, &adapter->crit_section))
 		return;
 
 	/* Wait until port initialization is complete.
@@ -5060,14 +5060,14 @@ static void iavf_remove(struct pci_dev *pdev)
 	 */
 	while (1) {
 		mutex_lock(&adapter->crit_lock);
-		if (adapter->state == __IAVF_RUNNING ||
-		    adapter->state == __IAVF_DOWN ||
-		    adapter->state == __IAVF_INIT_FAILED) {
+		if (adapter->state == IAVF_RUNNING ||
+		    adapter->state == IAVF_DOWN ||
+		    adapter->state == IAVF_INIT_FAILED) {
 			mutex_unlock(&adapter->crit_lock);
 			break;
 		}
 		/* Simply return if we already went through iavf_shutdown */
-		if (adapter->state == __IAVF_REMOVE) {
+		if (adapter->state == IAVF_REMOVE) {
 			mutex_unlock(&adapter->crit_lock);
 			return;
 		}
@@ -5092,7 +5092,7 @@ static void iavf_remove(struct pci_dev *pdev)
 
 	mutex_lock(&adapter->crit_lock);
 	dev_info(&adapter->pdev->dev, "Removing device\n");
-	iavf_change_state(adapter, __IAVF_REMOVE);
+	iavf_change_state(adapter, IAVF_REMOVE);
 
 	iavf_request_reset(adapter);
 	msleep(50);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index e989feda133c..f012af85a151 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -144,7 +144,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 	if (!vsi)
 		return;
 
-	if (test_bit(__IAVF_VSI_DOWN, vsi->state))
+	if (test_bit(IAVF_VSI_DOWN, vsi->state))
 		return;
 
 	netdev = vsi->netdev;
@@ -298,7 +298,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 
 		if (budget &&
 		    ((j / WB_STRIDE) == 0) && (j > 0) &&
-		    !test_bit(__IAVF_VSI_DOWN, vsi->state) &&
+		    !test_bit(IAVF_VSI_DOWN, vsi->state) &&
 		    (IAVF_DESC_UNUSED(tx_ring) != tx_ring->count))
 			tx_ring->arm_wb = true;
 	}
@@ -316,7 +316,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		smp_mb();
 		if (__netif_subqueue_stopped(tx_ring->netdev,
 					     tx_ring->queue_index) &&
-		   !test_bit(__IAVF_VSI_DOWN, vsi->state)) {
+		   !test_bit(IAVF_VSI_DOWN, vsi->state)) {
 			netif_wake_subqueue(tx_ring->netdev,
 					    tx_ring->queue_index);
 			++tx_ring->tx_stats.restart_queue;
@@ -1710,7 +1710,7 @@ static inline void iavf_update_enable_itr(struct iavf_vsi *vsi,
 			q_vector->itr_countdown--;
 	}
 
-	if (!test_bit(__IAVF_VSI_DOWN, vsi->state))
+	if (!test_bit(IAVF_VSI_DOWN, vsi->state))
 		wr32(hw, INTREG(q_vector->reg_idx), intval);
 }
 
@@ -1734,7 +1734,7 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 	int budget_per_ring;
 	int work_done = 0;
 
-	if (test_bit(__IAVF_VSI_DOWN, vsi->state)) {
+	if (test_bit(IAVF_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 2624bf6d009e..5209799fd1d1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -307,9 +307,9 @@ struct iavf_rx_queue_stats {
 };
 
 enum iavf_ring_state_t {
-	__IAVF_TX_FDIR_INIT_DONE,
-	__IAVF_TX_XPS_INIT_DONE,
-	__IAVF_RING_STATE_NBITS /* must be last */
+	IAVF_TX_FDIR_INIT_DONE,
+	IAVF_TX_XPS_INIT_DONE,
+	IAVF_RING_STATE_NBITS /* must be last */
 };
 
 /* some useful defines for virtchannel interface, which
@@ -333,7 +333,7 @@ struct iavf_ring {
 		struct iavf_tx_buffer *tx_bi;
 		struct iavf_rx_buffer *rx_bi;
 	};
-	DECLARE_BITMAP(state, __IAVF_RING_STATE_NBITS);
+	DECLARE_BITMAP(state, IAVF_RING_STATE_NBITS);
 	u16 queue_index;		/* Queue number of ring */
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 __iomem *tail;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 7c0578b5457b..ccaaa787646d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1512,7 +1512,7 @@ void iavf_enable_channels(struct iavf_adapter *adapter)
 				adapter->ch_config.ch_info[i].max_tx_rate;
 	}
 
-	adapter->ch_config.state = __IAVF_TC_RUNNING;
+	adapter->ch_config.state = IAVF_TC_RUNNING;
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 	adapter->current_op = VIRTCHNL_OP_ENABLE_CHANNELS;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_ENABLE_CHANNELS;
@@ -1535,7 +1535,7 @@ void iavf_disable_channels(struct iavf_adapter *adapter)
 		return;
 	}
 
-	adapter->ch_config.state = __IAVF_TC_INVALID;
+	adapter->ch_config.state = IAVF_TC_INVALID;
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 	adapter->current_op = VIRTCHNL_OP_DISABLE_CHANNELS;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_DISABLE_CHANNELS;
@@ -1616,7 +1616,7 @@ void iavf_add_cloud_filter(struct iavf_adapter *adapter)
 		if (cf->add) {
 			memcpy(f, &cf->f, sizeof(struct virtchnl_filter));
 			cf->add = false;
-			cf->state = __IAVF_CF_ADD_PENDING;
+			cf->state = IAVF_CF_ADD_PENDING;
 			iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_CLOUD_FILTER,
 					 (u8 *)f, len);
 		}
@@ -1664,7 +1664,7 @@ void iavf_del_cloud_filter(struct iavf_adapter *adapter)
 		if (cf->del) {
 			memcpy(f, &cf->f, sizeof(struct virtchnl_filter));
 			cf->del = false;
-			cf->state = __IAVF_CF_DEL_PENDING;
+			cf->state = IAVF_CF_DEL_PENDING;
 			iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_CLOUD_FILTER,
 					 (u8 *)f, len);
 		}
@@ -1936,7 +1936,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 				 * after we enable queues and actually prepared
 				 * to send traffic.
 				 */
-				if (adapter->state != __IAVF_RUNNING)
+				if (adapter->state != IAVF_RUNNING)
 					break;
 
 				/* For ADq enabled VF, we reconfigure VSIs and
@@ -1999,7 +1999,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_err(&adapter->pdev->dev, "Failed to configure queue channels, error %s\n",
 				iavf_stat_str(&adapter->hw, v_retval));
 			adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
-			adapter->ch_config.state = __IAVF_TC_INVALID;
+			adapter->ch_config.state = IAVF_TC_INVALID;
 			netdev_reset_tc(netdev);
 			netif_tx_start_all_queues(netdev);
 			break;
@@ -2007,7 +2007,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_err(&adapter->pdev->dev, "Failed to disable queue channels, error %s\n",
 				iavf_stat_str(&adapter->hw, v_retval));
 			adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
-			adapter->ch_config.state = __IAVF_TC_RUNNING;
+			adapter->ch_config.state = IAVF_TC_RUNNING;
 			netif_tx_start_all_queues(netdev);
 			break;
 		case VIRTCHNL_OP_ADD_CLOUD_FILTER: {
@@ -2016,8 +2016,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			list_for_each_entry_safe(cf, cftmp,
 						 &adapter->cloud_filter_list,
 						 list) {
-				if (cf->state == __IAVF_CF_ADD_PENDING) {
-					cf->state = __IAVF_CF_INVALID;
+				if (cf->state == IAVF_CF_ADD_PENDING) {
+					cf->state = IAVF_CF_INVALID;
 					dev_info(&adapter->pdev->dev, "Failed to add cloud filter, error %s\n",
 						 iavf_stat_str(&adapter->hw,
 							       v_retval));
@@ -2035,8 +2035,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 			list_for_each_entry(cf, &adapter->cloud_filter_list,
 					    list) {
-				if (cf->state == __IAVF_CF_DEL_PENDING) {
-					cf->state = __IAVF_CF_ACTIVE;
+				if (cf->state == IAVF_CF_DEL_PENDING) {
+					cf->state = IAVF_CF_ACTIVE;
 					dev_info(&adapter->pdev->dev, "Failed to del cloud filter, error %s\n",
 						 iavf_stat_str(&adapter->hw,
 							       v_retval));
@@ -2290,8 +2290,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	case VIRTCHNL_OP_DISABLE_QUEUES:
 		iavf_free_all_tx_resources(adapter);
 		iavf_free_all_rx_resources(adapter);
-		if (adapter->state == __IAVF_DOWN_PENDING) {
-			iavf_change_state(adapter, __IAVF_DOWN);
+		if (adapter->state == IAVF_DOWN_PENDING) {
+			iavf_change_state(adapter, IAVF_DOWN);
 			wake_up(&adapter->down_waitqueue);
 		}
 		break;
@@ -2345,8 +2345,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		struct iavf_cloud_filter *cf;
 
 		list_for_each_entry(cf, &adapter->cloud_filter_list, list) {
-			if (cf->state == __IAVF_CF_ADD_PENDING)
-				cf->state = __IAVF_CF_ACTIVE;
+			if (cf->state == IAVF_CF_ADD_PENDING)
+				cf->state = IAVF_CF_ACTIVE;
 		}
 		}
 		break;
@@ -2355,8 +2355,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		list_for_each_entry_safe(cf, cftmp, &adapter->cloud_filter_list,
 					 list) {
-			if (cf->state == __IAVF_CF_DEL_PENDING) {
-				cf->state = __IAVF_CF_INVALID;
+			if (cf->state == IAVF_CF_DEL_PENDING) {
+				cf->state = IAVF_CF_INVALID;
 				list_del(&cf->list);
 				kfree(cf);
 				adapter->num_cloud_filters--;
-- 
2.34.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

