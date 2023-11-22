Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2867F3C3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 04:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B07F4091F;
	Wed, 22 Nov 2023 03:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B07F4091F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700622979;
	bh=QSus4/9Cy1epJYKX3X3VwjZwBS5tVaQof4ddBxp/J/4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=57NTVtKpsdW0Cn/ZqF7IotwvdQAJOKaJ4KOWVzIzjLi1yQqKFRkoMXpMkUPrIUe/s
	 9ouAJ1zMhSfG4XLdB/DCm1I4BDkKGniScyRzybipzvL2lBQtjwCMj0365Zxfk7KIDj
	 rYDZaMLwS4wFL1kdn1h/ISboC9IXM6CXWOVpuu10VyZKmUSJzK49UmQw5XzufjMs+t
	 X2NfEQSuD65qroGWnSijtNFWm4E6oqfG8dZPXSLogZhD5GnNcDn/LEHs/Jb4P/ONF8
	 UigJMLsT16GqFydHKDiRpgN4VpkgeF1sMfPhZaFC2B7edbOmuu1L8PdEGS+Ld1tpfY
	 AWAvO97bWJx3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wKONS2_MHVxf; Wed, 22 Nov 2023 03:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41994408DE;
	Wed, 22 Nov 2023 03:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41994408DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2363A1BF350
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 03:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF509408DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 03:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF509408DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJnL2msP8eYC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 03:16:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ABEA0408DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 03:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABEA0408DE
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="456302488"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="456302488"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 19:16:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="1014104144"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="1014104144"
Received: from fedora-sys-rao.jf.intel.com (HELO f37-upstream-rao..)
 ([10.166.5.220])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2023 19:16:05 -0800
From: Ranganatha Rao <ranganatha.rao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 19:10:31 -0500
Message-ID: <20231122001032.2959301-2-ranganatha.rao@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231122001032.2959301-1-ranganatha.rao@intel.com>
References: <20231122001032.2959301-1-ranganatha.rao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700622966; x=1732158966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zdf15q0C2Z1dmPluViYT85fpUxclzlcZqWEknpcA+LM=;
 b=bZLsSzsefHuhPfL3dFH2t3yUplP68NlP3WlIZQgGRBYRlIEPURs5EF6c
 q6qJAMFpF8o6/x/BOwWqsUIsCMqfS3UnIRJvt21LjV+QG+u/aN9igcN/8
 9MIjZ8Dvb/B+ZwVMUye5V6qTzAloZgVZ/bBcO2cWep2gKCH0NPHSiV91D
 S8Y1KtL53cFmhhXcT5pUA4hIEgyGlBuZsoHd9RTII8KjeUKbk1YxrSzJw
 i17v9+zKhAktTZ+YCL6PZGL05Vec519FI09sDi6eYBSM2WnFdHKglSrLm
 lQQP5Iy1WDezRiWKtMgRGTPpbkEfHaM+IiXgEEn2MOckDuT+X24a3C6H5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bZLsSzse
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: Introduce new state
 machines for flow director
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

New states introduced:

 IAVF_FDIR_FLTR_DIS_REQUEST
 IAVF_FDIR_FLTR_DIS_PENDING
 IAVF_FDIR_FLTR_INACTIVE

Current FDIR state machines (SM) are not adequate to handle few
scenarios in the link DOWN/UP event, reset event and ntuple-feature.

For example, when VF link goes DOWN and comes back UP adminstratively,
the expectation is that previously installed filters should also be
restored. But with current SM, filters are not resorted.
So with new SM, during link DOWN filters are marked as INACTIVE in
the iavf list but removed from PF. After link UP, SM will transition
from INACTIVE to ADD_REQUEST to restore the filter.

Similarly, with VF reset, filters will be removed from the PF, but
marked as INACTIVE in the iavf list. Filters will be restored after
reset completion.

Steps to reproduce:
-------------------

1. Create a VF. Here VF is enp8s0.

2. Assign IP addresses to VF and link partner and ping continuously
from remote. Here remote IP is 1.1.1.1.

3. Check default RX Queue of traffic.

ethtool -S enp8s0 | grep -E "rx-[[:digit:]]+\.packets"

4. Add filter - change default RX Queue (to 15 here)

ethtool -U ens8s0 flow-type ip4 src-ip 1.1.1.1 action 15 loc 5

5. Ensure filter gets added and traffic is received on RX queue 15 now.

Link event testing:
-------------------
6. Bring VF link down and up. If traffic flows to configured queue 15,
test is success, otherwise it is a failure.

Reset event testing:
--------------------
7. Reset the VF. If traffic flows to configured queue 15, test is success,
otherwise it is a failure.

Fixes: 0dbfbabb840d ("iavf: Add framework to enable ethtool ntuple filters")
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Ranganatha Rao <ranganatha.rao@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 27 ++++---
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   | 15 +++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 48 ++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 71 +++++++++++++++++--
 5 files changed, 139 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e7ab89dc883a..63b45c61cc4a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -292,6 +292,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
 #define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
 #define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
+#define IAVF_FLAG_FDIR_ENABLED			BIT(21)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index ee1702854451..8560af2fea6d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1063,7 +1063,7 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
 	struct iavf_fdir_fltr *rule = NULL;
 	int ret = 0;
 
-	if (!FDIR_FLTR_SUPPORT(adapter))
+	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
@@ -1205,7 +1205,7 @@ iavf_get_fdir_fltr_ids(struct iavf_adapter *adapter, struct ethtool_rxnfc *cmd,
 	unsigned int cnt = 0;
 	int val = 0;
 
-	if (!FDIR_FLTR_SUPPORT(adapter))
+	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
 	cmd->data = IAVF_MAX_FDIR_FILTERS;
@@ -1397,7 +1397,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	int count = 50;
 	int err;
 
-	if (!FDIR_FLTR_SUPPORT(adapter))
+	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
 	if (fsp->flow_type & FLOW_MAC_EXT)
@@ -1438,12 +1438,16 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	spin_lock_bh(&adapter->fdir_fltr_lock);
 	iavf_fdir_list_add_fltr(adapter, fltr);
 	adapter->fdir_active_fltr++;
-	fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
-	adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
+	if (adapter->link_up) {
+		fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
+		adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
+	} else {
+		fltr->state = IAVF_FDIR_FLTR_INACTIVE;
+	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
 
-	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
-
+	if (adapter->link_up)
+		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 ret:
 	if (err && fltr)
 		kfree(fltr);
@@ -1465,7 +1469,7 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	struct iavf_fdir_fltr *fltr = NULL;
 	int err = 0;
 
-	if (!FDIR_FLTR_SUPPORT(adapter))
+	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
 	spin_lock_bh(&adapter->fdir_fltr_lock);
@@ -1474,6 +1478,11 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
 			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
 			adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
+		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
+			list_del(&fltr->list);
+			kfree(fltr);
+			adapter->fdir_active_fltr--;
+			fltr = NULL;
 		} else {
 			err = -EBUSY;
 		}
@@ -1782,7 +1791,7 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		ret = 0;
 		break;
 	case ETHTOOL_GRXCLSRLCNT:
-		if (!FDIR_FLTR_SUPPORT(adapter))
+		if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 			break;
 		spin_lock_bh(&adapter->fdir_fltr_lock);
 		cmd->rule_cnt = adapter->fdir_active_fltr;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 9eb9f73f6adf..d31bd923ba8c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -6,12 +6,25 @@
 
 struct iavf_adapter;
 
-/* State of Flow Director filter */
+/* State of Flow Director filter
+ *
+ * *_REQUEST states are used to mark filter to be sent to PF driver to perform
+ * an action (either add or delete filter). *_PENDING states are an indication
+ * that request was sent to PF and the driver is waiting for response.
+ *
+ * Both DELETE and DISABLE states are being used to delete a filter in PF.
+ * The difference is that after a successful response filter in DEL_PENDING
+ * state is being deleted from VF driver as well and filter in DIS_PENDING state
+ * is being changed to INACTIVE state.
+ */
 enum iavf_fdir_fltr_state_t {
 	IAVF_FDIR_FLTR_ADD_REQUEST,	/* User requests to add filter */
 	IAVF_FDIR_FLTR_ADD_PENDING,	/* Filter pending add by the PF */
 	IAVF_FDIR_FLTR_DEL_REQUEST,	/* User requests to delete filter */
 	IAVF_FDIR_FLTR_DEL_PENDING,	/* Filter pending delete by the PF */
+	IAVF_FDIR_FLTR_DIS_REQUEST,	/* Filter scheduled to be disabled */
+	IAVF_FDIR_FLTR_DIS_PENDING,	/* Filter pending disable by the PF */
+	IAVF_FDIR_FLTR_INACTIVE,	/* Filter inactive on link down */
 	IAVF_FDIR_FLTR_ACTIVE,		/* Filter is active */
 };
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c862ebcd2e39..567435e23936 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1353,18 +1353,20 @@ static void iavf_clear_cloud_filters(struct iavf_adapter *adapter)
  **/
 static void iavf_clear_fdir_filters(struct iavf_adapter *adapter)
 {
-	struct iavf_fdir_fltr *fdir, *fdirtmp;
+	struct iavf_fdir_fltr *fdir;
 
 	/* remove all Flow Director filters */
 	spin_lock_bh(&adapter->fdir_fltr_lock);
-	list_for_each_entry_safe(fdir, fdirtmp, &adapter->fdir_list_head,
-				 list) {
+	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
 		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST) {
-			list_del(&fdir->list);
-			kfree(fdir);
-			adapter->fdir_active_fltr--;
-		} else {
-			fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
+			/* Cancel a request, keep filter as inactive */
+			fdir->state = IAVF_FDIR_FLTR_INACTIVE;
+		} else if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING ||
+			 fdir->state == IAVF_FDIR_FLTR_ACTIVE) {
+			/* Disable filters which are active or have a pending
+			 * request to PF to be added
+			 */
+			fdir->state = IAVF_FDIR_FLTR_DIS_REQUEST;
 		}
 	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
@@ -4112,6 +4114,33 @@ static int iavf_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	}
 }
 
+/**
+ * iavf_restore_fdir_filters
+ * @adapter: board private structure
+ *
+ * Restore existing FDIR filters when VF netdev comes back up.
+ **/
+static void iavf_restore_fdir_filters(struct iavf_adapter *adapter)
+{
+	struct iavf_fdir_fltr *f;
+
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry(f, &adapter->fdir_list_head, list) {
+		if (f->state == IAVF_FDIR_FLTR_DIS_REQUEST) {
+			/* Cancel a request, keep filter as active */
+			f->state = IAVF_FDIR_FLTR_ACTIVE;
+		} else if (f->state == IAVF_FDIR_FLTR_DIS_PENDING ||
+			   f->state == IAVF_FDIR_FLTR_INACTIVE) {
+			/* Add filters which are inactive or have a pending
+			 * request to PF to be deleted
+			 */
+			f->state = IAVF_FDIR_FLTR_ADD_REQUEST;
+			adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
+		}
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+}
+
 /**
  * iavf_open - Called when a network interface is made active
  * @netdev: network interface device structure
@@ -4179,8 +4208,9 @@ static int iavf_open(struct net_device *netdev)
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
-	/* Restore VLAN filters that were removed with IFF_DOWN */
+	/* Restore filters that were removed with IFF_DOWN */
 	iavf_restore_filters(adapter);
+	iavf_restore_fdir_filters(adapter);
 
 	iavf_configure(adapter);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 64c4443dbef9..2d9366be0ec5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1735,8 +1735,8 @@ void iavf_add_fdir_filter(struct iavf_adapter *adapter)
  **/
 void iavf_del_fdir_filter(struct iavf_adapter *adapter)
 {
+	struct virtchnl_fdir_del f = {};
 	struct iavf_fdir_fltr *fdir;
-	struct virtchnl_fdir_del f;
 	bool process_fltr = false;
 	int len;
 
@@ -1753,11 +1753,16 @@ void iavf_del_fdir_filter(struct iavf_adapter *adapter)
 	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
 		if (fdir->state == IAVF_FDIR_FLTR_DEL_REQUEST) {
 			process_fltr = true;
-			memset(&f, 0, len);
 			f.vsi_id = fdir->vc_add_msg.vsi_id;
 			f.flow_id = fdir->flow_id;
 			fdir->state = IAVF_FDIR_FLTR_DEL_PENDING;
 			break;
+		} else if (fdir->state == IAVF_FDIR_FLTR_DIS_REQUEST) {
+			process_fltr = true;
+			f.vsi_id = fdir->vc_add_msg.vsi_id;
+			f.flow_id = fdir->flow_id;
+			fdir->state = IAVF_FDIR_FLTR_DIS_PENDING;
+			break;
 		}
 	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
@@ -1901,6 +1906,48 @@ static void iavf_netdev_features_vlan_strip_set(struct net_device *netdev,
 		netdev->features &= ~NETIF_F_HW_VLAN_CTAG_RX;
 }
 
+/**
+ * iavf_activate_fdir_filters - Reactivate all FDIR filters after a reset
+ * @adapter: private adapter structure
+ *
+ * Called after a reset to re-add all FDIR filters and delete some of them
+ * if they were pending to be deleted.
+ */
+static void iavf_activate_fdir_filters(struct iavf_adapter *adapter)
+{
+	struct iavf_fdir_fltr *f, *ftmp;
+	bool add_filters = false;
+
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry_safe(f, ftmp, &adapter->fdir_list_head, list) {
+		if (f->state == IAVF_FDIR_FLTR_ADD_REQUEST ||
+		    f->state == IAVF_FDIR_FLTR_ADD_PENDING ||
+		    f->state == IAVF_FDIR_FLTR_ACTIVE) {
+			/* All filters and requests have been removed in PF,
+			 * restore them
+			 */
+			f->state = IAVF_FDIR_FLTR_ADD_REQUEST;
+			add_filters = true;
+		} else if (f->state == IAVF_FDIR_FLTR_DIS_REQUEST ||
+			   f->state == IAVF_FDIR_FLTR_DIS_PENDING) {
+			/* Link down state, leave filters as inactive */
+			f->state = IAVF_FDIR_FLTR_INACTIVE;
+		} else if (f->state == IAVF_FDIR_FLTR_DEL_REQUEST ||
+			   f->state == IAVF_FDIR_FLTR_DEL_PENDING) {
+			/* Delete filters that were pending to be deleted, the
+			 * list on PF is already cleared after a reset
+			 */
+			list_del(&f->list);
+			kfree(f);
+			adapter->fdir_active_fltr--;
+		}
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
+	if (add_filters)
+		adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
+}
+
 /**
  * iavf_virtchnl_completion
  * @adapter: adapter structure
@@ -2078,7 +2125,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			spin_lock_bh(&adapter->fdir_fltr_lock);
 			list_for_each_entry(fdir, &adapter->fdir_list_head,
 					    list) {
-				if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING) {
+				if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING ||
+				    fdir->state == IAVF_FDIR_FLTR_DIS_PENDING) {
 					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
 					dev_info(&adapter->pdev->dev, "Failed to del Flow Director filter, error %s\n",
 						 iavf_stat_str(&adapter->hw,
@@ -2214,6 +2262,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
+		iavf_activate_fdir_filters(adapter);
+
 		iavf_parse_vf_resource_msg(adapter);
 
 		/* negotiated VIRTCHNL_VF_OFFLOAD_VLAN_V2, so wait for the
@@ -2390,7 +2440,9 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		list_for_each_entry_safe(fdir, fdir_tmp, &adapter->fdir_list_head,
 					 list) {
 			if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING) {
-				if (del_fltr->status == VIRTCHNL_FDIR_SUCCESS) {
+				if (del_fltr->status == VIRTCHNL_FDIR_SUCCESS ||
+				    del_fltr->status ==
+				    VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST) {
 					dev_info(&adapter->pdev->dev, "Flow Director filter with location %u is deleted\n",
 						 fdir->loc);
 					list_del(&fdir->list);
@@ -2402,6 +2454,17 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 						 del_fltr->status);
 					iavf_print_fdir_fltr(adapter, fdir);
 				}
+			} else if (fdir->state == IAVF_FDIR_FLTR_DIS_PENDING) {
+				if (del_fltr->status == VIRTCHNL_FDIR_SUCCESS ||
+				    del_fltr->status ==
+				    VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST) {
+					fdir->state = IAVF_FDIR_FLTR_INACTIVE;
+				} else {
+					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
+					dev_info(&adapter->pdev->dev, "Failed to disable Flow Director filter with status: %d\n",
+						 del_fltr->status);
+					iavf_print_fdir_fltr(adapter, fdir);
+				}
 			}
 		}
 		spin_unlock_bh(&adapter->fdir_fltr_lock);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
