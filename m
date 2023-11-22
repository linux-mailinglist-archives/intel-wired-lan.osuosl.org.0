Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7DA7F3C3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 04:16:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71D8F40988;
	Wed, 22 Nov 2023 03:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71D8F40988
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700622983;
	bh=O0dmc6hdKDKT6iaz+I45R9TWExXrjfne+Snz/FnXSCs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a7FhM3e/AC8ZxofSt0PhV1j5jSaEpqZL8qmh/nrtwlJBXlr9lAvS4xo0PT8YQ8B/U
	 3otQOjSZWBNObqhBi/fPzcr381/Ewdh6JE43ytG0ip2IOJ7DdDAI6wugNgxILL1Ab4
	 Mf1MeVwV3tZQoEBDTqJyFvT0VwuIj/6tttn1b0lO84sR7yVUbiqTa8BwT9VqZZrLfE
	 5Kkt51M4pgTEmvz0tpFVCbVSRLOJLn8MoiqF1/DSRRTTNcP3ab3tBR5Uhh81GUhDR8
	 K742rZj8ZJ/QxoOGSxrBIxrbGgcPLC8lN9wtS8obSoP2Tw0vOiU1bhHX7NfQtndJv+
	 audk/pgFAlgoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wAKKOnb-Q6DR; Wed, 22 Nov 2023 03:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C2B3408DA;
	Wed, 22 Nov 2023 03:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C2B3408DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DAF81BF350
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 03:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8B03408E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 03:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8B03408E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rZBPSlA4iBy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 03:16:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00EDD408DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 03:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00EDD408DF
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="456302491"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="456302491"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 19:16:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="1014104147"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="1014104147"
Received: from fedora-sys-rao.jf.intel.com (HELO f37-upstream-rao..)
 ([10.166.5.220])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2023 19:16:07 -0800
From: Ranganatha Rao <ranganatha.rao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 19:10:32 -0500
Message-ID: <20231122001032.2959301-3-ranganatha.rao@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231122001032.2959301-1-ranganatha.rao@intel.com>
References: <20231122001032.2959301-1-ranganatha.rao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700622967; x=1732158967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=st2jlcfVa7BJwPPfhHBSWNTFl0cuqHDBOwpJJ+aFNTQ=;
 b=hb+afozDo2/dc8f87g2snMw4IjmNjOeV7NosPMinffsC8e48uMBnW7nq
 kuAclpqaUH/Qydlsw9IaNrFK5fvuQUwPg9v9mgykFIAW74cCPVJ5w+mAz
 8uW0IdQrQjcQDqAeDNjnjO6Wg+wt2Prxu7jLB1Bf0PRX6oYTaEG9Rc4OZ
 bhn2hjYzarsLK3XymkVQk5TeBEsqa7YC2bc4OyeoZvUYQFO/HhTpmIEIK
 vgyCeQi32Qe47n2jsSp50AsqP8giDyOJJCWMrh5lXWQoY1gxPJNQRT400
 1x5nTVsDpgC+YRwMq6on1crz8tbe7eKFlhFGhZOre/GKk1zppsbXO2DiB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hb+afozD
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] iavf: Handle ntuple on/off
 based on new state machines for flow director
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
Cc: Piotr Gardocki <piotrx.gardocki@intel.com>,
 Ranganatha Rao <ranganatha.rao@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Gardocki <piotrx.gardocki@intel.com>

ntuple-filter feature on/off:
Default is on. If turned off, the filters will be removed from both
PF and iavf list. The removal is irrespective of current filter state.

Steps to reproduce:
-------------------

1. Ensure ntuple is on.

ethtool -K enp8s0 ntuple-filters on

2. Create a filter to receive the traffic into non-default rx-queue like 15
and ensure traffic is flowing into queue into 15.
Now, turn off ntuple. Traffic should not flow to configured queue 15.
It should flow to default RX queue.

Fixes: 0dbfbabb840d ("iavf: Add framework to enable ethtool ntuple filters")
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Ranganatha Rao <ranganatha.rao@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 59 +++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 567435e23936..98116872f6bd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4341,6 +4341,49 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 	return ret;
 }
 
+/**
+ * iavf_disable_fdir - disable Flow Director and clear existing filters
+ * @adapter: board private structure
+ **/
+static void iavf_disable_fdir(struct iavf_adapter *adapter)
+{
+	struct iavf_fdir_fltr *fdir, *fdirtmp;
+	bool del_filters = false;
+
+	adapter->flags &= ~IAVF_FLAG_FDIR_ENABLED;
+
+	/* remove all Flow Director filters */
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry_safe(fdir, fdirtmp, &adapter->fdir_list_head,
+				 list) {
+		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST ||
+		    fdir->state == IAVF_FDIR_FLTR_INACTIVE) {
+			/* Delete filters not registered in PF */
+			list_del(&fdir->list);
+			kfree(fdir);
+			adapter->fdir_active_fltr--;
+		} else if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING ||
+			   fdir->state == IAVF_FDIR_FLTR_DIS_REQUEST ||
+			   fdir->state == IAVF_FDIR_FLTR_ACTIVE) {
+			/* Filters registered in PF, schedule their deletion */
+			fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
+			del_filters = true;
+		} else if (fdir->state == IAVF_FDIR_FLTR_DIS_PENDING) {
+			/* Request to delete filter already sent to PF, change
+			 * state to DEL_PENDING to delete filter after PF's
+			 * response, not set as INACTIVE
+			 */
+			fdir->state = IAVF_FDIR_FLTR_DEL_PENDING;
+		}
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
+	if (del_filters) {
+		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
+		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
+	}
+}
+
 #define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
 					 NETIF_F_HW_VLAN_CTAG_TX | \
 					 NETIF_F_HW_VLAN_STAG_RX | \
@@ -4366,6 +4409,13 @@ static int iavf_set_features(struct net_device *netdev,
 	    ((netdev->features & NETIF_F_RXFCS) ^ (features & NETIF_F_RXFCS)))
 		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
 
+	if ((netdev->features & NETIF_F_NTUPLE) ^ (features & NETIF_F_NTUPLE)) {
+		if (features & NETIF_F_NTUPLE)
+			adapter->flags |= IAVF_FLAG_FDIR_ENABLED;
+		else
+			iavf_disable_fdir(adapter);
+	}
+
 	return 0;
 }
 
@@ -4715,6 +4765,9 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 
 	features = iavf_fix_netdev_vlan_features(adapter, features);
 
+	if (!FDIR_FLTR_SUPPORT(adapter))
+		features &= ~NETIF_F_NTUPLE;
+
 	return iavf_fix_strip_features(adapter, features);
 }
 
@@ -4832,6 +4885,12 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_VLAN)
 		netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 
+	if (FDIR_FLTR_SUPPORT(adapter)) {
+		netdev->hw_features |= NETIF_F_NTUPLE;
+		netdev->features |= NETIF_F_NTUPLE;
+		adapter->flags |= IAVF_FLAG_FDIR_ENABLED;
+	}
+
 	netdev->priv_flags |= IFF_UNICAST_FLT;
 
 	/* Do not turn on offloads when they are requested to be turned off.
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
