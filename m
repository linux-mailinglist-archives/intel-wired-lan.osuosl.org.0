Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A56E233A51E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Mar 2021 14:59:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECD17483DF;
	Sun, 14 Mar 2021 13:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKL1M1Wz8z_R; Sun, 14 Mar 2021 13:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD27847CA5;
	Sun, 14 Mar 2021 13:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03BE91BF20B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 13:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0C8940152
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 13:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQIQ6f4j0JVC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Mar 2021 13:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32C1E40148
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 13:59:29 +0000 (UTC)
IronPort-SDR: WLB2TNvV41ps8THrrQKyyBueNyH31U7DAYJxDX6c634wWch0aRcVGqCfnPHPC3JWGb7Jw9FKD9
 UXuMBoMfNhJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="253009806"
X-IronPort-AV: E=Sophos;i="5.81,248,1610438400"; d="scan'208";a="253009806"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2021 06:59:26 -0700
IronPort-SDR: IC2XlaEyQqyhlGE1OU57Siw/hbwIjxbukmpg+kXApVUbZVAhQBqnv1Syk7bkp3tZOlMryNc2UV
 o4J/jV5ML4Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,248,1610438400"; d="scan'208";a="410385432"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga007.jf.intel.com with ESMTP; 14 Mar 2021 06:59:25 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, anna.kostyukovsky@intel.com,
 dvorax.fuxbrumer@linux.intel.com
Date: Sun, 14 Mar 2021 15:59:20 +0200
Message-Id: <20210314135920.56649-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix prototype warning
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

Correct report warnings in ich8lan.c, netdev.c phy.c and ptp.c files

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
 drivers/net/ethernet/intel/e1000e/netdev.c  | 6 +++---
 drivers/net/ethernet/intel/e1000e/phy.c     | 2 +-
 drivers/net/ethernet/intel/e1000e/ptp.c     | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 8c5aaa523b01..5dd82414c6a6 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -2750,7 +2750,7 @@ static s32 e1000_lv_phy_workarounds_ich8lan(struct e1000_hw *hw)
 }
 
 /**
- *  e1000_k1_gig_workaround_lv - K1 Si workaround
+ *  e1000_k1_workaround_lv - K1 Si workaround
  *  @hw:   pointer to the HW structure
  *
  *  Workaround to set the K1 beacon duration for 82579 parts in 10Mbps
@@ -5227,7 +5227,7 @@ void e1000e_set_kmrn_lock_loss_workaround_ich8lan(struct e1000_hw *hw,
 }
 
 /**
- *  e1000_ipg3_phy_powerdown_workaround_ich8lan - Power down workaround on D3
+ *  e1000e_igp3_phy_powerdown_workaround_ich8lan - Power down workaround on D3
  *  @hw: pointer to the HW structure
  *
  *  Workaround for 82566 power-down on D3 entry:
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index ecbe91cb95ed..efa42a6a2f3c 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5993,7 +5993,7 @@ static void e1000_reset_task(struct work_struct *work)
 }
 
 /**
- * e1000_get_stats64 - Get System Network Statistics
+ * e1000e_get_stats64 - Get System Network Statistics
  * @netdev: network interface device structure
  * @stats: rtnl_link_stats64 pointer
  *
@@ -6166,7 +6166,7 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
 }
 
 /**
- * e1000e_hwtstamp_ioctl - control hardware time stamping
+ * e1000e_hwtstamp_set - control hardware time stamping
  * @netdev: network interface device structure
  * @ifr: interface request
  *
@@ -6824,7 +6824,7 @@ static void e1000e_disable_aspm(struct pci_dev *pdev, u16 state)
 }
 
 /**
- * e1000e_disable_aspm_locked   Disable ASPM states.
+ * e1000e_disable_aspm_locked - Disable ASPM states.
  * @pdev: pointer to PCI device struct
  * @state: bit-mask of ASPM states to disable
  *
diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index bdd9dc163f15..1db35b2c7750 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -371,7 +371,7 @@ s32 e1000e_read_phy_reg_igp_locked(struct e1000_hw *hw, u32 offset, u16 *data)
 }
 
 /**
- *  e1000e_write_phy_reg_igp - Write igp PHY register
+ *  __e1000e_write_phy_reg_igp - Write igp PHY register
  *  @hw: pointer to the HW structure
  *  @offset: register offset to write to
  *  @data: data to write at register offset
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 41213baee050..eb5c014c02fb 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -142,7 +142,7 @@ static int e1000e_phc_get_syncdevicetime(ktime_t *device,
 }
 
 /**
- * e1000e_phc_getsynctime - Reads the current system/device cross timestamp
+ * e1000e_phc_getcrosststamp - Reads the current system/device cross timestamp
  * @ptp: ptp clock structure
  * @xtstamp: structure containing timestamp
  *
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
