Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95932D540D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 07:42:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 796C287644;
	Thu, 10 Dec 2020 06:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rn1xsiyGA+te; Thu, 10 Dec 2020 06:42:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8DCC875C3;
	Thu, 10 Dec 2020 06:42:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25BED1BF947
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 06:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 208BB871A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 06:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGIgZaiwNKwW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 06:42:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8929587122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 06:42:16 +0000 (UTC)
IronPort-SDR: xrtScKQydLTUo0fZxNbCb0kqTPEnPZHVRjJo9ur2TateS7TxaLeBU27INVnMQ/Po7X82iGXLYL
 715xRSW4UglA==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="258923517"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="258923517"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 22:42:15 -0800
IronPort-SDR: gbTERDkMzHdfkjRdQcbehWbn+bu2Add9IfvsC3S/q4StjbasgfAJuz/2CWAnhNI+UbRne1X85u
 nCLdcDEQImHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="364484541"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga008.jf.intel.com with ESMTP; 09 Dec 2020 22:42:14 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Dec 2020 08:42:09 +0200
Message-Id: <20201210064209.1030243-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose the NVM version
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

Expose the NVM map version via drvinfo in ethtool
NVM image version is reported as firmware version for i225 device
Minor typo fix - remove space

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 16 ++++++++++++++--
 3 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cbf85dea8b2e..29be8833956a 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -221,6 +221,7 @@ struct igc_adapter {
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 
 	struct bpf_prog *xdp_prog;
+	char fw_version[16];
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index efddb9012439..882e1e272953 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -160,6 +160,7 @@
 #define IGC_NVM_RW_REG_START	1    /* Start operation */
 #define IGC_NVM_RW_ADDR_SHIFT	2    /* Shift to the address bits */
 #define IGC_NVM_POLL_READ	0    /* Flag for polling for read complete */
+#define IGC_NVM_DEV_STARTER	5    /* Dev_starter Version */
 
 /* NVM Word Offsets */
 #define NVM_CHECKSUM_REG		0x003F
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 29da2710b500..56997de15a1e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -129,10 +129,22 @@ static void igc_ethtool_get_drvinfo(struct net_device *netdev,
 				    struct ethtool_drvinfo *drvinfo)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	u16 nvm_version = 0;
+
+	strlcpy(drvinfo->driver, igc_driver_name, sizeof(drvinfo->driver));
+
+	/* NVM image version is reported as firmware version for i225 device */
+	hw->nvm.ops.read(hw, IGC_NVM_DEV_STARTER, 1, &nvm_version);
+
+	scnprintf(adapter->fw_version,
+		  sizeof(adapter->fw_version),
+		  "%x",
+		  nvm_version);
 
-	strlcpy(drvinfo->driver,  igc_driver_name, sizeof(drvinfo->driver));
+	strlcpy(drvinfo->fw_version, adapter->fw_version,
+		sizeof(drvinfo->fw_version));
 
-	/* add fw_version here */
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
