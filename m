Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C94D7F3E63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 07:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BCC981992;
	Wed, 22 Nov 2023 06:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BCC981992
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700635989;
	bh=O0dmc6hdKDKT6iaz+I45R9TWExXrjfne+Snz/FnXSCs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZzyjygpxVU/PjCnb5L4rHkJScCxkdPIWVP5R+bNGs/ixMskr+COfPTqP72PF+HVRu
	 RInWwhraLG1cmlgVjP2Vgxi7lRwjC5Auqa5SYrXonQJuoT+e7DVrFrToQtXjiUeUz2
	 VSggGmQYoj49Dn4oFXUuMvA219P/LavWqdS6mzC0tIBC9BAvwVOOhnzgj7NSGwkSFp
	 D18ZlPwn6c7UAHq5Kjzx6NXzMkCrtTL6yVQz2cZfnqsvpeUO+F5A99kLGi8z9oik/V
	 NnR613IluTu15y7D37CacrPL3z/BZOIKFj1QT1Q4OApmCGrdI0ndoVerr54RLMcm28
	 5v549rxtm13wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h1UusfOyq6i4; Wed, 22 Nov 2023 06:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB3CE81A3B;
	Wed, 22 Nov 2023 06:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB3CE81A3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12CCF1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 176BD4048A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 176BD4048A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FykPhw9VKfLV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 06:52:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A2414011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:52:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A2414011A
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="394831202"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="394831202"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 22:52:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="770492400"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="770492400"
Received: from fedora-sys-rao.jf.intel.com (HELO f37-upstream-rao..)
 ([10.166.5.220])
 by fmsmga007.fm.intel.com with ESMTP; 21 Nov 2023 22:52:53 -0800
From: Ranganatha Rao <ranganatha.rao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 22:47:16 -0500
Message-ID: <20231122034716.38074-3-ranganatha.rao@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231122034716.38074-1-ranganatha.rao@intel.com>
References: <20231122034716.38074-1-ranganatha.rao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700635974; x=1732171974;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=st2jlcfVa7BJwPPfhHBSWNTFl0cuqHDBOwpJJ+aFNTQ=;
 b=ln5i/WMkVAnL5CAuIC/PbnK+0Fw43enWjB1jCgrWRpGNw1pRzgZ6UDx6
 V5PWmqo66vyq5HdOEzbWcGhjInxZD4XxH1i+CAYR6UKGPKzbNVRz5hgPf
 I+5v/dEQ1dHC3zrpbJF20uc8zMIyWPHaPxbosVo8Fvc4HfeH/ROd+Ncvx
 NZL+oTJjCOy1A9khvP2kGpyHlbz4kxCFi7av5PKtayzm8zat6iOPuDpBO
 huKXivBVfMST7qMQ1S2amP/TiCbxGRWJKXS9c5TE/M2s7luQgptXXFXVy
 Ln+slUUTfcL53aTwSW1MBkb01wjkxCNCw80oldofPv3ug9DmirYOi/81w
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ln5i/WMk
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
Cc: Piotr Gardocki <piotrx.gardocki@intel.com>, netdev@vger.kernel.org,
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
