Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A83A5F8FDD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Oct 2022 00:17:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED3AC828F8;
	Sun,  9 Oct 2022 22:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED3AC828F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665353827;
	bh=eBkIS92FEX1HkNqcFJK5/6KTr+saZcoNbm/h/OvuWw8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VzLz7hBiMvWwqItLTZ+LRYMk5EUcz6SnNzcXij6N4SZ5uaAXTqQlG0l2NEiay6jlw
	 XNVBRM3O6xtrL2tUjlnL0PgtzyrbQN15xtmW8YHFJJhegzL4lkVq187ING75a0FIp9
	 W28KITIygiLCDy47txXTdNs0v3iqJeod8Nw7YK0xELSB2l2LLejJ9j+LYTc23Xn83M
	 Y6PTdiVRgEophzroyXlrZFaaMDSBGZF/jemJBJXEQyQ/ENhGveKGMaY9yo3nc1GUKi
	 nuNj6qu89XL5HWzogD1wE0vMRJWUuWYF9yAFj4dEqq2blnrcpHGNaJZ2yItvH3EW3L
	 iP0iQg0285RdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRu_D4cUKRjX; Sun,  9 Oct 2022 22:17:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD29A828E3;
	Sun,  9 Oct 2022 22:17:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD29A828E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0BCB1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B25C640923
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:17:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B25C640923
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qELqLYcOaD1J for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Oct 2022 22:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44DE44089A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44DE44089A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:16:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 93C1160DB4;
 Sun,  9 Oct 2022 22:16:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF5FEC433D7;
 Sun,  9 Oct 2022 22:16:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Oct 2022 18:14:09 -0400
Message-Id: <20221009221453.1216158-31-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221009221453.1216158-1-sashal@kernel.org>
References: <20221009221453.1216158-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1665353817;
 bh=mbOqe3BvSY+Utn4ID69aJOshzLQV9w7fqEBjvKww5wQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cj3pPj2C07j5JyH4DGFoAlBaFDxbqbkfX4MN66H98GBQGLWXAC0dlGcUcVBHDgfEs
 +kafXHVyTR88LipFyo0pYwoEQSK00CGrpEVJrF1HIlQHdttEYE6FY0o2nanosbvpC+
 xhK3qgbJSzPJCS/UOYYr36GDHsyCvcw4qfKbIAdzelWQmnga8ICfYT7N1jrd+S62O9
 KAV27r4Hc7lFevh3LuC2sYDS0GKLiKO1zxb9CQZ/GqH2PxmjVx7ma3Y/Do1RRdOFc/
 TYpsdyZmR3/7wImvNM592fbWZDerSEj3Yx2YBq+UQxENoTfFPmbyGUUi0rxCRbGy+2
 zkIDkUAZ/R7GA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cj3pPj2C
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.19 31/73] iavf: Fix race between
 iavf_close and iavf_reset_task
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
Cc: Sasha Levin <sashal@kernel.org>, Michal Jaron <michalx.jaron@intel.com>,
 edumazet@google.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

[ Upstream commit 11c12adcbc1598d91e73ab6ddfa41d25a01478ed ]

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

Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 177 ++++++++++++++++----
 1 file changed, 141 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 981c43b204ff..d3822c264642 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1184,66 +1184,138 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
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
@@ -1252,11 +1324,16 @@ void iavf_down(struct iavf_adapter *adapter)
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
 
@@ -4082,6 +4159,7 @@ static int iavf_open(struct net_device *netdev)
 static int iavf_close(struct net_device *netdev)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
+	u64 aq_to_restore;
 	int status;
 
 	mutex_lock(&adapter->crit_lock);
@@ -4094,6 +4172,29 @@ static int iavf_close(struct net_device *netdev)
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
@@ -4117,6 +4218,10 @@ static int iavf_close(struct net_device *netdev)
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
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
