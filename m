Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5029364C183
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 01:52:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 455EF41827;
	Wed, 14 Dec 2022 00:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 455EF41827
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670979177;
	bh=K96KpfGD9s8yJGM1+XPTZQov1cXRLAwhKbYEXAJObl0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=INCDsPIZslehk1/A4Mwxv/CGNocUk9GX10ejWYXPC/yNUtXeYLaMQAlK1tY+Iqsu3
	 IBiNjCq4he+a25QaT26xYQkmrbPUkSeNtTrWdDTLCOT3cIO2w56mJSHUGGKbOaMKd0
	 73eyTxILuWhG6rigTgNP9qdHib3mP8qgjeMph7ILMcZHDfphozIWF0OGfpvPhSQreb
	 c/BTXhucLshncEd4Q97IMwuHvT5r8ftK1ZhRw/eK6udEUVsbGz6grIPFYm42XL+DDw
	 oFykpglWrXjbbXW55xZKCdwxKiin0PaSoU7KwGjH+QvfSWp08ws4FmpUNWgY3Nsr/x
	 p92BC4iOKiIfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muyZZdv9hLnQ; Wed, 14 Dec 2022 00:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 827C341822;
	Wed, 14 Dec 2022 00:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 827C341822
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1066E1BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 00:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE05541822
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 00:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE05541822
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2576CTJFXRR9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 00:52:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D95154181E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D95154181E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 00:52:48 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-655-V-xK0lmqNIal9YRnZV9f1A-1; Tue, 13 Dec 2022 19:52:43 -0500
X-MC-Unique: V-xK0lmqNIal9YRnZV9f1A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71DD9185A78F;
 Wed, 14 Dec 2022 00:52:43 +0000 (UTC)
Received: from toolbox.redhat.com (ovpn-192-47.brq.redhat.com [10.40.192.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 03879492B00;
 Wed, 14 Dec 2022 00:52:41 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Dec 2022 01:52:37 +0100
Message-Id: <20221214005237.379862-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1670979167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=qBETJsh93cA7JHaMpjULYwPVQpE1wlHxl2EHA7b+Oc4=;
 b=hjjcfu9Zo0/V0thNr9n1rrsg5xGoRwatQtoQ5xTz2A359RfZI6DXPMzI2y9t8EeyfPHi/N
 INxkRvCa7GDj8WVhAR96KpMdE3ngh4RHYgrQcyWrDy5aZpakOrkY/R3rPYHuOCDqDFQFmQ
 mgHQDakMvqf8k7FJdokaTUcW5BqXZaQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hjjcfu9Z
Subject: [Intel-wired-lan] [PATCH net] iavf: fix temporary deadlock and
 failure to set MAC address
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We are seeing an issue where setting the MAC address on iavf fails with
EAGAIN after the 2.5s timeout expires in iavf_set_mac().

There is the following deadlock scenario:

iavf_set_mac(), holding rtnl_lock, waits on:
  iavf_watchdog_task (within iavf_wq) to send a message to the PF,
 and
  iavf_adminq_task (within iavf_wq) to receive a response from the PF.
In this adapter state (>=__IAVF_DOWN), these tasks do not need to take
rtnl_lock, but iavf_wq is a global single-threaded workqueue, so they
may get stuck waiting for another adapter's iavf_watchdog_task to run
iavf_init_config_adapter(), which does take rtnl_lock.

The deadlock resolves itself by the timeout in iavf_set_mac(),
which results in EAGAIN returned to userspace.

Let's break the deadlock loop by changing iavf_wq into a per-adapter
workqueue, so that one adapter's tasks are not blocked by another's.

Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
Co-developed-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 10 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 84 +++++++++----------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +-
 4 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 0d1bab4ac1b0..2a9f1eeeb701 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -249,6 +249,7 @@ struct iavf_cloud_filter {
 
 /* board specific private data structure */
 struct iavf_adapter {
+	struct workqueue_struct *wq;
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
@@ -459,7 +460,6 @@ struct iavf_device {
 
 /* needed by iavf_ethtool.c */
 extern char iavf_driver_name[];
-extern struct workqueue_struct *iavf_wq;
 
 static inline const char *iavf_state_str(enum iavf_state_t state)
 {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index a056e1545615..83cfc54a4706 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -532,7 +532,7 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
 	if (changed_flags & IAVF_FLAG_LEGACY_RX) {
 		if (netif_running(netdev)) {
 			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-			queue_work(iavf_wq, &adapter->reset_task);
+			queue_work(adapter->wq, &adapter->reset_task);
 		}
 	}
 
@@ -672,7 +672,7 @@ static int iavf_set_ringparam(struct net_device *netdev,
 
 	if (netif_running(netdev)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
+		queue_work(adapter->wq, &adapter->reset_task);
 	}
 
 	return 0;
@@ -1433,7 +1433,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
 
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 
 ret:
 	if (err && fltr)
@@ -1474,7 +1474,7 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
 
 	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
-		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 
 	return err;
 }
@@ -1658,7 +1658,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	spin_unlock_bh(&adapter->adv_rss_lock);
 
 	if (!err)
-		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 
 	mutex_unlock(&adapter->crit_lock);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f71e132ede09..02b68624b6ba 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -49,7 +49,6 @@ MODULE_DESCRIPTION("Intel(R) Ethernet Adaptive Virtual Function Network Driver")
 MODULE_LICENSE("GPL v2");
 
 static const struct net_device_ops iavf_netdev_ops;
-struct workqueue_struct *iavf_wq;
 
 int iavf_status_to_errno(enum iavf_status status)
 {
@@ -277,7 +276,7 @@ void iavf_schedule_reset(struct iavf_adapter *adapter)
 	if (!(adapter->flags &
 	      (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED))) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
+		queue_work(adapter->wq, &adapter->reset_task);
 	}
 }
 
@@ -291,7 +290,7 @@ void iavf_schedule_reset(struct iavf_adapter *adapter)
 void iavf_schedule_request_stats(struct iavf_adapter *adapter)
 {
 	adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_STATS;
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 }
 
 /**
@@ -411,7 +410,7 @@ static irqreturn_t iavf_msix_aq(int irq, void *data)
 
 	if (adapter->state != __IAVF_REMOVE)
 		/* schedule work on the private workqueue */
-		queue_work(iavf_wq, &adapter->adminq_task);
+		queue_work(adapter->wq, &adapter->adminq_task);
 
 	return IRQ_HANDLED;
 }
@@ -1034,7 +1033,7 @@ int iavf_replace_primary_mac(struct iavf_adapter *adapter,
 
 	/* schedule the watchdog task to immediately process the request */
 	if (f) {
-		queue_work(iavf_wq, &adapter->watchdog_task.work);
+		queue_work(adapter->wq, &adapter->watchdog_task.work);
 		return 0;
 	}
 	return -ENOMEM;
@@ -1257,7 +1256,7 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
 	adapter->aq_required |= IAVF_FLAG_AQ_ENABLE_QUEUES;
 	if (CLIENT_ENABLED(adapter))
 		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_OPEN;
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 }
 
 /**
@@ -1414,7 +1413,7 @@ void iavf_down(struct iavf_adapter *adapter)
 		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
 	}
 
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 }
 
 /**
@@ -2248,7 +2247,7 @@ iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 
 	if (aq_required) {
 		adapter->aq_required |= aq_required;
-		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
+		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 	}
 }
 
@@ -2700,7 +2699,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		mutex_unlock(&adapter->crit_lock);
-		queue_work(iavf_wq, &adapter->reset_task);
+		queue_work(adapter->wq, &adapter->reset_task);
 		return;
 	}
 
@@ -2708,31 +2707,31 @@ static void iavf_watchdog_task(struct work_struct *work)
 	case __IAVF_STARTUP:
 		iavf_startup(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(30));
 		return;
 	case __IAVF_INIT_VERSION_CHECK:
 		iavf_init_version_check(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(30));
 		return;
 	case __IAVF_INIT_GET_RESOURCES:
 		iavf_init_get_resources(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
 	case __IAVF_INIT_EXTENDED_CAPS:
 		iavf_init_process_extended_caps(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
 	case __IAVF_INIT_CONFIG_ADAPTER:
 		iavf_init_config_adapter(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(1));
 		return;
 	case __IAVF_INIT_FAILED:
@@ -2751,14 +2750,14 @@ static void iavf_watchdog_task(struct work_struct *work)
 			adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 			iavf_shutdown_adminq(hw);
 			mutex_unlock(&adapter->crit_lock);
-			queue_delayed_work(iavf_wq,
+			queue_delayed_work(adapter->wq,
 					   &adapter->watchdog_task, (5 * HZ));
 			return;
 		}
 		/* Try again from failed step*/
 		iavf_change_state(adapter, adapter->last_state);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ);
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task, HZ);
 		return;
 	case __IAVF_COMM_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
@@ -2789,13 +2788,14 @@ static void iavf_watchdog_task(struct work_struct *work)
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq,
+		queue_delayed_work(adapter->wq,
 				   &adapter->watchdog_task,
 				   msecs_to_jiffies(10));
 		return;
 	case __IAVF_RESETTING:
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
+				   HZ * 2);
 		return;
 	case __IAVF_DOWN:
 	case __IAVF_DOWN_PENDING:
@@ -2834,9 +2834,9 @@ static void iavf_watchdog_task(struct work_struct *work)
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
-		queue_work(iavf_wq, &adapter->reset_task);
+		queue_work(adapter->wq, &adapter->reset_task);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq,
+		queue_delayed_work(adapter->wq,
 				   &adapter->watchdog_task, HZ * 2);
 		return;
 	}
@@ -2845,12 +2845,13 @@ static void iavf_watchdog_task(struct work_struct *work)
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
 	if (adapter->state >= __IAVF_DOWN)
-		queue_work(iavf_wq, &adapter->adminq_task);
+		queue_work(adapter->wq, &adapter->adminq_task);
 	if (adapter->aq_required)
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(20));
 	else
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
+				   HZ * 2);
 }
 
 /**
@@ -2952,7 +2953,7 @@ static void iavf_reset_task(struct work_struct *work)
 	 */
 	if (!mutex_trylock(&adapter->crit_lock)) {
 		if (adapter->state != __IAVF_REMOVE)
-			queue_work(iavf_wq, &adapter->reset_task);
+			queue_work(adapter->wq, &adapter->reset_task);
 
 		goto reset_finish;
 	}
@@ -3116,7 +3117,7 @@ static void iavf_reset_task(struct work_struct *work)
 	bitmap_clear(adapter->vsi.active_cvlans, 0, VLAN_N_VID);
 	bitmap_clear(adapter->vsi.active_svlans, 0, VLAN_N_VID);
 
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 2);
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 2);
 
 	/* We were running when the reset started, so we need to restore some
 	 * state here.
@@ -3208,7 +3209,7 @@ static void iavf_adminq_task(struct work_struct *work)
 		if (adapter->state == __IAVF_REMOVE)
 			return;
 
-		queue_work(iavf_wq, &adapter->adminq_task);
+		queue_work(adapter->wq, &adapter->adminq_task);
 		goto out;
 	}
 
@@ -4349,7 +4350,7 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 
 	if (netif_running(netdev)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
+		queue_work(adapter->wq, &adapter->reset_task);
 	}
 
 	return 0;
@@ -4898,6 +4899,13 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw = &adapter->hw;
 	hw->back = adapter;
 
+	adapter->wq = alloc_ordered_workqueue("%s", WQ_MEM_RECLAIM,
+					      iavf_driver_name);
+	if (!adapter->wq) {
+		err = -ENOMEM;
+		goto err_alloc_wq;
+	}
+
 	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
 	iavf_change_state(adapter, __IAVF_STARTUP);
 
@@ -4942,7 +4950,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
-	queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
 
 	/* Setup the wait queue for indicating transition to down status */
@@ -4954,6 +4962,8 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return 0;
 
 err_ioremap:
+	destroy_workqueue(adapter->wq);
+err_alloc_wq:
 	free_netdev(netdev);
 err_alloc_etherdev:
 	pci_disable_pcie_error_reporting(pdev);
@@ -5023,7 +5033,7 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 		return err;
 	}
 
-	queue_work(iavf_wq, &adapter->reset_task);
+	queue_work(adapter->wq, &adapter->reset_task);
 
 	netif_device_attach(adapter->netdev);
 
@@ -5170,6 +5180,8 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 	spin_unlock_bh(&adapter->adv_rss_lock);
 
+	destroy_workqueue(adapter->wq);
+
 	free_netdev(netdev);
 
 	pci_disable_pcie_error_reporting(pdev);
@@ -5202,18 +5214,7 @@ static int __init iavf_init_module(void)
 
 	pr_info("%s\n", iavf_copyright);
 
-	iavf_wq = alloc_workqueue("%s", WQ_UNBOUND | WQ_MEM_RECLAIM, 1,
-				  iavf_driver_name);
-	if (!iavf_wq) {
-		pr_err("%s: Failed to create workqueue\n", iavf_driver_name);
-		return -ENOMEM;
-	}
-
-	ret = pci_register_driver(&iavf_driver);
-	if (ret)
-		destroy_workqueue(iavf_wq);
-
-	return ret;
+	return pci_register_driver(&iavf_driver);
 }
 
 module_init(iavf_init_module);
@@ -5227,7 +5228,6 @@ module_init(iavf_init_module);
 static void __exit iavf_exit_module(void)
 {
 	pci_unregister_driver(&iavf_driver);
-	destroy_workqueue(iavf_wq);
 }
 
 module_exit(iavf_exit_module);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 24a701fd140e..0752fd67c96e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1952,7 +1952,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING)) {
 				adapter->flags |= IAVF_FLAG_RESET_PENDING;
 				dev_info(&adapter->pdev->dev, "Scheduling reset task\n");
-				queue_work(iavf_wq, &adapter->reset_task);
+				queue_work(adapter->wq, &adapter->reset_task);
 			}
 			break;
 		default:
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
