Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48958A7EC60
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:15:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2D7C40CAE;
	Mon,  7 Apr 2025 19:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P3qW2uSmh6mF; Mon,  7 Apr 2025 19:15:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23B6E40C55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053355;
	bh=nwUCE1/C6h8dD5zWGpSUGSdBpHhB85xLfoKZywaiBLQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=plPfEqADZFJ2bWN3sHbGl4t+4yjt8/FzbBh7JImGIvAf1BoYdUiOxe3otLWV9feby
	 iWPPNNQKc+SnMtZVmgNJeJC4modKVtFd0URgsrXS/kgcWqhtXnG6CIocpx214b52BQ
	 L19CZn7h3XAyqYvRfEO93brkfqSeqsAklCv2n5c2Egpia5qs4EEOoHBX2W+OGQGFrF
	 1JczUGxnUs1TC8zfRzXOzFXvApNRTcIQ3lmR3a0D8IA3k9/A4mo7Udz4CQzN/m/YgS
	 emayHgkMhDhNpF+0ExIIEtWPaZjRf9OS3pDleGGf142AUs5WlmbnFx3RN4wCWRM45I
	 lLMMzOKyUt9bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23B6E40C55;
	Mon,  7 Apr 2025 19:15:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C1F9DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8890841400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xR-Cjd9c7RR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C494441052
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C494441052
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C494441052
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:51 +0000 (UTC)
X-CSE-ConnectionGUID: eRlRHqmRTvuuFjZK3cWAuA==
X-CSE-MsgGUID: UbkIqg3PREuBhO/Rk0KJDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49307034"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49307034"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
X-CSE-ConnectionGUID: /8ZU9hY5Qv+/K2WTpxh6pw==
X-CSE-MsgGUID: FFjBeap2T2yGIcjMOnF3qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128979581"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  7 Apr 2025 15:15:10 -0400
Message-ID: <20250407191517.767433-2-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250407191517.767433-1-david.m.ertman@intel.com>
References: <20250407191517.767433-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053352; x=1775589352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ACRpxmA3dW03rytIViXJxaDfGP1pq71cbnazIHBZnIA=;
 b=OzFweNWKFelzQIjd44mC3gs6JuvFIz+jXpYOZLXFzLoYiqRZV9Aqcj/+
 Bm8WYGS/IUBLBL6fFEKvWjwg1J2OpbNEFTizDxZkzUA4+/6pTW8Gq5DFs
 vsFfOdXNOqAiJszVyzUiF3OMsf+IXRuDS1XaYHQ56KEAdRA53NxqV0jnJ
 TN+ZVy1AZXfKG3pz3NdgRpDtCCXsBk3roCtrTDzKbv/pLZ8R+vRFGm+aB
 ynCotBvtI/aasB5ZaX42cVNo7QPkbomu7tnWDmkAfrwz1rVz2HndCUmoP
 bwN24mdt8b8gAu9QaHTbh8EBSlETfXm3mgo/WYYLwCwX9nkb8Mb+EqQj4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OzFweNWK
Subject: [Intel-wired-lan] [PATCH iwl-next 1/8] ice: Remove casts on void
 pointers in LAG code
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
index 22371011c249..e64615d5d1b7 100644
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
@@ -1360,7 +1357,7 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_changeupper_info *info;
+	struct netdev_notifier_changeupper_info *info = ptr;
 	struct ice_hw *prim_hw, *active_hw;
 	struct net_device *event_netdev;
 	struct ice_pf *pf;
@@ -1377,7 +1374,6 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 	prim_hw = &pf->hw;
 	prim_port = prim_hw->port_info->lport;
 
-	info = (struct netdev_notifier_changeupper_info *)ptr;
 	if (info->upper_dev != lag->upper_netdev)
 		return;
 
@@ -1406,8 +1402,8 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 {
+	struct netdev_notifier_bonding_info *info = ptr;
 	struct net_device *event_netdev, *event_upper;
-	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
 	struct ice_netdev_priv *event_np;
 	struct ice_pf *pf, *event_pf;
@@ -1432,7 +1428,6 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 	event_port = event_pf->hw.port_info->lport;
 	prim_port = pf->hw.port_info->lport;
 
-	info = (struct netdev_notifier_bonding_info *)ptr;
 	bonding_info = &info->bonding_info;
 
 	if (!bonding_info->slave.state) {
@@ -1479,8 +1474,8 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 static bool
 ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 {
+	struct netdev_notifier_bonding_info *info = ptr;
 	struct net_device *event_netdev, *event_upper;
-	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
 	struct list_head *tmp;
 	struct device *dev;
@@ -1506,7 +1501,6 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		return false;
 	}
 
-	info = (struct netdev_notifier_bonding_info *)ptr;
 	bonding_info = &info->bonding_info;
 	lag->bond_mode = bonding_info->master.bond_mode;
 	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
@@ -1616,10 +1610,9 @@ ice_lag_unregister(struct ice_lag *lag, struct net_device *event_netdev)
 static void
 ice_lag_monitor_rdma(struct ice_lag *lag, void *ptr)
 {
-	struct netdev_notifier_changeupper_info *info;
+	struct netdev_notifier_changeupper_info *info = ptr;
 	struct net_device *netdev;
 
-	info = ptr;
 	netdev = netdev_notifier_info_to_dev(ptr);
 
 	if (netdev != lag->netdev)
@@ -1789,9 +1782,8 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
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

