Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A1F43B612
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 17:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FA1980F0E;
	Tue, 26 Oct 2021 15:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mrxEDPb0NhXD; Tue, 26 Oct 2021 15:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 851A780C0B;
	Tue, 26 Oct 2021 15:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C80B1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 15:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 682D460A65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 15:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQNzny74_rTb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 15:50:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C443760747
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 15:50:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="316148109"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="316148109"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 08:47:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="537188576"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 26 Oct 2021 08:47:35 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19QFlYAa027398; Tue, 26 Oct 2021 16:47:34 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 17:46:28 +0200
Message-Id: <20211026154628.15787-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Clear synchronized addrs
 when adding VFs in switchdev mode
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

When spawning VFs in switchdev mode, internal filter list of vsi is
cleared, which includes MAC rules. However MAC entries stay on netdev's
multicast list, which causes error message when bringing link up after
spawning VFs ("Failed to delete MAC filters"). __dev_mc_sync() is
called and tries to unsync addresses that were already removed
internally when adding VFs.

This can be reproduced with:
1) Load ice driver
2) Change PF to switchdev mode
3) Bring PF link up
4) Bring PF link down
5) Create a VF on PF
6) Bring PF link up

Added clearing of netdev's multicast (and also unicast) list when
spawning VFs in switchdev mode, so the state of internal rule list and
netdev's MAC list is consistent.

Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 6cb50653b18d..d1d7389b0bff 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -19,6 +19,7 @@
 static int ice_eswitch_setup_env(struct ice_pf *pf)
 {
 	struct ice_vsi *uplink_vsi = pf->switchdev.uplink_vsi;
+	struct net_device *uplink_netdev = uplink_vsi->netdev;
 	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
 	struct ice_port_info *pi = pf->hw.port_info;
 	bool rule_added = false;
@@ -27,6 +28,11 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
 
+	netif_addr_lock_bh(uplink_netdev);
+	__dev_uc_unsync(uplink_netdev, NULL);
+	__dev_mc_unsync(uplink_netdev, NULL);
+	netif_addr_unlock_bh(uplink_netdev);
+
 	if (ice_vsi_add_vlan(uplink_vsi, 0, ICE_FWD_TO_VSI))
 		goto err_def_rx;
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
