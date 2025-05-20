Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1009ABE3D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 21:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ED1240A91;
	Tue, 20 May 2025 19:39:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NjUPQhzA1PEE; Tue, 20 May 2025 19:39:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF32540A6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747769998;
	bh=EQYEJ/ZuWGBDv8FdA1UYvCzPHdlJewMWZya9RpkGm7Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5R9V6fPXUii46NGDhKEEpgbYSJ+W1BNd0+iXycGbjZmL7rJa+yeYooB3PsIsAz+cT
	 Ycug4Gx0yMcrRKLTdWWL00g96Kcg2UHc3aw96MY6O27EYqSgWTPsykIbYFFmj53Lfa
	 ZEM/A1+Nf7KcNSKkNk1+OGgkONDoGeM1ZxG5Xz552ksXWJKF131T1usYYTuqQNbGju
	 zR0+wHxo+QNKrsomFrEo0+fpGViYd/QVve0XpwB0EIjgTpQtNvp1CQzSzedty41ugQ
	 L8So6i3tOJkEYivtYHFu9FeQe7MsOAAnkBI62h2ITa6rmakuKCLcdnJoT2Aew9SrIj
	 53lQWN9O1qUUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF32540A6E;
	Tue, 20 May 2025 19:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D9B3D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FDB840A91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ystf-DJQ3FXb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 19:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F01B40A78
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F01B40A78
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F01B40A78
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:55 +0000 (UTC)
X-CSE-ConnectionGUID: wB6G6ZiGT22439goFMOUKA==
X-CSE-MsgGUID: BSY5PI+lQZuqyuuyeQlD0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="75123545"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75123545"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
X-CSE-ConnectionGUID: sBQz+k2NTUOIVPx9PO6RRw==
X-CSE-MsgGUID: apS0tliHQeKAdECwMgGOYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140198868"
Received: from dmert-vmdev.jf.intel.com ([10.165.17.51])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 20 May 2025 15:39:23 -0400
Message-ID: <20250520193930.3763888-2-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520193930.3763888-1-david.m.ertman@intel.com>
References: <20250520193930.3763888-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747769996; x=1779305996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FWNZxsutR3o1v0SrrJkWkxur54vX6QruKgZ85TVWQd0=;
 b=YoU4DHicz8vGS16cGGe3Ym2PTaFrFcW+9PF+a7Xad0wbSJ2n26seiAQw
 zWuSTvdQDtA4jOXijggIIKauKGVuF3A+6+1q1kePqpHw0wOWrTydjRWmd
 rKDXuV3/b7deFsxVy5AnKZccN5BF2Y1f7Fo4lUlSZ5+EOIZjePGhfJuMN
 gYPKtndJzQj22Wooya4sR2WwD2EEJS3ikkwNHTy/NgpYkE+rMC6I89p7e
 eI1MTYe3lOxgEe0d5J0CAEXU71vI8e638ZmpYYHRZf6izNfU9/64ITgp+
 P4RTFrqNDbz5TFUTsRGnrhJxK+pfOuOD4P0tlVgX3DMK/5vRL9yoUis5X
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YoU4DHic
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/8] [PATCH iwl-next 1/8] ice:
 Remove casts on void pointers in LAG code
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series will be touching on the LAG code in the ice driver,
to prevent moving or propagating casting on void pointers, clean
them up first.

This also allows for moving the variable initialization into the
variable declaration.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 2410aee59fb2..5cb3e1a9657d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -321,7 +321,7 @@ ice_lag_cfg_drop_fltr(struct ice_lag *lag, bool add)
 static void
 ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_bonding_info *info;
+	struct netdev_notifier_bonding_info *info = ptr;
 	struct netdev_bonding_info *bonding_info;
 	struct net_device *event_netdev;
 	struct device *dev;
@@ -331,7 +331,6 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	if (event_netdev != lag->netdev)
 		return;
 
-	info = (struct netdev_notifier_bonding_info *)ptr;
 	bonding_info = &info->bonding_info;
 	dev = ice_pf_to_dev(lag->pf);
 
@@ -831,13 +830,12 @@ ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
  */
 static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_bonding_info *info;
+	struct netdev_notifier_bonding_info *info = ptr;
 	struct netdev_bonding_info *bonding_info;
 	struct net_device *event_netdev;
 	const char *lag_netdev_name;
 
 	event_netdev = netdev_notifier_info_to_dev(ptr);
-	info = ptr;
 	lag_netdev_name = netdev_name(lag->netdev);
 	bonding_info = &info->bonding_info;
 
@@ -1302,11 +1300,10 @@ static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
  */
 static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_changeupper_info *info;
+	struct netdev_notifier_changeupper_info *info = ptr;
 	struct ice_lag *primary_lag;
 	struct net_device *netdev;
 
-	info = ptr;
 	netdev = netdev_notifier_info_to_dev(ptr);
 
 	/* not for this netdev */
@@ -1366,7 +1363,7 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_changeupper_info *info;
+	struct netdev_notifier_changeupper_info *info = ptr;
 	struct ice_hw *prim_hw, *active_hw;
 	struct net_device *event_netdev;
 	struct ice_pf *pf;
@@ -1383,7 +1380,6 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 	prim_hw = &pf->hw;
 	prim_port = prim_hw->port_info->lport;
 
-	info = (struct netdev_notifier_changeupper_info *)ptr;
 	if (info->upper_dev != lag->upper_netdev)
 		return;
 
@@ -1412,8 +1408,8 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 {
+	struct netdev_notifier_bonding_info *info = ptr;
 	struct net_device *event_netdev, *event_upper;
-	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
 	struct ice_netdev_priv *event_np;
 	struct ice_pf *pf, *event_pf;
@@ -1438,7 +1434,6 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 	event_port = event_pf->hw.port_info->lport;
 	prim_port = pf->hw.port_info->lport;
 
-	info = (struct netdev_notifier_bonding_info *)ptr;
 	bonding_info = &info->bonding_info;
 
 	if (!bonding_info->slave.state) {
@@ -1485,8 +1480,8 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 static bool
 ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 {
+	struct netdev_notifier_bonding_info *info = ptr;
 	struct net_device *event_netdev, *event_upper;
-	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
 	struct list_head *tmp;
 	struct device *dev;
@@ -1512,7 +1507,6 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		return false;
 	}
 
-	info = (struct netdev_notifier_bonding_info *)ptr;
 	bonding_info = &info->bonding_info;
 	lag->bond_mode = bonding_info->master.bond_mode;
 	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
@@ -1622,10 +1616,9 @@ ice_lag_unregister(struct ice_lag *lag, struct net_device *event_netdev)
 static void
 ice_lag_monitor_rdma(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_changeupper_info *info;
+	struct netdev_notifier_changeupper_info *info = ptr;
 	struct net_device *netdev;
 
-	info = ptr;
 	netdev = netdev_notifier_info_to_dev(ptr);
 
 	if (netdev != lag->netdev)
@@ -1795,9 +1788,8 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
 	lag_work->lag = lag;
 	lag_work->event = event;
 	if (event == NETDEV_CHANGEUPPER) {
-		struct netdev_notifier_changeupper_info *info;
+		struct netdev_notifier_changeupper_info *info = ptr;
 
-		info = ptr;
 		upper_netdev = info->upper_dev;
 	} else {
 		upper_netdev = netdev_master_upper_dev_get(netdev);
-- 
2.49.0

