Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD197CB02C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 18:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53079414E4;
	Mon, 16 Oct 2023 16:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53079414E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697474963;
	bh=xqDMLxPPceV80C+o6I429ns8jmc5xMv++3/2GYptqOU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gYJHMaewOtstdSzz7UH2qNFFpn9hjwFmdvF3GEztwNUrT13tIUZvm2dVLEzjcC8fO
	 ist+Hs42ZL/oHEcTgSicGsIjuwl7v+28lI2vo2HFrjKMTjlV3NbKFPhgEOJ7xwin53
	 ukyKHnuDBmWfzayRmHRkwVCxVvM+3wchCdpiuq3RxyDQRCIO1G7sjt6CoAQdcBpw54
	 UMVS6xvlbF8WeHl2jJxISmzFZSjhuNsJdbvx44yJO5wLWF5CVvdjpVMeWaD9WA0+9Y
	 Ml3SoOkSYXVbmAijtxYcKKGVXjVVaQgh8zZQZvdPI72U8p/k5i9gEDJDilCrc0D1hX
	 J0Bpih4IASrGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DP9K4ZqCBba6; Mon, 16 Oct 2023 16:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 379F340586;
	Mon, 16 Oct 2023 16:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 379F340586
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 151C91BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEF4D60FFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEF4D60FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1NgwxNjJRZYq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 16:49:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CECD4605A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CECD4605A2
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-UI-Wzg6wONyh13FoVGZkqQ-1; Mon, 16 Oct 2023 12:49:08 -0400
X-MC-Unique: UI-Wzg6wONyh13FoVGZkqQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 56B40858F1B;
 Mon, 16 Oct 2023 16:49:08 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 42CB6492BEE;
 Mon, 16 Oct 2023 16:49:07 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Oct 2023 18:48:49 +0200
Message-ID: <20231016164849.45691-5-mschmidt@redhat.com>
In-Reply-To: <20231016164849.45691-1-mschmidt@redhat.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697474951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aqtGIlxu0qpN2LwJEOvPeZ0LUPu3+U7CKm2aQtRiQ8w=;
 b=NAL6rvonxSoSD/a9y83QMHRlrH7M+9h5uUMKEPeDPBMiHTlgBObcMsjUeNHlkAjQRjyLjJ
 c6QoOyXQ2MBoYaH7tWHNSmksCqW432MA2GZ09cFs/fq2VPKUGB1i03EoJI1LF2J+mTBeIY
 MfH9jy2MTNZna/T8a+mI8xmiH5R6VOA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NAL6rvon
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: delete the iavf client
 interface
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The iavf client interface was added in 2017 by commit ed0e894de7c1
("i40evf: add client interface"), but there have never been any in-tree
callers.

It's not useful for future development either. The Intel out-of-tree
iavf and irdma drivers instead use an auxiliary bus, which is a better
solution.

Remove the iavf client interface code. Also gone are the client_task
work and the client_lock mutex.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  27 -
 drivers/net/ethernet/intel/iavf/iavf_client.c | 578 ------------------
 drivers/net/ethernet/intel/iavf/iavf_client.h | 169 -----
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  82 ---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  14 -
 6 files changed, 1 insertion(+), 871 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/iavf/iavf_client.c
 delete mode 100644 drivers/net/ethernet/intel/iavf/iavf_client.h

diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
index 9c3e45c54d01..2d154a4e2fd7 100644
--- a/drivers/net/ethernet/intel/iavf/Makefile
+++ b/drivers/net/ethernet/intel/iavf/Makefile
@@ -13,4 +13,4 @@ obj-$(CONFIG_IAVF) += iavf.o
 
 iavf-objs := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
 	     iavf_adv_rss.o \
-	     iavf_txrx.o iavf_common.o iavf_adminq.o iavf_client.o
+	     iavf_txrx.o iavf_common.o iavf_adminq.o
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index f026d0670338..e7ab89dc883a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -63,7 +63,6 @@ struct iavf_vsi {
 	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
 	int base_vector;
 	u16 qs_handle;
-	void *priv;     /* client driver data reference. */
 };
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
@@ -256,7 +255,6 @@ struct iavf_adapter {
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
 	struct work_struct finish_config;
-	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
 	wait_queue_head_t reset_waitqueue;
 	wait_queue_head_t vc_waitqueue;
@@ -265,7 +263,6 @@ struct iavf_adapter {
 	int num_vlan_filters;
 	struct list_head mac_filter_list;
 	struct mutex crit_lock;
-	struct mutex client_lock;
 	/* Lock to protect accesses to MAC and VLAN lists */
 	spinlock_t mac_vlan_list_lock;
 	char misc_vector_name[IFNAMSIZ + 9];
@@ -282,10 +279,6 @@ struct iavf_adapter {
 	u64 hw_csum_rx_error;
 	u32 rx_desc_count;
 	int num_msix_vectors;
-	int num_rdma_msix;
-	int rdma_base_vector;
-	u32 client_pending;
-	struct iavf_client_instance *cinst;
 	struct msix_entry *msix_entries;
 
 	u32 flags;
@@ -294,10 +287,6 @@ struct iavf_adapter {
 #define IAVF_FLAG_RESET_PENDING		BIT(4)
 #define IAVF_FLAG_RESET_NEEDED		BIT(5)
 #define IAVF_FLAG_WB_ON_ITR_CAPABLE		BIT(6)
-#define IAVF_FLAG_SERVICE_CLIENT_REQUESTED	BIT(9)
-#define IAVF_FLAG_CLIENT_NEEDS_OPEN		BIT(10)
-#define IAVF_FLAG_CLIENT_NEEDS_CLOSE		BIT(11)
-#define IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS	BIT(12)
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
@@ -388,11 +377,6 @@ struct iavf_adapter {
 	u32 link_speed_mbps;
 
 	enum virtchnl_ops current_op;
-#define CLIENT_ALLOWED(_a) ((_a)->vf_res ? \
-			    (_a)->vf_res->vf_cap_flags & \
-				VIRTCHNL_VF_OFFLOAD_RDMA : \
-			    0)
-#define CLIENT_ENABLED(_a) ((_a)->cinst)
 /* RSS by the PF should be preferred over RSS via other methods. */
 #define RSS_PF(_a) ((_a)->vf_res->vf_cap_flags & \
 		    VIRTCHNL_VF_OFFLOAD_RSS_PF)
@@ -460,12 +444,6 @@ struct iavf_adapter {
 
 /* Ethtool Private Flags */
 
-/* lan device, used by client interface */
-struct iavf_device {
-	struct list_head list;
-	struct iavf_adapter *vf;
-};
-
 /* needed by iavf_ethtool.c */
 extern char iavf_driver_name[];
 
@@ -569,11 +547,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 int iavf_config_rss(struct iavf_adapter *adapter);
 int iavf_lan_add_device(struct iavf_adapter *adapter);
 int iavf_lan_del_device(struct iavf_adapter *adapter);
-void iavf_client_subtask(struct iavf_adapter *adapter);
-void iavf_notify_client_message(struct iavf_vsi *vsi, u8 *msg, u16 len);
-void iavf_notify_client_l2_params(struct iavf_vsi *vsi);
-void iavf_notify_client_open(struct iavf_vsi *vsi);
-void iavf_notify_client_close(struct iavf_vsi *vsi, bool reset);
 void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.c b/drivers/net/ethernet/intel/iavf/iavf_client.c
deleted file mode 100644
index e6051b6355aa..000000000000
--- a/drivers/net/ethernet/intel/iavf/iavf_client.c
+++ /dev/null
@@ -1,578 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
-
-#include <linux/list.h>
-#include <linux/errno.h>
-
-#include "iavf.h"
-#include "iavf_prototype.h"
-#include "iavf_client.h"
-
-static
-const char iavf_client_interface_version_str[] = IAVF_CLIENT_VERSION_STR;
-static struct iavf_client *vf_registered_client;
-static LIST_HEAD(iavf_devices);
-static DEFINE_MUTEX(iavf_device_mutex);
-
-static u32 iavf_client_virtchnl_send(struct iavf_info *ldev,
-				     struct iavf_client *client,
-				     u8 *msg, u16 len);
-
-static int iavf_client_setup_qvlist(struct iavf_info *ldev,
-				    struct iavf_client *client,
-				    struct iavf_qvlist_info *qvlist_info);
-
-static struct iavf_ops iavf_lan_ops = {
-	.virtchnl_send = iavf_client_virtchnl_send,
-	.setup_qvlist = iavf_client_setup_qvlist,
-};
-
-/**
- * iavf_client_get_params - retrieve relevant client parameters
- * @vsi: VSI with parameters
- * @params: client param struct
- **/
-static
-void iavf_client_get_params(struct iavf_vsi *vsi, struct iavf_params *params)
-{
-	int i;
-
-	memset(params, 0, sizeof(struct iavf_params));
-	params->mtu = vsi->netdev->mtu;
-	params->link_up = vsi->back->link_up;
-
-	for (i = 0; i < IAVF_MAX_USER_PRIORITY; i++) {
-		params->qos.prio_qos[i].tc = 0;
-		params->qos.prio_qos[i].qs_handle = vsi->qs_handle;
-	}
-}
-
-/**
- * iavf_notify_client_message - call the client message receive callback
- * @vsi: the VSI associated with this client
- * @msg: message buffer
- * @len: length of message
- *
- * If there is a client to this VSI, call the client
- **/
-void iavf_notify_client_message(struct iavf_vsi *vsi, u8 *msg, u16 len)
-{
-	struct iavf_client_instance *cinst;
-
-	if (!vsi)
-		return;
-
-	cinst = vsi->back->cinst;
-	if (!cinst || !cinst->client || !cinst->client->ops ||
-	    !cinst->client->ops->virtchnl_receive) {
-		dev_dbg(&vsi->back->pdev->dev,
-			"Cannot locate client instance virtchnl_receive function\n");
-		return;
-	}
-	cinst->client->ops->virtchnl_receive(&cinst->lan_info,  cinst->client,
-					     msg, len);
-}
-
-/**
- * iavf_notify_client_l2_params - call the client notify callback
- * @vsi: the VSI with l2 param changes
- *
- * If there is a client to this VSI, call the client
- **/
-void iavf_notify_client_l2_params(struct iavf_vsi *vsi)
-{
-	struct iavf_client_instance *cinst;
-	struct iavf_params params;
-
-	if (!vsi)
-		return;
-
-	cinst = vsi->back->cinst;
-
-	if (!cinst || !cinst->client || !cinst->client->ops ||
-	    !cinst->client->ops->l2_param_change) {
-		dev_dbg(&vsi->back->pdev->dev,
-			"Cannot locate client instance l2_param_change function\n");
-		return;
-	}
-	iavf_client_get_params(vsi, &params);
-	cinst->lan_info.params = params;
-	cinst->client->ops->l2_param_change(&cinst->lan_info, cinst->client,
-					    &params);
-}
-
-/**
- * iavf_notify_client_open - call the client open callback
- * @vsi: the VSI with netdev opened
- *
- * If there is a client to this netdev, call the client with open
- **/
-void iavf_notify_client_open(struct iavf_vsi *vsi)
-{
-	struct iavf_adapter *adapter = vsi->back;
-	struct iavf_client_instance *cinst = adapter->cinst;
-	int ret;
-
-	if (!cinst || !cinst->client || !cinst->client->ops ||
-	    !cinst->client->ops->open) {
-		dev_dbg(&vsi->back->pdev->dev,
-			"Cannot locate client instance open function\n");
-		return;
-	}
-	if (!(test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state))) {
-		ret = cinst->client->ops->open(&cinst->lan_info, cinst->client);
-		if (!ret)
-			set_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
-	}
-}
-
-/**
- * iavf_client_release_qvlist - send a message to the PF to release rdma qv map
- * @ldev: pointer to L2 context.
- *
- * Return 0 on success or < 0 on error
- **/
-static int iavf_client_release_qvlist(struct iavf_info *ldev)
-{
-	struct iavf_adapter *adapter = ldev->vf;
-	enum iavf_status err;
-
-	if (adapter->aq_required)
-		return -EAGAIN;
-
-	err = iavf_aq_send_msg_to_pf(&adapter->hw,
-				     VIRTCHNL_OP_RELEASE_RDMA_IRQ_MAP,
-				     IAVF_SUCCESS, NULL, 0, NULL);
-
-	if (err)
-		dev_err(&adapter->pdev->dev,
-			"Unable to send RDMA vector release message to PF, error %d, aq status %d\n",
-			err, adapter->hw.aq.asq_last_status);
-
-	return err;
-}
-
-/**
- * iavf_notify_client_close - call the client close callback
- * @vsi: the VSI with netdev closed
- * @reset: true when close called due to reset pending
- *
- * If there is a client to this netdev, call the client with close
- **/
-void iavf_notify_client_close(struct iavf_vsi *vsi, bool reset)
-{
-	struct iavf_adapter *adapter = vsi->back;
-	struct iavf_client_instance *cinst = adapter->cinst;
-
-	if (!cinst || !cinst->client || !cinst->client->ops ||
-	    !cinst->client->ops->close) {
-		dev_dbg(&vsi->back->pdev->dev,
-			"Cannot locate client instance close function\n");
-		return;
-	}
-	cinst->client->ops->close(&cinst->lan_info, cinst->client, reset);
-	iavf_client_release_qvlist(&cinst->lan_info);
-	clear_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
-}
-
-/**
- * iavf_client_add_instance - add a client instance to the instance list
- * @adapter: pointer to the board struct
- *
- * Returns cinst ptr on success, NULL on failure
- **/
-static struct iavf_client_instance *
-iavf_client_add_instance(struct iavf_adapter *adapter)
-{
-	struct iavf_client_instance *cinst = NULL;
-	struct iavf_vsi *vsi = &adapter->vsi;
-	struct netdev_hw_addr *mac = NULL;
-	struct iavf_params params;
-
-	if (!vf_registered_client)
-		goto out;
-
-	if (adapter->cinst) {
-		cinst = adapter->cinst;
-		goto out;
-	}
-
-	cinst = kzalloc(sizeof(*cinst), GFP_KERNEL);
-	if (!cinst)
-		goto out;
-
-	cinst->lan_info.vf = (void *)adapter;
-	cinst->lan_info.netdev = vsi->netdev;
-	cinst->lan_info.pcidev = adapter->pdev;
-	cinst->lan_info.fid = 0;
-	cinst->lan_info.ftype = IAVF_CLIENT_FTYPE_VF;
-	cinst->lan_info.hw_addr = adapter->hw.hw_addr;
-	cinst->lan_info.ops = &iavf_lan_ops;
-	cinst->lan_info.version.major = IAVF_CLIENT_VERSION_MAJOR;
-	cinst->lan_info.version.minor = IAVF_CLIENT_VERSION_MINOR;
-	cinst->lan_info.version.build = IAVF_CLIENT_VERSION_BUILD;
-	iavf_client_get_params(vsi, &params);
-	cinst->lan_info.params = params;
-	set_bit(__IAVF_CLIENT_INSTANCE_NONE, &cinst->state);
-
-	cinst->lan_info.msix_count = adapter->num_rdma_msix;
-	cinst->lan_info.msix_entries =
-			&adapter->msix_entries[adapter->rdma_base_vector];
-
-	mac = list_first_entry(&cinst->lan_info.netdev->dev_addrs.list,
-			       struct netdev_hw_addr, list);
-	if (mac)
-		ether_addr_copy(cinst->lan_info.lanmac, mac->addr);
-	else
-		dev_err(&adapter->pdev->dev, "MAC address list is empty!\n");
-
-	cinst->client = vf_registered_client;
-	adapter->cinst = cinst;
-out:
-	return cinst;
-}
-
-/**
- * iavf_client_del_instance - removes a client instance from the list
- * @adapter: pointer to the board struct
- *
- **/
-static
-void iavf_client_del_instance(struct iavf_adapter *adapter)
-{
-	kfree(adapter->cinst);
-	adapter->cinst = NULL;
-}
-
-/**
- * iavf_client_subtask - client maintenance work
- * @adapter: board private structure
- **/
-void iavf_client_subtask(struct iavf_adapter *adapter)
-{
-	struct iavf_client *client = vf_registered_client;
-	struct iavf_client_instance *cinst;
-	int ret = 0;
-
-	if (adapter->state < __IAVF_DOWN)
-		return;
-
-	/* first check client is registered */
-	if (!client)
-		return;
-
-	/* Add the client instance to the instance list */
-	cinst = iavf_client_add_instance(adapter);
-	if (!cinst)
-		return;
-
-	dev_info(&adapter->pdev->dev, "Added instance of Client %s\n",
-		 client->name);
-
-	if (!test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
-		/* Send an Open request to the client */
-
-		if (client->ops && client->ops->open)
-			ret = client->ops->open(&cinst->lan_info, client);
-		if (!ret)
-			set_bit(__IAVF_CLIENT_INSTANCE_OPENED,
-				&cinst->state);
-		else
-			/* remove client instance */
-			iavf_client_del_instance(adapter);
-	}
-}
-
-/**
- * iavf_lan_add_device - add a lan device struct to the list of lan devices
- * @adapter: pointer to the board struct
- *
- * Returns 0 on success or none 0 on error
- **/
-int iavf_lan_add_device(struct iavf_adapter *adapter)
-{
-	struct iavf_device *ldev;
-	int ret = 0;
-
-	mutex_lock(&iavf_device_mutex);
-	list_for_each_entry(ldev, &iavf_devices, list) {
-		if (ldev->vf == adapter) {
-			ret = -EEXIST;
-			goto out;
-		}
-	}
-	ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);
-	if (!ldev) {
-		ret = -ENOMEM;
-		goto out;
-	}
-	ldev->vf = adapter;
-	INIT_LIST_HEAD(&ldev->list);
-	list_add(&ldev->list, &iavf_devices);
-	dev_info(&adapter->pdev->dev, "Added LAN device bus=0x%02x dev=0x%02x func=0x%02x\n",
-		 adapter->hw.bus.bus_id, adapter->hw.bus.device,
-		 adapter->hw.bus.func);
-
-	/* Since in some cases register may have happened before a device gets
-	 * added, we can schedule a subtask to go initiate the clients.
-	 */
-	adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
-
-out:
-	mutex_unlock(&iavf_device_mutex);
-	return ret;
-}
-
-/**
- * iavf_lan_del_device - removes a lan device from the device list
- * @adapter: pointer to the board struct
- *
- * Returns 0 on success or non-0 on error
- **/
-int iavf_lan_del_device(struct iavf_adapter *adapter)
-{
-	struct iavf_device *ldev, *tmp;
-	int ret = -ENODEV;
-
-	mutex_lock(&iavf_device_mutex);
-	list_for_each_entry_safe(ldev, tmp, &iavf_devices, list) {
-		if (ldev->vf == adapter) {
-			dev_info(&adapter->pdev->dev,
-				 "Deleted LAN device bus=0x%02x dev=0x%02x func=0x%02x\n",
-				 adapter->hw.bus.bus_id, adapter->hw.bus.device,
-				 adapter->hw.bus.func);
-			list_del(&ldev->list);
-			kfree(ldev);
-			ret = 0;
-			break;
-		}
-	}
-
-	mutex_unlock(&iavf_device_mutex);
-	return ret;
-}
-
-/**
- * iavf_client_release - release client specific resources
- * @client: pointer to the registered client
- *
- **/
-static void iavf_client_release(struct iavf_client *client)
-{
-	struct iavf_client_instance *cinst;
-	struct iavf_device *ldev;
-	struct iavf_adapter *adapter;
-
-	mutex_lock(&iavf_device_mutex);
-	list_for_each_entry(ldev, &iavf_devices, list) {
-		adapter = ldev->vf;
-		cinst = adapter->cinst;
-		if (!cinst)
-			continue;
-		if (test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
-			if (client->ops && client->ops->close)
-				client->ops->close(&cinst->lan_info, client,
-						   false);
-			iavf_client_release_qvlist(&cinst->lan_info);
-			clear_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
-
-			dev_warn(&adapter->pdev->dev,
-				 "Client %s instance closed\n", client->name);
-		}
-		/* delete the client instance */
-		iavf_client_del_instance(adapter);
-		dev_info(&adapter->pdev->dev, "Deleted client instance of Client %s\n",
-			 client->name);
-	}
-	mutex_unlock(&iavf_device_mutex);
-}
-
-/**
- * iavf_client_prepare - prepare client specific resources
- * @client: pointer to the registered client
- *
- **/
-static void iavf_client_prepare(struct iavf_client *client)
-{
-	struct iavf_device *ldev;
-	struct iavf_adapter *adapter;
-
-	mutex_lock(&iavf_device_mutex);
-	list_for_each_entry(ldev, &iavf_devices, list) {
-		adapter = ldev->vf;
-		/* Signal the watchdog to service the client */
-		adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
-	}
-	mutex_unlock(&iavf_device_mutex);
-}
-
-/**
- * iavf_client_virtchnl_send - send a message to the PF instance
- * @ldev: pointer to L2 context.
- * @client: Client pointer.
- * @msg: pointer to message buffer
- * @len: message length
- *
- * Return 0 on success or < 0 on error
- **/
-static u32 iavf_client_virtchnl_send(struct iavf_info *ldev,
-				     struct iavf_client *client,
-				     u8 *msg, u16 len)
-{
-	struct iavf_adapter *adapter = ldev->vf;
-	enum iavf_status err;
-
-	if (adapter->aq_required)
-		return -EAGAIN;
-
-	err = iavf_aq_send_msg_to_pf(&adapter->hw, VIRTCHNL_OP_RDMA,
-				     IAVF_SUCCESS, msg, len, NULL);
-	if (err)
-		dev_err(&adapter->pdev->dev, "Unable to send RDMA message to PF, error %d, aq status %d\n",
-			err, adapter->hw.aq.asq_last_status);
-
-	return err;
-}
-
-/**
- * iavf_client_setup_qvlist - send a message to the PF to setup rdma qv map
- * @ldev: pointer to L2 context.
- * @client: Client pointer.
- * @qvlist_info: queue and vector list
- *
- * Return 0 on success or < 0 on error
- **/
-static int iavf_client_setup_qvlist(struct iavf_info *ldev,
-				    struct iavf_client *client,
-				    struct iavf_qvlist_info *qvlist_info)
-{
-	struct virtchnl_rdma_qvlist_info *v_qvlist_info;
-	struct iavf_adapter *adapter = ldev->vf;
-	struct iavf_qv_info *qv_info;
-	enum iavf_status err;
-	u32 v_idx, i;
-	size_t msg_size;
-
-	if (adapter->aq_required)
-		return -EAGAIN;
-
-	/* A quick check on whether the vectors belong to the client */
-	for (i = 0; i < qvlist_info->num_vectors; i++) {
-		qv_info = &qvlist_info->qv_info[i];
-		if (!qv_info)
-			continue;
-		v_idx = qv_info->v_idx;
-		if ((v_idx >=
-		    (adapter->rdma_base_vector + adapter->num_rdma_msix)) ||
-		    (v_idx < adapter->rdma_base_vector))
-			return -EINVAL;
-	}
-
-	v_qvlist_info = (struct virtchnl_rdma_qvlist_info *)qvlist_info;
-	msg_size = virtchnl_struct_size(v_qvlist_info, qv_info,
-					v_qvlist_info->num_vectors);
-
-	adapter->client_pending |= BIT(VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP);
-	err = iavf_aq_send_msg_to_pf(&adapter->hw,
-				VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP, IAVF_SUCCESS,
-				(u8 *)v_qvlist_info, msg_size, NULL);
-
-	if (err) {
-		dev_err(&adapter->pdev->dev,
-			"Unable to send RDMA vector config message to PF, error %d, aq status %d\n",
-			err, adapter->hw.aq.asq_last_status);
-		goto out;
-	}
-
-	err = -EBUSY;
-	for (i = 0; i < 5; i++) {
-		msleep(100);
-		if (!(adapter->client_pending &
-		      BIT(VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP))) {
-			err = 0;
-			break;
-		}
-	}
-out:
-	return err;
-}
-
-/**
- * iavf_register_client - Register a iavf client driver with the L2 driver
- * @client: pointer to the iavf_client struct
- *
- * Returns 0 on success or non-0 on error
- **/
-int iavf_register_client(struct iavf_client *client)
-{
-	int ret = 0;
-
-	if (!client) {
-		ret = -EIO;
-		goto out;
-	}
-
-	if (strlen(client->name) == 0) {
-		pr_info("iavf: Failed to register client with no name\n");
-		ret = -EIO;
-		goto out;
-	}
-
-	if (vf_registered_client) {
-		pr_info("iavf: Client %s has already been registered!\n",
-			client->name);
-		ret = -EEXIST;
-		goto out;
-	}
-
-	if ((client->version.major != IAVF_CLIENT_VERSION_MAJOR) ||
-	    (client->version.minor != IAVF_CLIENT_VERSION_MINOR)) {
-		pr_info("iavf: Failed to register client %s due to mismatched client interface version\n",
-			client->name);
-		pr_info("Client is using version: %02d.%02d.%02d while LAN driver supports %s\n",
-			client->version.major, client->version.minor,
-			client->version.build,
-			iavf_client_interface_version_str);
-		ret = -EIO;
-		goto out;
-	}
-
-	vf_registered_client = client;
-
-	iavf_client_prepare(client);
-
-	pr_info("iavf: Registered client %s with return code %d\n",
-		client->name, ret);
-out:
-	return ret;
-}
-EXPORT_SYMBOL(iavf_register_client);
-
-/**
- * iavf_unregister_client - Unregister a iavf client driver with the L2 driver
- * @client: pointer to the iavf_client struct
- *
- * Returns 0 on success or non-0 on error
- **/
-int iavf_unregister_client(struct iavf_client *client)
-{
-	int ret = 0;
-
-	/* When a unregister request comes through we would have to send
-	 * a close for each of the client instances that were opened.
-	 * client_release function is called to handle this.
-	 */
-	iavf_client_release(client);
-
-	if (vf_registered_client != client) {
-		pr_info("iavf: Client %s has not been registered\n",
-			client->name);
-		ret = -ENODEV;
-		goto out;
-	}
-	vf_registered_client = NULL;
-	pr_info("iavf: Unregistered client %s\n", client->name);
-out:
-	return ret;
-}
-EXPORT_SYMBOL(iavf_unregister_client);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.h b/drivers/net/ethernet/intel/iavf/iavf_client.h
deleted file mode 100644
index 500269bc0f5b..000000000000
--- a/drivers/net/ethernet/intel/iavf/iavf_client.h
+++ /dev/null
@@ -1,169 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
-
-#ifndef _IAVF_CLIENT_H_
-#define _IAVF_CLIENT_H_
-
-#define IAVF_CLIENT_STR_LENGTH 10
-
-/* Client interface version should be updated anytime there is a change in the
- * existing APIs or data structures.
- */
-#define IAVF_CLIENT_VERSION_MAJOR 0
-#define IAVF_CLIENT_VERSION_MINOR 01
-#define IAVF_CLIENT_VERSION_BUILD 00
-#define IAVF_CLIENT_VERSION_STR     \
-	__stringify(IAVF_CLIENT_VERSION_MAJOR) "." \
-	__stringify(IAVF_CLIENT_VERSION_MINOR) "." \
-	__stringify(IAVF_CLIENT_VERSION_BUILD)
-
-struct iavf_client_version {
-	u8 major;
-	u8 minor;
-	u8 build;
-	u8 rsvd;
-};
-
-enum iavf_client_state {
-	__IAVF_CLIENT_NULL,
-	__IAVF_CLIENT_REGISTERED
-};
-
-enum iavf_client_instance_state {
-	__IAVF_CLIENT_INSTANCE_NONE,
-	__IAVF_CLIENT_INSTANCE_OPENED,
-};
-
-struct iavf_ops;
-struct iavf_client;
-
-/* HW does not define a type value for AEQ; only for RX/TX and CEQ.
- * In order for us to keep the interface simple, SW will define a
- * unique type value for AEQ.
- */
-#define IAVF_QUEUE_TYPE_PE_AEQ	0x80
-#define IAVF_QUEUE_INVALID_IDX	0xFFFF
-
-struct iavf_qv_info {
-	u32 v_idx; /* msix_vector */
-	u16 ceq_idx;
-	u16 aeq_idx;
-	u8 itr_idx;
-};
-
-struct iavf_qvlist_info {
-	u32 num_vectors;
-	struct iavf_qv_info qv_info[];
-};
-
-#define IAVF_CLIENT_MSIX_ALL 0xFFFFFFFF
-
-/* set of LAN parameters useful for clients managed by LAN */
-
-/* Struct to hold per priority info */
-struct iavf_prio_qos_params {
-	u16 qs_handle; /* qs handle for prio */
-	u8 tc; /* TC mapped to prio */
-	u8 reserved;
-};
-
-#define IAVF_CLIENT_MAX_USER_PRIORITY	8
-/* Struct to hold Client QoS */
-struct iavf_qos_params {
-	struct iavf_prio_qos_params prio_qos[IAVF_CLIENT_MAX_USER_PRIORITY];
-};
-
-struct iavf_params {
-	struct iavf_qos_params qos;
-	u16 mtu;
-	u16 link_up; /* boolean */
-};
-
-/* Structure to hold LAN device info for a client device */
-struct iavf_info {
-	struct iavf_client_version version;
-	u8 lanmac[6];
-	struct net_device *netdev;
-	struct pci_dev *pcidev;
-	u8 __iomem *hw_addr;
-	u8 fid;	/* function id, PF id or VF id */
-#define IAVF_CLIENT_FTYPE_PF 0
-#define IAVF_CLIENT_FTYPE_VF 1
-	u8 ftype; /* function type, PF or VF */
-	void *vf; /* cast to iavf_adapter */
-
-	/* All L2 params that could change during the life span of the device
-	 * and needs to be communicated to the client when they change
-	 */
-	struct iavf_params params;
-	struct iavf_ops *ops;
-
-	u16 msix_count;	 /* number of msix vectors*/
-	/* Array down below will be dynamically allocated based on msix_count */
-	struct msix_entry *msix_entries;
-	u16 itr_index; /* Which ITR index the PE driver is suppose to use */
-};
-
-struct iavf_ops {
-	/* setup_q_vector_list enables queues with a particular vector */
-	int (*setup_qvlist)(struct iavf_info *ldev, struct iavf_client *client,
-			    struct iavf_qvlist_info *qv_info);
-
-	u32 (*virtchnl_send)(struct iavf_info *ldev, struct iavf_client *client,
-			     u8 *msg, u16 len);
-
-	/* If the PE Engine is unresponsive, RDMA driver can request a reset.*/
-	void (*request_reset)(struct iavf_info *ldev,
-			      struct iavf_client *client);
-};
-
-struct iavf_client_ops {
-	/* Should be called from register_client() or whenever the driver is
-	 * ready to create a specific client instance.
-	 */
-	int (*open)(struct iavf_info *ldev, struct iavf_client *client);
-
-	/* Should be closed when netdev is unavailable or when unregister
-	 * call comes in. If the close happens due to a reset, set the reset
-	 * bit to true.
-	 */
-	void (*close)(struct iavf_info *ldev, struct iavf_client *client,
-		      bool reset);
-
-	/* called when some l2 managed parameters changes - mss */
-	void (*l2_param_change)(struct iavf_info *ldev,
-				struct iavf_client *client,
-				struct iavf_params *params);
-
-	/* called when a message is received from the PF */
-	int (*virtchnl_receive)(struct iavf_info *ldev,
-				struct iavf_client *client,
-				u8 *msg, u16 len);
-};
-
-/* Client device */
-struct iavf_client_instance {
-	struct list_head list;
-	struct iavf_info lan_info;
-	struct iavf_client *client;
-	unsigned long  state;
-};
-
-struct iavf_client {
-	struct list_head list;		/* list of registered clients */
-	char name[IAVF_CLIENT_STR_LENGTH];
-	struct iavf_client_version version;
-	unsigned long state;		/* client state */
-	atomic_t ref_cnt;  /* Count of all the client devices of this kind */
-	u32 flags;
-#define IAVF_CLIENT_FLAGS_LAUNCH_ON_PROBE	BIT(0)
-#define IAVF_TX_FLAGS_NOTIFY_OTHER_EVENTS	BIT(2)
-	u8 type;
-#define IAVF_CLIENT_RDMA 0
-	struct iavf_client_ops *ops;	/* client ops provided by the client */
-};
-
-/* used by clients */
-int iavf_register_client(struct iavf_client *client);
-int iavf_unregister_client(struct iavf_client *client);
-#endif /* _IAVF_CLIENT_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 791517cafc3c..2d4022f11929 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3,7 +3,6 @@
 
 #include "iavf.h"
 #include "iavf_prototype.h"
-#include "iavf_client.h"
 /* All iavf tracepoints are defined by the include below, which must
  * be included exactly once across the whole kernel with
  * CREATE_TRACE_POINTS defined
@@ -1286,8 +1285,6 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
 	iavf_napi_enable_all(adapter);
 
 	adapter->aq_required |= IAVF_FLAG_AQ_ENABLE_QUEUES;
-	if (CLIENT_ENABLED(adapter))
-		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_OPEN;
 	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 }
 
@@ -2711,12 +2708,6 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	adapter->link_up = false;
 	netif_tx_stop_all_queues(netdev);
 
-	if (CLIENT_ALLOWED(adapter)) {
-		err = iavf_lan_add_device(adapter);
-		if (err)
-			dev_info(&pdev->dev, "Failed to add VF to client API service list: %d\n",
-				 err);
-	}
 	dev_info(&pdev->dev, "MAC address: %pM\n", adapter->hw.mac.addr);
 	if (netdev->features & NETIF_F_GRO)
 		dev_info(&pdev->dev, "GRO is enabled\n");
@@ -2913,7 +2904,6 @@ static void iavf_watchdog_task(struct work_struct *work)
 		return;
 	}
 
-	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
 	if (adapter->state >= __IAVF_DOWN)
@@ -3024,15 +3014,6 @@ static void iavf_reset_task(struct work_struct *work)
 		return;
 	}
 
-	mutex_lock(&adapter->client_lock);
-	if (CLIENT_ENABLED(adapter)) {
-		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
-				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
-				    IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS |
-				    IAVF_FLAG_SERVICE_CLIENT_REQUESTED);
-		cancel_delayed_work_sync(&adapter->client_task);
-		iavf_notify_client_close(&adapter->vsi, true);
-	}
 	iavf_misc_irq_disable(adapter);
 	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
 		adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
@@ -3076,7 +3057,6 @@ static void iavf_reset_task(struct work_struct *work)
 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
 			reg_val);
 		iavf_disable_vf(adapter);
-		mutex_unlock(&adapter->client_lock);
 		mutex_unlock(&adapter->crit_lock);
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
@@ -3215,7 +3195,6 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
 	wake_up(&adapter->reset_waitqueue);
-	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
 	return;
@@ -3226,7 +3205,6 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 	iavf_disable_vf(adapter);
 
-	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 }
@@ -3325,48 +3303,6 @@ static void iavf_adminq_task(struct work_struct *work)
 	iavf_misc_irq_enable(adapter);
 }
 
-/**
- * iavf_client_task - worker thread to perform client work
- * @work: pointer to work_struct containing our data
- *
- * This task handles client interactions. Because client calls can be
- * reentrant, we can't handle them in the watchdog.
- **/
-static void iavf_client_task(struct work_struct *work)
-{
-	struct iavf_adapter *adapter =
-		container_of(work, struct iavf_adapter, client_task.work);
-
-	/* If we can't get the client bit, just give up. We'll be rescheduled
-	 * later.
-	 */
-
-	if (!mutex_trylock(&adapter->client_lock))
-		return;
-
-	if (adapter->flags & IAVF_FLAG_SERVICE_CLIENT_REQUESTED) {
-		iavf_client_subtask(adapter);
-		adapter->flags &= ~IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
-		goto out;
-	}
-	if (adapter->flags & IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS) {
-		iavf_notify_client_l2_params(&adapter->vsi);
-		adapter->flags &= ~IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS;
-		goto out;
-	}
-	if (adapter->flags & IAVF_FLAG_CLIENT_NEEDS_CLOSE) {
-		iavf_notify_client_close(&adapter->vsi, false);
-		adapter->flags &= ~IAVF_FLAG_CLIENT_NEEDS_CLOSE;
-		goto out;
-	}
-	if (adapter->flags & IAVF_FLAG_CLIENT_NEEDS_OPEN) {
-		iavf_notify_client_open(&adapter->vsi);
-		adapter->flags &= ~IAVF_FLAG_CLIENT_NEEDS_OPEN;
-	}
-out:
-	mutex_unlock(&adapter->client_lock);
-}
-
 /**
  * iavf_free_all_tx_resources - Free Tx Resources for All Queues
  * @adapter: board private structure
@@ -4299,8 +4235,6 @@ static int iavf_close(struct net_device *netdev)
 	}
 
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
-	if (CLIENT_ENABLED(adapter))
-		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
 	/* We cannot send IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS before
 	 * IAVF_FLAG_AQ_DISABLE_QUEUES because in such case there is rtnl
 	 * deadlock with adminq_task() until iavf_close timeouts. We must send
@@ -4369,10 +4303,6 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
 		   netdev->mtu, new_mtu);
 	netdev->mtu = new_mtu;
-	if (CLIENT_ENABLED(adapter)) {
-		iavf_notify_client_l2_params(&adapter->vsi);
-		adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
-	}
 
 	if (netif_running(netdev)) {
 		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
@@ -5016,7 +4946,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 * and destroy them only once in remove
 	 */
 	mutex_init(&adapter->crit_lock);
-	mutex_init(&adapter->client_lock);
 	mutex_init(&hw->aq.asq_mutex);
 	mutex_init(&hw->aq.arq_mutex);
 
@@ -5036,7 +4965,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 	INIT_WORK(&adapter->finish_config, iavf_finish_config);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
-	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
 	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
 
@@ -5147,7 +5075,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	struct iavf_mac_filter *f, *ftmp;
 	struct net_device *netdev;
 	struct iavf_hw *hw;
-	int err;
 
 	netdev = adapter->netdev;
 	hw = &adapter->hw;
@@ -5181,13 +5108,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	if (netdev->reg_state == NETREG_REGISTERED)
 		unregister_netdev(netdev);
 
-	if (CLIENT_ALLOWED(adapter)) {
-		err = iavf_lan_del_device(adapter);
-		if (err)
-			dev_warn(&pdev->dev, "Failed to delete client device: %d\n",
-				 err);
-	}
-
 	mutex_lock(&adapter->crit_lock);
 	dev_info(&adapter->pdev->dev, "Removing device\n");
 	iavf_change_state(adapter, __IAVF_REMOVE);
@@ -5205,7 +5125,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->adminq_task);
-	cancel_delayed_work_sync(&adapter->client_task);
 
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
@@ -5223,7 +5142,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	/* destroy the locks only once, here */
 	mutex_destroy(&hw->aq.arq_mutex);
 	mutex_destroy(&hw->aq.asq_mutex);
-	mutex_destroy(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 	mutex_destroy(&adapter->crit_lock);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 82b84a93bcc8..64c4443dbef9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -3,7 +3,6 @@
 
 #include "iavf.h"
 #include "iavf_prototype.h"
-#include "iavf_client.h"
 
 /**
  * iavf_send_pf_msg
@@ -2309,19 +2308,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		if (v_opcode != adapter->current_op)
 			return;
 		break;
-	case VIRTCHNL_OP_RDMA:
-		/* Gobble zero-length replies from the PF. They indicate that
-		 * a previous message was received OK, and the client doesn't
-		 * care about that.
-		 */
-		if (msglen && CLIENT_ENABLED(adapter))
-			iavf_notify_client_message(&adapter->vsi, msg, msglen);
-		break;
-
-	case VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP:
-		adapter->client_pending &=
-				~(BIT(VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP));
-		break;
 	case VIRTCHNL_OP_GET_RSS_HENA_CAPS: {
 		struct virtchnl_rss_hena *vrh = (struct virtchnl_rss_hena *)msg;
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

