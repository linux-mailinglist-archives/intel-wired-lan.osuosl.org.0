Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F68A3019F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 03:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53F3B81E4A;
	Tue, 11 Feb 2025 02:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8EcrrvIdzMzX; Tue, 11 Feb 2025 02:41:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B14081E50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739241686;
	bh=pp3e3CVsBW0TC+aMtk3qQNSMURHGIAsxWZyLA+51BlA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l98fSM1obX3nhfr143wwKqHYWSQaFXEbc2if40TuuaPhqnpkVPtan1fVDE5pKrl8o
	 YVH8M7OgTN0OgMb4w80r9+TdwPTsr0mfvs+tfJEQtZt7GakWOA/FY05KdSWXBr4TU+
	 LqierCcNNDGDExNsvWuWsUTBx5HjxEyo67m6hGCNq1I0tqrXGNL1PRyD4Jsq3zQ2gI
	 i5diM3qxrSOQRROVfvOlbJ07UuaUyAmLG6x29xIWwpShOPkd1wtSJ6t/qfICI4cdLY
	 E7SXWUv7M4N1PMtLZLP4HVu69+WOms17EidpVHe5/kNLkVuFQXW6uo5b47n+8vEYjp
	 PF8wm3cIW8JGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B14081E50;
	Tue, 11 Feb 2025 02:41:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 73C535E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 02:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 615FE415B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 02:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFWyZnbuoDc5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 02:41:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 743BC4149D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 743BC4149D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 743BC4149D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 02:41:23 +0000 (UTC)
X-CSE-ConnectionGUID: ugcCrfKVSN2sev22372jXA==
X-CSE-MsgGUID: KGp9hgYwSc2IkyLPdcUa6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50483862"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="50483862"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 18:41:21 -0800
X-CSE-ConnectionGUID: CLmtrMOVRZ+N5emmFzHgXQ==
X-CSE-MsgGUID: QlUJ7qYUT2eLFpUKHpID0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135635057"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa002.fm.intel.com with ESMTP; 10 Feb 2025 18:41:20 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, decot@google.com, willemb@google.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, madhu.chittim@intel.com
Date: Mon, 10 Feb 2025 18:38:51 -0800
Message-Id: <20250211023851.21090-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739241684; x=1770777684;
 h=from:to:cc:subject:date:message-id;
 bh=0I4trm11Zt0vOhZIkPvv8fZ+KaLcMHXs1mD4PkidyuQ=;
 b=aRrGhwwmIBjZvVBmB1neBo41JhZI8luYHkUfkC2iOw2PpVFOi1EoHE7t
 aot+tszvBK7+MM0J/DD9C3rxmXvYqfE9a63t32jHGkons45dyj5XJGrFQ
 micPeyd958eI0TqKq9v52jKDgnT6/gQ+Ka7PZGCvh+BL1RVaok/G+VGZt
 t2lCJGbdtqcf86jeZfuiUThUoVkwF6o5E95kTlHtIJYrH3O7YJaxYAD0c
 aUTEjy0NidLQm50hWH5TgUQGf/K6MAtnqKIWr+K2S9pX4CfELaYrbJaqF
 MqIDh/qBSo1dyxPhX8Bm6iQH8v6UdD37hofVbj0jONNs7SUN5ICo+BA5O
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aRrGhwwm
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: check error for
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
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 27 ++++++++++++++--------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index a3d6b8f198a8..a322a8ac771e 100644
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
@@ -1536,12 +1540,17 @@ void idpf_init_task(struct work_struct *work)
 	}
 
 	for (index = 0; index < adapter->max_vports; index++) {
-		if (adapter->netdevs[index] &&
-		    !test_bit(IDPF_VPORT_REG_NETDEV,
-			      adapter->vport_config[index]->flags)) {
-			register_netdev(adapter->netdevs[index]);
-			set_bit(IDPF_VPORT_REG_NETDEV,
-				adapter->vport_config[index]->flags);
+		struct idpf_vport_config *vport_config = adapter->vport_config[index];
+		struct net_device *netdev = adapter->netdevs[index];
+
+		if (netdev && !test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags)) {
+			err = register_netdev(netdev);
+			if (err) {
+				dev_err(&pdev->dev, "failed to register netdev for vport %d: %pe\n",
+					index, ERR_PTR(err));
+				continue;
+			}
+			set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
 		}
 	}
 
-- 
2.17.2

