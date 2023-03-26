Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 427AF6C9623
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 17:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F669415AE;
	Sun, 26 Mar 2023 15:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F669415AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679844428;
	bh=PcTcRVS9BUpk4AEQcVpt9QwysIZYcmAle3khHUTa+LA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KWT7bnOXoUGfoPAQWBvLYqKEGwXNl7ZPrCTUauQFzHFCWHzW/lxA1YYyA6MgUxjPh
	 tVmLM00UOb+idhBhBY0wz/6uxcrqTMQddYRtI1ybbptJxt1XHSQbs1nQt2q6nMPcME
	 prZcClE/oPMFYGrDktqa79m7rj0eUjxm+foCql/MNSg/XLS5iO5rF8EKx5V/Yyi27/
	 SsHk5p6Rj/ofu8J21auADVG0pcaBM4GEe+6mgboYH9cMHSU1mVApmlVGthe8eQC8NJ
	 g6qAJqwREXtMMgzDj/hzXZqLvVumJQogQM/bxsGSdJS5DC/nW9RnpLenKN67/E8f/z
	 859JkOWiot98g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 76wG_6YXUBgc; Sun, 26 Mar 2023 15:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 772D441554;
	Sun, 26 Mar 2023 15:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 772D441554
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 366F71BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A57FA60DE5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A57FA60DE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wsZtAIkl-rE5 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 15:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E03C60E6F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E03C60E6F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 15:26:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402697691"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="402697691"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 08:26:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="794033879"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="794033879"
Received: from jsanche3-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.37.83])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 08:26:54 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 26 Mar 2023 09:26:35 -0600
Message-Id: <20230326152636.2168751-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326152636.2168751-1-ahmed.zaki@intel.com>
References: <20230326152636.2168751-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679844416; x=1711380416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qJ73IrkqoNBj++sHEdcZ+0zm4qtZU43bJhJYt8O/RBo=;
 b=EOj7bjOR/D8SPrgJGZgzDd8cTiRmzlAwChraY13aIkPr3WI03aw6/Vwg
 hFAUmbNnMkl4Fz/xymhe7mlpqPFAOQk4M1tAVH7RNxDNdVylZVbq0m8Df
 1p8L5cRr4252k9jwiYVn/VYSgdYyBclMxZJhxYh1LPo2i/tVPBc+QPimf
 Hr/UEwXj54TgQWuFt56MZLCQPRY6AcaJzwuiqP5J9YmvBqUWPICnNrkfO
 O11yZqKvx0UV1TdJUbnwaGaokEWx7dgF8MrFCQ8aWPom+Ylakq9HYPixV
 gPZIqSQEy3tf+SufnVe40/+3HPJWLMHz63QnoDkan1RnKaSGNM2rHKEQB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EOj7bjOR
Subject: [Intel-wired-lan] [PATCH net 1/2] iavf: refactor VLAN filter states
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The VLAN filter states are currently being saved as individual bits.
This is error prone as multiple bits might be mistakenly set.

Fix by replacing the bits with a single state enum. Also, add an
"ACTIVE" state for filters that are accepted by the PF.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 15 +++++----
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 ++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 31 +++++++++----------
 3 files changed, 28 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 2cdce251472c..00262f721761 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -157,15 +157,18 @@ struct iavf_vlan {
 	u16 tpid;
 };
 
+enum iavf_vlan_state_t {
+	__IAVF_VLAN_INVALID,
+	__IAVF_VLAN_ADD,	/* filter needs to be added */
+	__IAVF_VLAN_IS_NEW,	/* filter is new, wait for PF answer */
+	__IAVF_VLAN_ACTIVE,	/* filter is accepted by PF */
+	__IAVF_VLAN_REMOVE,	/* filter needs to be removed */
+};
+
 struct iavf_vlan_filter {
 	struct list_head list;
 	struct iavf_vlan vlan;
-	struct {
-		u8 is_new_vlan:1;	/* filter is new, wait for PF answer */
-		u8 remove:1;		/* filter needs to be removed */
-		u8 add:1;		/* filter needs to be added */
-		u8 padding:5;
-	};
+	enum iavf_vlan_state_t state;
 };
 
 #define IAVF_MAX_TRAFFIC_CLASS	4
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 095201e83c9d..5e3429677daa 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -791,7 +791,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 		f->vlan = vlan;
 
 		list_add_tail(&f->list, &adapter->vlan_filter_list);
-		f->add = true;
+		f->state = __IAVF_VLAN_ADD;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 	}
 
@@ -813,7 +813,7 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
 
 	f = iavf_find_vlan(adapter, vlan);
 	if (f) {
-		f->remove = true;
+		f->state = __IAVF_VLAN_REMOVE;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
 	}
 
@@ -1296,11 +1296,11 @@ static void iavf_clear_mac_vlan_filters(struct iavf_adapter *adapter)
 	/* remove all VLAN filters */
 	list_for_each_entry_safe(vlf, vlftmp, &adapter->vlan_filter_list,
 				 list) {
-		if (vlf->add) {
+		if (vlf->state == __IAVF_VLAN_ADD) {
 			list_del(&vlf->list);
 			kfree(vlf);
 		} else {
-			vlf->remove = true;
+			vlf->state = __IAVF_VLAN_REMOVE;
 		}
 	}
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 4e17d006c52d..9ba83f0d212e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -642,7 +642,7 @@ static void iavf_vlan_add_reject(struct iavf_adapter *adapter)
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-		if (f->is_new_vlan) {
+		if (f->state == __IAVF_VLAN_IS_NEW) {
 			if (f->vlan.tpid == ETH_P_8021Q)
 				clear_bit(f->vlan.vid,
 					  adapter->vsi.active_cvlans);
@@ -679,7 +679,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
 	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-		if (f->add)
+		if (f->state == __IAVF_VLAN_ADD)
 			count++;
 	}
 	if (!count || !VLAN_FILTERING_ALLOWED(adapter)) {
@@ -710,11 +710,10 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 		vvfl->vsi_id = adapter->vsi_res->vsi_id;
 		vvfl->num_elements = count;
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-			if (f->add) {
+			if (f->state == __IAVF_VLAN_ADD) {
 				vvfl->vlan_id[i] = f->vlan.vid;
 				i++;
-				f->add = false;
-				f->is_new_vlan = true;
+				f->state = __IAVF_VLAN_IS_NEW;
 				if (i == count)
 					break;
 			}
@@ -760,7 +759,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
 		vvfl_v2->num_elements = count;
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-			if (f->add) {
+			if (f->state == __IAVF_VLAN_ADD) {
 				struct virtchnl_vlan_supported_caps *filtering_support =
 					&adapter->vlan_v2_caps.filtering.filtering_support;
 				struct virtchnl_vlan *vlan;
@@ -778,8 +777,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 				vlan->tpid = f->vlan.tpid;
 
 				i++;
-				f->add = false;
-				f->is_new_vlan = true;
+				f->state = __IAVF_VLAN_IS_NEW;
 			}
 		}
 
@@ -822,10 +820,11 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		 * filters marked for removal to enable bailing out before
 		 * sending a virtchnl message
 		 */
-		if (f->remove && !VLAN_FILTERING_ALLOWED(adapter)) {
+		if (f->state == __IAVF_VLAN_REMOVE &&
+		    !VLAN_FILTERING_ALLOWED(adapter)) {
 			list_del(&f->list);
 			kfree(f);
-		} else if (f->remove) {
+		} else if (f->state == __IAVF_VLAN_REMOVE) {
 			count++;
 		}
 	}
@@ -857,7 +856,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		vvfl->vsi_id = adapter->vsi_res->vsi_id;
 		vvfl->num_elements = count;
 		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-			if (f->remove) {
+			if (f->state == __IAVF_VLAN_REMOVE) {
 				vvfl->vlan_id[i] = f->vlan.vid;
 				i++;
 				list_del(&f->list);
@@ -901,7 +900,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
 		vvfl_v2->num_elements = count;
 		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-			if (f->remove) {
+			if (f->state == __IAVF_VLAN_REMOVE) {
 				struct virtchnl_vlan_supported_caps *filtering_support =
 					&adapter->vlan_v2_caps.filtering.filtering_support;
 				struct virtchnl_vlan *vlan;
@@ -2192,7 +2191,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 				list_for_each_entry(vlf,
 						    &adapter->vlan_filter_list,
 						    list)
-					vlf->add = true;
+					vlf->state = __IAVF_VLAN_ADD;
 
 				adapter->aq_required |=
 					IAVF_FLAG_AQ_ADD_VLAN_FILTER;
@@ -2260,7 +2259,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 				list_for_each_entry(vlf,
 						    &adapter->vlan_filter_list,
 						    list)
-					vlf->add = true;
+					vlf->state = __IAVF_VLAN_ADD;
 
 				aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 			}
@@ -2444,8 +2443,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		spin_lock_bh(&adapter->mac_vlan_list_lock);
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-			if (f->is_new_vlan) {
-				f->is_new_vlan = false;
+			if (f->state == __IAVF_VLAN_IS_NEW) {
+				f->state = __IAVF_VLAN_ACTIVE;
 				if (f->vlan.tpid == ETH_P_8021Q)
 					set_bit(f->vlan.vid,
 						adapter->vsi.active_cvlans);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
