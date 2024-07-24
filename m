Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B1493B8AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 23:38:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8481F81990;
	Wed, 24 Jul 2024 21:38:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V3KSOa5NwMmT; Wed, 24 Jul 2024 21:38:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB1BA80ED4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721857085;
	bh=6tDb9Z8XPcm4vJB+tyN4bKVW90xo8vkxfjEfG+rw/RM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ybnu8eYcNNLNpCPClBv9mnFTQ2Rx4BFm8hV/3Ub4RNGUti2wthExQObB9ky7GGBUf
	 qQIlIT8OoWkwL/1E0PRoD5pfDL8NpSaBgxhnvarHfXVuQnQvear6HBVuzztvzJhkrA
	 2eKeFf9N8wPLZ9TyCyH8C6t0vaxiTAhf10i174vuEW8Mc9NbzY5OQ/bfNdY7cPaw/N
	 KNPz13p+uxCZoq4U14dJFUlD2zN+NZ0Fij8gVWyFP+Itam3G1LBIr5fRgLBpkNYA02
	 akJc2rhgOHAE6ZiCstX1T5GSquCXRmysttdDwimVUGY+tpqxCcUsdR27T0SRV6F71x
	 RXYNmPt0z+ZfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB1BA80ED4;
	Wed, 24 Jul 2024 21:38:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16F851BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC12F80DE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:38:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ci12dC6MUfGs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 21:37:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E7728197D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E7728197D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E7728197D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:59 +0000 (UTC)
X-CSE-ConnectionGUID: mOxcPoQURvG5IyhqejE0QA==
X-CSE-MsgGUID: N3+vgXQASq6J8wKW9MeW5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19704320"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19704320"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:37:59 -0700
X-CSE-ConnectionGUID: wCUYgN+VQXmXXejuafAziA==
X-CSE-MsgGUID: uOOoq0UwQa6mI8eMXBNpkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52579663"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.206])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:37:55 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:36:21 -0600
Message-ID: <20240724213623.324532-13-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724213623.324532-1-ahmed.zaki@intel.com>
References: <20240724213623.324532-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721857080; x=1753393080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VYQaSRllBQc8Wi/fV7TDm0mP4oAlXANENAd0ktwhnZ8=;
 b=I9fFoCB6BW5F/jskmGFXzW234hyaJMLi4j7XMcl0TUXbEwKRWiDhd0Ho
 jMdSn432GTF9x+yFj9l2n+cDlxTWKHCaaSEdZB/eq3hcZAeyzLOsmqUhW
 52rVKOmCjA8mPY2lwHZL5vaWBwfGgLTfgFhw+9IxL8c3ls2OYYB7Rljqh
 Zy1KAMjbNfNYr2CyoFPZDNBFybrFzoJeS+WE2JqAratkSv0eW1wA7pZUm
 uafiWzG+xYSmDnrpnWXLXcu5D8U3eLfmONWU7FCnWENaTvNKsMsQnPdbB
 8cSvLelurvE/molOv2HNK473LDs31UOwRF+Fk+YqYz/UZZ/qrU0wJXMAR
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I9fFoCB6
Subject: [Intel-wired-lan] [PATCH iwl-next v4 12/13] iavf: refactor add/del
 FDIR filters
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for a second type of FDIR filters that can be added by
tc-u32, move the add/del of the FDIR logic to be entirely contained in
iavf_fdir.c.

The iavf_find_fdir_fltr_by_loc() is renamed to iavf_find_fdir_fltr()
to be more agnostic to the filter ID parameter (for now @loc, which is
relevant only to current FDIR filters added via ethtool).

The FDIR filter deletion is moved from iavf_del_fdir_ethtool() in
ethtool.c to iavf_fdir_del_fltr(). While at it, fix a minor bug where
the "fltr" is accessed out of the fdir_fltr_lock spinlock protection.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  5 ++
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 56 ++-------------
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 72 +++++++++++++++++--
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  7 +-
 4 files changed, 83 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 23a6557fc3db..dfed22baebf8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -444,6 +444,11 @@ struct iavf_adapter {
 	spinlock_t adv_rss_lock;	/* protect the RSS management list */
 };
 
+/* Must be called with fdir_fltr_lock lock held */
+static inline bool iavf_fdir_max_reached(struct iavf_adapter *adapter)
+{
+	return adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS;
+}
 
 /* Ethtool Private Flags */
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 52273f7eab2c..7ab445eeee18 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -927,7 +927,7 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
 
-	rule = iavf_find_fdir_fltr_by_loc(adapter, fsp->location);
+	rule = iavf_find_fdir_fltr(adapter, fsp->location);
 	if (!rule) {
 		ret = -EINVAL;
 		goto release_lock;
@@ -1263,15 +1263,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 		return -EINVAL;
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
-	if (adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS) {
-		spin_unlock_bh(&adapter->fdir_fltr_lock);
-		dev_err(&adapter->pdev->dev,
-			"Unable to add Flow Director filter because VF reached the limit of max allowed filters (%u)\n",
-			IAVF_MAX_FDIR_FILTERS);
-		return -ENOSPC;
-	}
-
-	if (iavf_find_fdir_fltr_by_loc(adapter, fsp->location)) {
+	if (iavf_find_fdir_fltr(adapter, fsp->location)) {
 		dev_err(&adapter->pdev->dev, "Failed to add Flow Director filter, it already exists\n");
 		spin_unlock_bh(&adapter->fdir_fltr_lock);
 		return -EEXIST;
@@ -1291,23 +1283,10 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	}
 
 	err = iavf_add_fdir_fltr_info(adapter, fsp, fltr);
-	if (err)
-		goto ret;
-
-	spin_lock_bh(&adapter->fdir_fltr_lock);
-	iavf_fdir_list_add_fltr(adapter, fltr);
-	adapter->fdir_active_fltr++;
-
-	if (adapter->link_up)
-		fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
-	else
-		fltr->state = IAVF_FDIR_FLTR_INACTIVE;
-	spin_unlock_bh(&adapter->fdir_fltr_lock);
+	if (!err)
+		err = iavf_fdir_add_fltr(adapter, fltr);
 
-	if (adapter->link_up)
-		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_FDIR_FILTER);
-ret:
-	if (err && fltr)
+	if (err)
 		kfree(fltr);
 
 	mutex_unlock(&adapter->crit_lock);
@@ -1324,34 +1303,11 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp = (struct ethtool_rx_flow_spec *)&cmd->fs;
-	struct iavf_fdir_fltr *fltr = NULL;
-	int err = 0;
 
 	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
-	spin_lock_bh(&adapter->fdir_fltr_lock);
-	fltr = iavf_find_fdir_fltr_by_loc(adapter, fsp->location);
-	if (fltr) {
-		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
-			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
-		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
-			list_del(&fltr->list);
-			kfree(fltr);
-			adapter->fdir_active_fltr--;
-			fltr = NULL;
-		} else {
-			err = -EBUSY;
-		}
-	} else if (adapter->fdir_active_fltr) {
-		err = -EINVAL;
-	}
-	spin_unlock_bh(&adapter->fdir_fltr_lock);
-
-	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
-		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);
-
-	return err;
+	return iavf_fdir_del_fltr(adapter, fsp->location);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 2d47b0b4640e..1e1daf71dfa0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -815,13 +815,14 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 }
 
 /**
- * iavf_find_fdir_fltr_by_loc - find filter with location
+ * iavf_find_fdir_fltr - find FDIR filter
  * @adapter: pointer to the VF adapter structure
  * @loc: location to find.
  *
- * Returns pointer to Flow Director filter if found or null
+ * Returns: pointer to Flow Director filter if found or NULL. Lock must be held.
  */
-struct iavf_fdir_fltr *iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter, u32 loc)
+struct iavf_fdir_fltr *iavf_find_fdir_fltr(struct iavf_adapter *adapter,
+					   u32 loc)
 {
 	struct iavf_fdir_fltr *rule;
 
@@ -833,14 +834,26 @@ struct iavf_fdir_fltr *iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter,
 }
 
 /**
- * iavf_fdir_list_add_fltr - add a new node to the flow director filter list
+ * iavf_fdir_add_fltr - add a new node to the flow director filter list
  * @adapter: pointer to the VF adapter structure
  * @fltr: filter node to add to structure
+ *
+ * Return: 0 on success or negative errno on failure.
  */
-void iavf_fdir_list_add_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr)
+int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
+		       struct iavf_fdir_fltr *fltr)
 {
 	struct iavf_fdir_fltr *rule, *parent = NULL;
 
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	if (iavf_fdir_max_reached(adapter)) {
+		spin_unlock_bh(&adapter->fdir_fltr_lock);
+		dev_err(&adapter->pdev->dev,
+			"Unable to add Flow Director filter (limit (%u) reached)\n",
+			IAVF_MAX_FDIR_FILTERS);
+		return -ENOSPC;
+	}
+
 	list_for_each_entry(rule, &adapter->fdir_list_head, list) {
 		if (rule->loc >= fltr->loc)
 			break;
@@ -851,4 +864,53 @@ void iavf_fdir_list_add_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr
 		list_add(&fltr->list, &parent->list);
 	else
 		list_add(&fltr->list, &adapter->fdir_list_head);
+	adapter->fdir_active_fltr++;
+
+	if (adapter->link_up)
+		fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
+	else
+		fltr->state = IAVF_FDIR_FLTR_INACTIVE;
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
+	if (adapter->link_up)
+		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_FDIR_FILTER);
+
+	return 0;
+}
+
+/**
+ * iavf_fdir_del_fltr - delete a flow director filter from the list
+ * @adapter: pointer to the VF adapter structure
+ * @loc: location to delete.
+ *
+ * Return: 0 on success or negative errno on failure.
+ */
+int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
+{
+	struct iavf_fdir_fltr *fltr = NULL;
+	int err = 0;
+
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	fltr = iavf_find_fdir_fltr(adapter, loc);
+
+	if (fltr) {
+		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
+			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
+		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
+			list_del(&fltr->list);
+			kfree(fltr);
+			adapter->fdir_active_fltr--;
+			fltr = NULL;
+		} else {
+			err = -EBUSY;
+		}
+	} else if (adapter->fdir_active_fltr) {
+		err = -EINVAL;
+	}
+
+	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
+		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);
+
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+	return err;
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index d31bd923ba8c..5c85eb25fa2a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -128,6 +128,9 @@ int iavf_validate_fdir_fltr_masks(struct iavf_adapter *adapter,
 int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
 void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
 bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
-void iavf_fdir_list_add_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
-struct iavf_fdir_fltr *iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter, u32 loc);
+int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
+		       struct iavf_fdir_fltr *fltr);
+int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc);
+struct iavf_fdir_fltr *iavf_find_fdir_fltr(struct iavf_adapter *adapter,
+					   u32 loc);
 #endif /* _IAVF_FDIR_H_ */
-- 
2.43.0

