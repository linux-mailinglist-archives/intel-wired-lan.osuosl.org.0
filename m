Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA17D5AAE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 20:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C31E6FC59;
	Tue, 24 Oct 2023 18:37:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C31E6FC59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698172622;
	bh=2bejsF8YbrHhpDTCeebbzZbfBcubtZi1bY4FjdOoPCY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5UFusX5EQ8NHQ4g1bFm/R/uKnmleNCKKbUOz771RqGCdXbXNRyEbuyZEfNqd6rJv0
	 PKqR4fttD/S81xnlh2ybAh7qIIsE0KU3GTbqm5KG63Y/8mU9GB/bukFhfg3k1P6+J6
	 FUkWeFnAmYBXxG0BVr3en+Rr9W1/0+8aVhEnXvyhxYGu5BEsiS2cTN3iMsdE7tk39Y
	 k6eooPliVpqqGmw1Fo0mCm/a4vwi3hTMxZv4dx+A7TJ+yaO49c+idBtvUFkPWg8oxz
	 GWc7uy35oDzF7/mDPGyIkmIojXDBC5tab5hhSwfvzihWFkHPNYZd76ZDLqv415lj/4
	 6k76NfQ1kqI2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7XT4x4KeBiy; Tue, 24 Oct 2023 18:37:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E1406FC55;
	Tue, 24 Oct 2023 18:37:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E1406FC55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB591BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 18:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 034C2408AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 18:36:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 034C2408AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dpFHk-IHL4-0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 18:36:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49F5340640
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 18:36:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49F5340640
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="377512141"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="377512141"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 11:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="902293275"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="902293275"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 11:33:02 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 11:37:14 -0700
Message-Id: <20231024183714.1680327-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698172614; x=1729708614;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o6WIfRrEmJcs5Y7wvhLXO5shlx+AELSzWJ4PJ6QF5MA=;
 b=YIj2HzcuL4+1FZfySwsG65j3q45RFH/lsxFhZOxxjzQi7zfPc+TfE0hY
 jawkQol3ib0y75050Wdkns2MxZzhT5fi0EC4VxMv/NucigPLtXC8T+OK1
 sbIaQj9GEnd2OHaJJnc8qEXmKfSnS/hErZJbjCkiBCoJbvvPTJQQii5tk
 mB5F9ORC54RzVpI0AO5R68nyHOL+Ul+yOPHCpbsLar9HO+0ojAqxrzVR5
 Kw1i60NcuYVNfDEmmozdNngV1tIC5fTXJZ21O/Ye2WZuySLC7zkTPyjMO
 BoSYDGoW2pHWpPk5G9CNMcm198Mxp1mNLFObBf2HKTSOjMK+rKyfWg/KV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YIj2Hzcu
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Fix VF Reset when interface
 in a failed over aggregate
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

There is an error interface has the following conditions:
- PF is in an aggregate (bond)
- PF has VFs created on it
- bond is in a state where it is failed-over to the secondary interface
- A VF reset is issued on one or more of those VFs

The issue is generated by the originating PF trying to tear down the VF
resources and recreate them for the reset.  Since the bond is failed over
to the secondary interface the queue contexts are in a modified state.

To fix this issue, have the originating interface reclaim its resources
prior to the tear-down and rebuild for the reset.  Then after the reset is
complete, move the resources back to the active interface.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_lag.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 47 +++++++++++++++++++++
 3 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index b980f89dc892..9b915c0da06a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -664,7 +664,7 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
  * @oldport: lport of previous interface
  * @newport: lport of destination interface
  */
-static void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
+void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
 {
 	struct ice_pf *pf;
 	int i;
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 9557e8605a07..b5e920c03ceb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -65,4 +65,5 @@ int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
 void ice_lag_rebuild(struct ice_pf *pf);
 bool ice_lag_is_switchdev_running(struct ice_pf *pf);
+void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index aca1f2ea5034..8d97acacc1b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -828,13 +828,19 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
  */
 int ice_reset_vf(struct ice_vf *vf, u32 flags)
 {
+	struct ice_lag_netdev_list ndlist;
 	struct ice_pf *pf = vf->pf;
+	struct list_head *tmp, *n;
+	struct ice_lag *lag;
 	struct ice_vsi *vsi;
 	struct device *dev;
+	u8 act_pt, pri_pt;
 	int err = 0;
 	bool rsd;
 
 	dev = ice_pf_to_dev(pf);
+	act_pt = ICE_LAG_INVALID_PORT;
+	pri_pt = pf->hw.port_info->lport;
 
 	if (flags & ICE_VF_RESET_NOTIFY)
 		ice_notify_vf_reset(vf);
@@ -845,6 +851,33 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		return 0;
 	}
 
+	lag = pf->lag;
+	mutex_lock(&pf->lag_mutex);
+	if (lag && lag->bonded && lag->primary) {
+		act_pt = lag->active_port;
+		if (act_pt != pri_pt && act_pt != ICE_LAG_INVALID_PORT &&
+		    lag->upper_netdev) {
+			struct ice_lag_netdev_list *nl;
+			struct net_device *tmp_nd;
+
+			INIT_LIST_HEAD(&ndlist.node);
+			rcu_read_lock();
+			for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
+				nl = kzalloc(sizeof(*nl), GFP_KERNEL);
+				if (!nl)
+					break;
+
+				nl->netdev = tmp_nd;
+				list_add(&nl->node, &ndlist.node);
+			}
+			rcu_read_unlock();
+			lag->netdev_head = &ndlist.node;
+			ice_lag_move_vf_nodes(lag, act_pt, pri_pt);
+		} else {
+			act_pt = ICE_LAG_INVALID_PORT;
+		}
+	}
+
 	if (flags & ICE_VF_RESET_LOCK)
 		mutex_lock(&vf->cfg_lock);
 	else
@@ -937,6 +970,20 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	if (flags & ICE_VF_RESET_LOCK)
 		mutex_unlock(&vf->cfg_lock);
 
+	if (lag && lag->bonded && lag->primary &&
+	    act_pt != ICE_LAG_INVALID_PORT) {
+		ice_lag_move_vf_nodes(lag, pri_pt, act_pt);
+		list_for_each_safe(tmp, n, &ndlist.node) {
+			struct ice_lag_netdev_list *entry;
+
+			entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+			list_del(&entry->node);
+			kfree(entry);
+		}
+		lag->netdev_head = NULL;
+	}
+	mutex_unlock(&pf->lag_mutex);
+
 	return err;
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
