Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFA864E401
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 23:51:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FD3841853;
	Thu, 15 Dec 2022 22:51:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FD3841853
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671144697;
	bh=WB41TtyPhDkjZq0Y2HaBsYiPDTVYDHHYng3aBvJ5Suw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7rhKMSswrQkU3Ho1q2UJkvEYeMYcKZr0kuj36Dd8od8jjaMbPA04kHsa+YkNwkMXK
	 kc0/bRBMdiSrcIMOidCxkEfacoAf1wb4jFdtqjhKzWxgA2H87HFhlDGN2ayJrAGqes
	 HfiqVZqOCm0WN7Yxw6WtXyiucYRGzVUoMHYEl/WTss9CtqTl9NTRDErwijxV9LM4l/
	 U01RFR27hTLoInBNafGwutV0PMgusBgbFLhdPdHBXtQknkx4iUQb6rYas392ySHuuG
	 PqPN6FQ1fLQ7C70yVW0Uf7/OyufTOCVXVUubut6JIrchgQ+r4xCVRIz0vSkZ2ZQ7bG
	 aLC9G//I+K8wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sRYCIvf6eT3U; Thu, 15 Dec 2022 22:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E09C41797;
	Thu, 15 Dec 2022 22:51:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E09C41797
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E83E1BF335
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 22:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54F4141797
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 22:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54F4141797
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gL3gjBjI8yYd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 22:51:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 260C341740
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 260C341740
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 22:51:29 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-n_RPPt5kN-mHhzjDCvnNDA-1; Thu, 15 Dec 2022 17:51:17 -0500
X-MC-Unique: n_RPPt5kN-mHhzjDCvnNDA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D37C03806116;
 Thu, 15 Dec 2022 22:51:16 +0000 (UTC)
Received: from toolbox.redhat.com (ovpn-192-38.brq.redhat.com [10.40.192.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C88F62166B29;
 Thu, 15 Dec 2022 22:51:15 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Dec 2022 23:50:49 +0100
Message-Id: <20221215225049.508812-3-mschmidt@redhat.com>
In-Reply-To: <20221215225049.508812-1-mschmidt@redhat.com>
References: <20221215225049.508812-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1671144688;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dsHJetG27yiI6FUr4kvtQJoD3YgYVHON/vF/PBZ7EyM=;
 b=bZfFNeKW33Ui7KuIZnrZ898YHO8VW8Y3W5zH5xg9YnO2XKBrbPuWo67hy4CaUjebzjXn2X
 GjEYftMdP25UZ5SEHTli4DUzq+4FlEf/kiY7zKm8nKjMnBEajDXDfoW0J5EN+FGiLJl8n8
 7sCO5KJokif4BvoF9445JlHm5B0E5fw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bZfFNeKW
Subject: [Intel-wired-lan] [PATCH net 2/2] iavf: avoid taking rtnl_lock in
 adminq_task
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Patryk Piotrowski <patryk.piotrowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

adminq_task processes virtchnl completions. iavf_set_mac() needs
virtchnl communication to progress while it holds rtnl_lock.
So adminq_task must not take rtnl_lock.

Do the handling of netdev features updates in a new work, features_task.
The new work cannot run on the same ordered workqueue as adminq_task.
The system-wide system_unbound_wq will do.

iavf_set_queue_vlan_tag_loc(), which iterates through queues, must run
under crit_lock to prevent a concurrent iavf_free_queues() possibly
called from watchdog_task or reset_task.

IAVF_FLAG_SETUP_NETDEV_FEATURES becomes unnecessary. features_task can
be queued directly from iavf_virtchnl_completion().

Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 49 ++++++++++++-------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  6 ++-
 3 files changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 2a9f1eeeb701..7dfd6dac74e4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -252,6 +252,7 @@ struct iavf_adapter {
 	struct workqueue_struct *wq;
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
+	struct work_struct features_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
 	wait_queue_head_t vc_waitqueue;
@@ -297,7 +298,6 @@ struct iavf_adapter {
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
-#define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
 #define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e7380f1b4acc..e53f5262c047 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3187,6 +3187,35 @@ static void iavf_reset_task(struct work_struct *work)
 	rtnl_unlock();
 }
 
+/**
+ * iavf_features_task - update netdev features after caps negotiation
+ * @work: pointer to work_struct
+ *
+ * After negotiating VLAN caps with the PF, we need to update our netdev
+ * features, but this requires rtnl_lock. We cannot take it directly in
+ * adminq_task - we might deadlock with iavf_set_mac, which waits on
+ * virtchnl communication while holding rtnl_lock.
+ * So the features are updated here, using a different workqueue.
+ **/
+static void iavf_features_task(struct work_struct *work)
+{
+	struct iavf_adapter *adapter = container_of(work,
+						    struct iavf_adapter,
+						    features_task);
+	struct net_device *netdev = adapter->netdev;
+
+	rtnl_lock();
+	netdev_update_features(netdev);
+	rtnl_unlock();
+	/* Request VLAN offload settings */
+	if (VLAN_V2_ALLOWED(adapter))
+		iavf_set_vlan_offload_features(adapter, 0, netdev->features);
+
+	mutex_lock(&adapter->crit_lock);
+	iavf_set_queue_vlan_tag_loc(adapter);
+	mutex_unlock(&adapter->crit_lock);
+}
+
 /**
  * iavf_adminq_task - worker thread to clean the admin queue
  * @work: pointer to work_struct containing our data
@@ -3233,24 +3262,6 @@ static void iavf_adminq_task(struct work_struct *work)
 	} while (pending);
 	mutex_unlock(&adapter->crit_lock);
 
-	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES)) {
-		if (adapter->netdev_registered ||
-		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
-			struct net_device *netdev = adapter->netdev;
-
-			rtnl_lock();
-			netdev_update_features(netdev);
-			rtnl_unlock();
-			/* Request VLAN offload settings */
-			if (VLAN_V2_ALLOWED(adapter))
-				iavf_set_vlan_offload_features
-					(adapter, 0, netdev->features);
-
-			iavf_set_queue_vlan_tag_loc(adapter);
-		}
-
-		adapter->flags &= ~IAVF_FLAG_SETUP_NETDEV_FEATURES;
-	}
 	if ((adapter->flags &
 	     (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED)) ||
 	    adapter->state == __IAVF_RESETTING)
@@ -4948,6 +4959,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
+	INIT_WORK(&adapter->features_task, iavf_features_task);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
 	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
@@ -5115,6 +5127,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->adminq_task);
 	cancel_delayed_work_sync(&adapter->client_task);
+	cancel_work_sync(&adapter->features_task);
 
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 0752fd67c96e..a644ab3804de 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2225,7 +2225,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 				     sizeof(adapter->vlan_v2_caps)));
 
 		iavf_process_config(adapter);
-		adapter->flags |= IAVF_FLAG_SETUP_NETDEV_FEATURES;
 		was_mac_changed = !ether_addr_equal(netdev->dev_addr,
 						    adapter->hw.mac.addr);
 
@@ -2266,6 +2265,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER |
 			aq_required;
+
+		if (adapter->netdev_registered ||
+		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+			queue_work(system_unbound_wq,
+				   &adapter->features_task);
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
