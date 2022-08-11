Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759E558FA5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 12:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E75D640220;
	Thu, 11 Aug 2022 10:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E75D640220
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660212150;
	bh=AcrNhQ8hQnBQpQQjxtTcrDMIuvG76c3dBOqWWsocpek=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rrBQGiJ6aXIyiY/L7kZBkCJDPJ18LgmH+8QEFUYF25s0l4DfUZXZgyxWnTEeKy5ZK
	 3sQBOn7uH53sy+e0YKXc9wBC5qCFIdMxuPMXfGcbpENqbrQ/EeG+Q3sqO1oiIsOTTx
	 YF5S+vATP63Gb/ghPVxPvKBu1nCN09HjBmua7rhjySCaMCBI2nfrM701k24swc0Hh5
	 UOAz34bl7fDHwWpVd61MIyITkYprso4h613Wvm09mumr8wdU+9e+6VPp62oJ3Df/1I
	 qkCC7fzxppSWB7gzVrlTyw7ILIfRBtNV8MMxkPNk7xn/SglRaXK/VFSDW4ZgNHH6pe
	 dDt3Rp9BMFA+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8s4Fstl6hdh; Thu, 11 Aug 2022 10:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 874C040132;
	Thu, 11 Aug 2022 10:02:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 874C040132
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A686A1BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 10:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76A0560AAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 10:02:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76A0560AAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3SXy-kYObM1a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 10:02:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FE0560A9B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2FE0560A9B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 10:02:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="271694675"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="271694675"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 03:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="665308176"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2022 03:02:13 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 12:01:22 +0200
Message-Id: <20220811100122.1536531-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660212144; x=1691748144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7evZ01KYEtSlXTI/m6947SQDO9GKDIzy+llVDBsnl2M=;
 b=nozAXkYdF8m9vYDtewvXwZeR1bQn+LDa7nasdFGF2WIW85DwxYPWUgs6
 c1CKJdTlKJpphpdxk0IxDAT9MyOItfQuoWIW1jCc9N1wR6YU73YLrlpHJ
 4A/YJ6OlHqx9taewKtkDMFsV3oCoZGL5vKV+jeIbGn6VQ2BQDOMcaeUpE
 h38CDomYo35rVhFRhIFtNtpiJBd8TLXHLW9ptr3zg6oxLVNbIcZLidrEh
 TeZ8dCbyQy/VaAniC437T+0PrGMOTZKHHhj8jfph4vm7dRGioQ4Q6GRah
 +441D+sv9v+TkMNMvm+SkzpwAg/tlcD4Z47/6lPKKYelzEbLptTyKV6GP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nozAXkYd
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix race between iavf_close
 and iavf_reset_task
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

During stress tests with adding VF to namespace and changing vf's
trust there was a race between iavf_reset_task and iavf_close.
Sometimes when IAVF_FLAG_AQ_DISABLE_QUEUES from iavf_close was sent
to PF after reset and before IAVF_AQ_GET_CONFIG was sent then PF
returns error IAVF_NOT_SUPPORTED to disable queues request and
following requests. There is need to get_config before other
aq_required will be send but iavf_close clears all flags, if
get_config was not sent before iavf_close, then it will not be send
at all.

In case when IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS was sent before
IAVF_FLAG_AQ_DISABLE_QUEUES then there was rtnl_lock deadlock
between iavf_close and iavf_adminq_task until iavf_close timeouts
and disable queues was sent after iavf_close ends.

There was also a problem with sending delete/add filters.
Sometimes when filters was not yet added to PF and in
iavf_close all filters was set to remove there might be a try
to remove nonexistent filters on PF.

Add aq_required_tmp to save aq_required flags and send them after
disable_queues will be handled. Clear flags given to iavf_down
different than IAVF_FLAG_AQ_GET_CONFIG as this flag is necessary
to sent other aq_required. Remove some flags that we don't
want to send as we are in iavf_close and we want to disable
interface. Remove filters which was not yet sent and send del
filters flags only when there are filters to remove.

Fixes: 53d0b3ae2590 ("i40evf: refactor shutdown code")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 177 ++++++++++++++++----
 1 file changed, 141 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 35dcb1ce12b6..9cfcab5e68e5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1270,66 +1270,138 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_down - Shutdown the connection processing
+ * iavf_clear_mac_vlan_filters - Remove mac and vlan filters not sent to PF
+ * yet and mark other to be removed.
  * @adapter: board private structure
- *
- * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
  **/
-void iavf_down(struct iavf_adapter *adapter)
+static void iavf_clear_mac_vlan_filters(struct iavf_adapter *adapter)
 {
-	struct net_device *netdev = adapter->netdev;
-	struct iavf_vlan_filter *vlf;
-	struct iavf_cloud_filter *cf;
-	struct iavf_fdir_fltr *fdir;
-	struct iavf_mac_filter *f;
-	struct iavf_adv_rss *rss;
-
-	if (adapter->state <= __IAVF_DOWN_PENDING)
-		return;
-
-	netif_carrier_off(netdev);
-	netif_tx_disable(netdev);
-	adapter->link_up = false;
-	iavf_napi_disable_all(adapter);
-	iavf_irq_disable(adapter);
+	struct iavf_vlan_filter *vlf, *vlftmp;
+	struct iavf_mac_filter *f, *ftmp;
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
-
 	/* clear the sync flag on all filters */
 	__dev_uc_unsync(adapter->netdev, NULL);
 	__dev_mc_unsync(adapter->netdev, NULL);
 
 	/* remove all MAC filters */
-	list_for_each_entry(f, &adapter->mac_filter_list, list) {
-		f->remove = true;
+	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list,
+				 list) {
+		if (f->add) {
+			list_del(&f->list);
+			kfree(f);
+		} else {
+			f->remove = true;
+		}
 	}
 
 	/* remove all VLAN filters */
-	list_for_each_entry(vlf, &adapter->vlan_filter_list, list) {
-		vlf->remove = true;
+	list_for_each_entry_safe(vlf, vlftmp, &adapter->vlan_filter_list,
+				 list) {
+		if (vlf->add) {
+			list_del(&vlf->list);
+			kfree(vlf);
+		} else {
+			vlf->remove = true;
+		}
 	}
-
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+}
+
+/**
+ * iavf_clear_cloud_filters - Remove cloud filters not sent to PF yet and
+ * mark other to be removed.
+ * @adapter: board private structure
+ **/
+static void iavf_clear_cloud_filters(struct iavf_adapter *adapter)
+{
+	struct iavf_cloud_filter *cf, *cftmp;
 
 	/* remove all cloud filters */
 	spin_lock_bh(&adapter->cloud_filter_list_lock);
-	list_for_each_entry(cf, &adapter->cloud_filter_list, list) {
-		cf->del = true;
+	list_for_each_entry_safe(cf, cftmp, &adapter->cloud_filter_list,
+				 list) {
+		if (cf->add) {
+			list_del(&cf->list);
+			kfree(cf);
+			adapter->num_cloud_filters--;
+		} else {
+			cf->del = true;
+		}
 	}
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
+}
+
+/**
+ * iavf_clear_fdir_filters - Remove fdir filters not sent to PF yet and mark
+ * other to be removed.
+ * @adapter: board private structure
+ **/
+static void iavf_clear_fdir_filters(struct iavf_adapter *adapter)
+{
+	struct iavf_fdir_fltr *fdir, *fdirtmp;
 
 	/* remove all Flow Director filters */
 	spin_lock_bh(&adapter->fdir_fltr_lock);
-	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
-		fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
+	list_for_each_entry_safe(fdir, fdirtmp, &adapter->fdir_list_head,
+				 list) {
+		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST) {
+			list_del(&fdir->list);
+			kfree(fdir);
+			adapter->fdir_active_fltr--;
+		} else {
+			fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
+		}
 	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
+}
+
+/**
+ * iavf_clear_adv_rss_conf - Remove adv rss conf not sent to PF yet and mark
+ * other to be removed.
+ * @adapter: board private structure
+ **/
+static void iavf_clear_adv_rss_conf(struct iavf_adapter *adapter)
+{
+	struct iavf_adv_rss *rss, *rsstmp;
 
 	/* remove all advance RSS configuration */
 	spin_lock_bh(&adapter->adv_rss_lock);
-	list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
-		rss->state = IAVF_ADV_RSS_DEL_REQUEST;
+	list_for_each_entry_safe(rss, rsstmp, &adapter->adv_rss_list_head,
+				 list) {
+		if (rss->state == IAVF_ADV_RSS_ADD_REQUEST) {
+			list_del(&rss->list);
+			kfree(rss);
+		} else {
+			rss->state = IAVF_ADV_RSS_DEL_REQUEST;
+		}
+	}
 	spin_unlock_bh(&adapter->adv_rss_lock);
+}
+
+/**
+ * iavf_down - Shutdown the connection processing
+ * @adapter: board private structure
+ *
+ * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
+ **/
+void iavf_down(struct iavf_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+
+	if (adapter->state <= __IAVF_DOWN_PENDING)
+		return;
+
+	netif_carrier_off(netdev);
+	netif_tx_disable(netdev);
+	adapter->link_up = false;
+	iavf_napi_disable_all(adapter);
+	iavf_irq_disable(adapter);
+
+	iavf_clear_mac_vlan_filters(adapter);
+	iavf_clear_cloud_filters(adapter);
+	iavf_clear_fdir_filters(adapter);
+	iavf_clear_adv_rss_conf(adapter);
 
 	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)) {
 		/* cancel any current operation */
@@ -1338,11 +1410,16 @@ void iavf_down(struct iavf_adapter *adapter)
 		 * here for this to complete. The watchdog is still running
 		 * and it will take care of this.
 		 */
-		adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
-		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
-		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
-		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
-		adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
+		if (!list_empty(&adapter->mac_filter_list))
+			adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
+		if (!list_empty(&adapter->vlan_filter_list))
+			adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
+		if (!list_empty(&adapter->cloud_filter_list))
+			adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
+		if (!list_empty(&adapter->fdir_list_head))
+			adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
+		if (!list_empty(&adapter->adv_rss_list_head))
+			adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
 		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
 	}
 
@@ -4164,6 +4241,7 @@ static int iavf_open(struct net_device *netdev)
 static int iavf_close(struct net_device *netdev)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
+	u64 aq_to_restore;
 	int status;
 
 	mutex_lock(&adapter->crit_lock);
@@ -4176,6 +4254,29 @@ static int iavf_close(struct net_device *netdev)
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	if (CLIENT_ENABLED(adapter))
 		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
+	/* We cannot send IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS before
+	 * IAVF_FLAG_AQ_DISABLE_QUEUES because in such case there is rtnl
+	 * deadlock with adminq_task() until iavf_close timeouts. We must send
+	 * IAVF_FLAG_AQ_GET_CONFIG before IAVF_FLAG_AQ_DISABLE_QUEUES to make
+	 * disable queues possible for vf. Give only necessary flags to
+	 * iavf_down and save other to set them right before iavf_close()
+	 * returns, when IAVF_FLAG_AQ_DISABLE_QUEUES will be already sent and
+	 * iavf will be in DOWN state.
+	 */
+	aq_to_restore = adapter->aq_required;
+	adapter->aq_required &= IAVF_FLAG_AQ_GET_CONFIG;
+
+	/* Remove flags which we do not want to send after close or we want to
+	 * send before disable queues.
+	 */
+	aq_to_restore &= ~(IAVF_FLAG_AQ_GET_CONFIG		|
+			   IAVF_FLAG_AQ_ENABLE_QUEUES		|
+			   IAVF_FLAG_AQ_CONFIGURE_QUEUES	|
+			   IAVF_FLAG_AQ_ADD_VLAN_FILTER		|
+			   IAVF_FLAG_AQ_ADD_MAC_FILTER		|
+			   IAVF_FLAG_AQ_ADD_CLOUD_FILTER	|
+			   IAVF_FLAG_AQ_ADD_FDIR_FILTER		|
+			   IAVF_FLAG_AQ_ADD_ADV_RSS_CFG);
 
 	iavf_down(adapter);
 	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
@@ -4199,6 +4300,10 @@ static int iavf_close(struct net_device *netdev)
 				    msecs_to_jiffies(500));
 	if (!status)
 		netdev_warn(netdev, "Device resources not yet released\n");
+
+	mutex_lock(&adapter->crit_lock);
+	adapter->aq_required |= aq_to_restore;
+	mutex_unlock(&adapter->crit_lock);
 	return 0;
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
