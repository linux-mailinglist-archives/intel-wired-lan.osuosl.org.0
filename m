Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1F2A36455
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 18:20:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1C6F6F7D7;
	Fri, 14 Feb 2025 17:20:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pSeeiMJJtGtZ; Fri, 14 Feb 2025 17:20:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D06156FB21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739553650;
	bh=oFxdvfsmWc4WJ/1HRRB4iR6yLU62grF2Xn2sSUHT8MI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JzmEdxymNdgPO/Sdcun3WI1GQo/6Ys8pVaXf1YbjkGzewtwGpB4FFkuMKdJz0xuCk
	 8Nyk42zoj2QTahcv+C2RXUAcgb4EUa0tlf9hB/lDroZZ/DJbEyeuZ6XvI2htvmfa6U
	 0PTpFDkEDSaKehM1xH0xBxCpOjOFv45qm/e2uS6pq4PSo1swelSuWpEy91r9SO9RsC
	 EYb91VMw0rTJGlXEeoahn0lAuxUW2M2dJjtaEpOGPh+PvlzUOyXGHfYu1ZeM7YizQ0
	 dIzBAtd8xHMJKVgKyMjo3bwqrx76xp/RcUYrkdyLV3SkZ3SFoF1i3xMtpR3UDRKLku
	 QopR7r6h/coHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D06156FB21;
	Fri, 14 Feb 2025 17:20:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60CBE1F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 430CE41710
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMnDdLKD0OI3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 17:20:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F6A1411D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F6A1411D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F6A1411D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:20:46 +0000 (UTC)
X-CSE-ConnectionGUID: vgROmMyQQ8GR4/u1YOeAvA==
X-CSE-MsgGUID: tuhxTvDYQ4mL4quJR8/kNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40434012"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40434012"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:20:46 -0800
X-CSE-ConnectionGUID: sQb1IXE0QfGcsCoFStU+gQ==
X-CSE-MsgGUID: trJRopkRRpe1+E2xLqg3cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="114146891"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa009.fm.intel.com with ESMTP; 14 Feb 2025 09:20:45 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, decot@google.com, willemb@google.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, madhu.chittim@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Date: Fri, 14 Feb 2025 09:18:16 -0800
Message-Id: <20250214171816.30562-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739553647; x=1771089647;
 h=from:to:cc:subject:date:message-id;
 bh=c7VfgXKHp1OZBgXtuywg0L2o48OTJ5wlU6SbWNc1s2k=;
 b=GwAqEiPn9bYS/dKamH4NaGykhftUg+tsKbQzT6jjjKsSiikyGzxbkDG7
 cYu2VQjKoEcuYCaHkqcSYxRK7AkgnqHHr7gZdXPEAgaryuwwyw/FhymYz
 h8PdSqsxmSUy/aaJZI6hsN/eMvKupMKoSRALFn4KzYmP72Lh7Y2nqfiUS
 9+h39CD4K1bVyfozPdQcTMSieybeQf4t660qTGdMCeB2V/Er2DulKUJ8B
 HdnOraihRk362Yw7geD8waK5UhTxJL3konzG6qVZvAyy260q4C+2/CRu8
 lkK3Z3NwWcXNy/8L3qZ1hppVjxtaJFS5YpP/qqlreDJA6SsATxVF7bIMY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GwAqEiPn
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: check error for
 register_netdev() on init
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

Current init logic ignores the error code from register_netdev(),
which will cause WARN_ON() on attempt to unregister it, if there was one,
and there is no info for the user that the creation of the netdev failed.

WARNING: CPU: 89 PID: 6902 at net/core/dev.c:11512 unregister_netdevice_many_notify+0x211/0x1a10
...
[ 3707.563641]  unregister_netdev+0x1c/0x30
[ 3707.563656]  idpf_vport_dealloc+0x5cf/0xce0 [idpf]
[ 3707.563684]  idpf_deinit_task+0xef/0x160 [idpf]
[ 3707.563712]  idpf_vc_core_deinit+0x84/0x320 [idpf]
[ 3707.563739]  idpf_remove+0xbf/0x780 [idpf]
[ 3707.563769]  pci_device_remove+0xab/0x1e0
[ 3707.563786]  device_release_driver_internal+0x371/0x530
[ 3707.563803]  driver_detach+0xbf/0x180
[ 3707.563816]  bus_remove_driver+0x11b/0x2a0
[ 3707.563829]  pci_unregister_driver+0x2a/0x250

Introduce an error check and log the vport number and error code.
On removal make sure to check VPORT_REG_NETDEV flag prior to calling
unregister and free on the netdev.

Add local variables for idx, vport_config and netdev for readability.

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
Changelog:
v2:
- Refactored a bit to avoid >80 char lines.
- Changed the netdev and flag check to allow for early continue in the
  max_vports loop, which also helps to reduce the identation.

v1:
https://lore.kernel.org/intel-wired-lan/20250211023851.21090-1-emil.s.tantilov@intel.com/

---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 31 +++++++++++++++-------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index a3d6b8f198a8..a055a47449f1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -927,15 +927,19 @@ static int idpf_stop(struct net_device *netdev)
 static void idpf_decfg_netdev(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
+	u16 idx = vport->idx;
 
 	kfree(vport->rx_ptype_lkup);
 	vport->rx_ptype_lkup = NULL;
 
-	unregister_netdev(vport->netdev);
-	free_netdev(vport->netdev);
+	if (test_and_clear_bit(IDPF_VPORT_REG_NETDEV,
+			       adapter->vport_config[idx]->flags)) {
+		unregister_netdev(vport->netdev);
+		free_netdev(vport->netdev);
+	}
 	vport->netdev = NULL;
 
-	adapter->netdevs[vport->idx] = NULL;
+	adapter->netdevs[idx] = NULL;
 }
 
 /**
@@ -1536,13 +1540,22 @@ void idpf_init_task(struct work_struct *work)
 	}
 
 	for (index = 0; index < adapter->max_vports; index++) {
-		if (adapter->netdevs[index] &&
-		    !test_bit(IDPF_VPORT_REG_NETDEV,
-			      adapter->vport_config[index]->flags)) {
-			register_netdev(adapter->netdevs[index]);
-			set_bit(IDPF_VPORT_REG_NETDEV,
-				adapter->vport_config[index]->flags);
+		struct net_device *netdev = adapter->netdevs[index];
+		struct idpf_vport_config *vport_config;
+
+		vport_config = adapter->vport_config[index];
+
+		if (!netdev ||
+		    test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags))
+			continue;
+
+		err = register_netdev(netdev);
+		if (err) {
+			dev_err(&pdev->dev, "failed to register netdev for vport %d: %pe\n",
+				index, ERR_PTR(err));
+			continue;
 		}
+		set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
 	}
 
 	/* As all the required vports are created, clear the reset flag
-- 
2.17.2

