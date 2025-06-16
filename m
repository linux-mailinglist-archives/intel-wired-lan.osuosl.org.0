Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB9EADB945
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3175460895;
	Mon, 16 Jun 2025 19:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9_u_SWQ7BouO; Mon, 16 Jun 2025 19:03:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 811E660896
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750100582;
	bh=hMXyyIuHPA/GKsLqjebuoMgybi7IIgI7reUe9eDNaFs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mrVx1SHL2q7H3g32VDovLLqw/UrXt9TB3V+5/a3iiUZ+dSef7LJLCUomEO388xLQs
	 F3AJEhVOBt0NkNbPEsq5CMKZKe/8r+1bK6pPqX/Pv+whlbXFXjYQftMM9HNtW0HddL
	 I4xLQsC1OY4ApF6j4vzajy+j7GRWxK7rpQx8KYFiDPPpr90mJqTyF8wnY/YrithTmn
	 zHCVBdltbxzCsOlJxaPQC/WmBCLc1j6X/QvflaoFeFn0omk2RwS0jewAnW5Wxpgh4q
	 y99INxHVbVv8r657iOmVlPad4ee6l9PqVFnI3p3sJeAgdwvSglOXaDvzL7uQrMX7Gc
	 jY+ltOU1udU5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 811E660896;
	Mon, 16 Jun 2025 19:03:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 205B216B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B3638089C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W2ciFjl1XEvi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:02:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A32618087E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A32618087E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A32618087E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:57 +0000 (UTC)
X-CSE-ConnectionGUID: jVXMFtqHTiqguywYtPU0ww==
X-CSE-MsgGUID: 2d/rXsv4STSFP914VQeaFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52122666"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52122666"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
X-CSE-ConnectionGUID: mMDUvx2xQ1WrqM4Lv1aH4Q==
X-CSE-MsgGUID: LKNfzyimTVWmq7EjRV1uMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153513098"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 16 Jun 2025 13:03:16 +0200
Message-ID: <20250616110323.788970-2-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616110323.788970-1-david.m.ertman@intel.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750100577; x=1781636577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nbuwlBJrlz0G5RnPpaB+RJ8ND9r0kTcM+wG61vdJ22E=;
 b=jSVXSbBywAfh++8tYdKev3iwOmiT1i5k9KfoYAcRvEPiqcnxbGdq8OUR
 LihBlTkUek7yKN595ngGV3BWRZdvrR9cITbSumffP3caHZot3NemIG2au
 Kr3DHBVw47wGvtQjwwF7mXodGy3VJGOvwfXTt5rP6wTsNhIs4K03S3HVa
 KfREx8HEPviLj63ZcGyP1OfoNG65qQZv541tuesBRU5wStOCE4pq9Q4aP
 pGNDLEnGUjFMkC0lxmTBzPY/lbqIgETaiibOmMiFD1kLlQ95ccL9PdWCS
 OHeemMTgeq46QYHh6rkW0asLahHBQvETS8VInhFMfK+9qT41LN250mP2t
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jSVXSbBy
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/8] [PATCH iwl-next v3 1/8]
 ice: Remove casts on void pointers in LAG
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

code

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

