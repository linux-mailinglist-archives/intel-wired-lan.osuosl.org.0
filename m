Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E321B6FEF78
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 11:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84A42700DC;
	Thu, 11 May 2023 09:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84A42700DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683799037;
	bh=kXYBpMXJ7PZ12Sr9Xf3lH70C4lcOC6o92WhxuXg7RlQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VwTk9abSrN6UBtb75R8gMYalN/FUKgeoaXfaRkJT0iHyYSb4Qy2ZcRN03aGN8sNZe
	 9KzvaDerfnO9uaHmO8/HTfY6S7y+50iahbJzkXsc16Atjj7AVCOrwcczwXCluGDTeL
	 6AeJhXDkwEqa4++fDfj4Si5d0JYCQ0dxA8elouhfyKJws74Ri+cez+BPTSTXDzZkCm
	 hYQyqD4yEX40sWkcpOFdy9Oa4Ey3OAqn8SfAr85OjvvhiWx7dqLiOEfvLAFzW9VAm2
	 eNlUqNXkg9NkP8BKvMCX0QjwtF5yBoxVZD41CT4WyKzVufvobdS5cnfez1cqCHHJDS
	 gIpRVnE32drEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F_6B1MS20wXo; Thu, 11 May 2023 09:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBCC6700C4;
	Thu, 11 May 2023 09:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBCC6700C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E39D1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5FA242BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5FA242BEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikGuP09yfrm0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 09:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4E3742BE3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4E3742BE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436785518"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436785518"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="764677378"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="764677378"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2023 02:56:59 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 11:56:25 +0200
Message-Id: <20230511095628.17907-2-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230511095628.17907-1-kamil.maziarz@intel.com>
References: <20230511095628.17907-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799020; x=1715335020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2+soudoHiCend9JnESIu+POp+Cc0Vgsk2yDFQShcjI=;
 b=M6I1yc1nalplMt/X9TCokrvA+dCTQefcAx77eIPggAEATa0e66XwdybB
 yIb4KZ+nDkZvF9KVrJvoAxaOSue43pzzb/CCc8mVqlV9zT1PLMBMR06L1
 dcmsFJSMdKC+wDC0MXeDPCp936zgTsfr7+IiGkae09pMogfRs67Fg7wxS
 7tMPQ49qz4sn1jY/Sq4yEU2C+BKri/6uTpkYsV8f4kRTeUz+LhVT+/RHR
 sNqKc1gdhAQnwFvwDMxsWunrl4NfNhetqeQ1USWkuqbFIVILz6pC07awL
 CcDLXiOaQgMkH1zKawtRgOyuwmHt9FxViDJAuuAG1q2oFu7oWE5ZZiSwP
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M6I1yc1n
Subject: [Intel-wired-lan] [PATCH iwl-net v6 1/4] iavf: Wait for reset in
 callbacks which trigger it
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

There was a fail when trying to add the interface to bonding
right after changing the MTU on the interface. It was caused
by bonding interface unable to open the interface due to
interface being in __RESETTING state because of MTU change.

Add new reset_waitqueue to indicate that reset has finished.
Add waiting for reset to finish in .

Add waiting for reset to finish in callbacks which trigger hw reset:
iavf_set_priv_flags(), iavf_change_mtu() and iavf_set_ringparam().
We choose 5 sec for the timeout waiting time because the same interval
is used in oot where waiting

Add a function iavf_wait_for_reset() to reuse waiting for reset code and
use it also in iavf_set_channels(), which already waits for reset.
We don't use error handling in iavf_set_channels() as this could
cause the device to be in incorrect state if the reset was scheduled
but hit timeout or the waitng function was interrupted by a signal.

We use a 5000ms timeout period because on Hyper-V based systems,
this operation takes around 3000-4000ms. In normal circumstances,
it doesn't take more than 500ms to complete.

Fixes: aa626da947e9 ("iavf: Detach device during reset task")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v1->v3: changes were done internally
v4: fixed SOB's
v5: changed the way we wake up the reset_waitqueue to make sure that reset is woken up
v6: no changes
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 ++++++-----
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 51 ++++++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  1 +
 4 files changed, 68 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9abaff1f2aff..c51b9ed4dc29 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -257,6 +257,7 @@ struct iavf_adapter {
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
+	wait_queue_head_t reset_waitqueue;
 	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
@@ -591,5 +592,6 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
 void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
+int iavf_wait_for_reset(struct iavf_adapter *adapter);
 int iavf_lock_timeout(struct mutex *lock, unsigned int msecs);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 6f171d1d85b7..b7141c2a941d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -484,6 +484,7 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 orig_flags, new_flags, changed_flags;
+	int ret = 0;
 	u32 i;
 
 	orig_flags = READ_ONCE(adapter->flags);
@@ -533,10 +534,13 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
 		if (netif_running(netdev)) {
 			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 			queue_work(adapter->wq, &adapter->reset_task);
+			ret = iavf_wait_for_reset(adapter);
+			if (ret)
+				netdev_warn(netdev, "Changing private flags timeout or interrupted waiting for reset");
 		}
 	}
 
-	return 0;
+	return ret;
 }
 
 /**
@@ -627,6 +631,7 @@ static int iavf_set_ringparam(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 new_rx_count, new_tx_count;
+	int ret = 0;
 
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
@@ -673,9 +678,12 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	if (netif_running(netdev)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 		queue_work(adapter->wq, &adapter->reset_task);
+		ret = iavf_wait_for_reset(adapter);
+		if (ret)
+			netdev_warn(netdev, "Changing ring parameters timeout or interrupted waiting for reset");
 	}
 
-	return 0;
+	return ret;
 }
 
 /**
@@ -1830,7 +1838,7 @@ static int iavf_set_channels(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 num_req = ch->combined_count;
-	int i;
+	int ret = 0;
 
 	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
 	    adapter->num_tc) {
@@ -1854,20 +1862,11 @@ static int iavf_set_channels(struct net_device *netdev,
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_schedule_reset(adapter);
 
-	/* wait for the reset is done */
-	for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
-		msleep(IAVF_RESET_WAIT_MS);
-		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
-			continue;
-		break;
-	}
-	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
-		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
-		adapter->num_active_queues = num_req;
-		return -EOPNOTSUPP;
-	}
+	ret = iavf_wait_for_reset(adapter);
+	if (ret)
+		netdev_warn(netdev, "Changing channel count timeout or interrupted waiting for reset");
 
-	return 0;
+	return ret;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2de4baff4c20..bc17ea34bb73 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -166,6 +166,45 @@ static struct iavf_adapter *iavf_pdev_to_adapter(struct pci_dev *pdev)
 	return netdev_priv(pci_get_drvdata(pdev));
 }
 
+/**
+ * iavf_is_reset_in_progress - Check if a reset is in progress
+ * @adapter: board private structure
+ */
+static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter)
+{
+	if (adapter->state == __IAVF_RESETTING ||
+	    adapter->flags & (IAVF_FLAG_RESET_PENDING |
+			      IAVF_FLAG_RESET_NEEDED))
+		return true;
+
+	return false;
+}
+
+/**
+ * iavf_wait_for_reset - Wait for reset to finish.
+ * @adapter: board private structure
+ *
+ * Returns 0 if reset finished successfully, negative on timeout or interrupt.
+ */
+int iavf_wait_for_reset(struct iavf_adapter *adapter)
+{
+	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
+					!iavf_is_reset_in_progress(adapter),
+					msecs_to_jiffies(5000));
+
+	/* If ret < 0 then it means wait was interrupted.
+	 * If ret == 0 then it means we got a timeout while waiting
+	 * for reset to finish.
+	 * If ret > 0 it means reset has finished.
+	 */
+	if (ret > 0)
+		return 0;
+	else if (ret < 0)
+		return -EINTR;
+	else
+		return -EBUSY;
+}
+
 /**
  * iavf_allocate_dma_mem_d - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
@@ -3166,6 +3205,7 @@ static void iavf_reset_task(struct work_struct *work)
 
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
+	wake_up(&adapter->reset_waitqueue);
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
@@ -4330,6 +4370,7 @@ static int iavf_close(struct net_device *netdev)
 static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
+	int ret = 0;
 
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
 		   netdev->mtu, new_mtu);
@@ -4342,9 +4383,14 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 	if (netif_running(netdev)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 		queue_work(adapter->wq, &adapter->reset_task);
+		ret = iavf_wait_for_reset(adapter);
+		if (ret < 0)
+			netdev_warn(netdev, "MTU change interrupted waiting for reset");
+		else if (ret)
+			netdev_warn(netdev, "MTU change timed out waiting for reset");
 	}
 
-	return 0;
+	return ret;
 }
 
 #define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
@@ -4945,6 +4991,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
+	/* Setup the wait queue for indicating transition to running state */
+	init_waitqueue_head(&adapter->reset_waitqueue);
+
 	/* Setup the wait queue for indicating virtchannel events */
 	init_waitqueue_head(&adapter->vc_waitqueue);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 7c0578b5457b..1bab896aaf40 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2285,6 +2285,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
+		wake_up(&adapter->reset_waitqueue);
 		adapter->flags &= ~IAVF_FLAG_QUEUES_DISABLED;
 		break;
 	case VIRTCHNL_OP_DISABLE_QUEUES:
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
