Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 910794E7055
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 10:57:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1B9D41700;
	Fri, 25 Mar 2022 09:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yf4Mj2fQ6bxt; Fri, 25 Mar 2022 09:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0498F40491;
	Fri, 25 Mar 2022 09:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE35C1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 09:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABB9F60AD7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 09:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QxikKzMKWTon for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 09:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B41160AAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 09:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648202237; x=1679738237;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oaPwjuxGDbKm6yYwjvUmlwzgndWEvTPpuRPlMMKHjJU=;
 b=hENgs4Y/VuI+I3Wnid/W3X8KJMJT8gqpwm1jSZ5bq1/V4rcZEWulsuoR
 4WfGd84UnE7801aLODQ/Cd6ETtP8IZPR4RjtSq3tg0zbGNmFkF0HGhNVF
 9W6hRTSFdeoT4xt6YRsE+moWjabKVui/RsaXGRZCVMa77RA7d6iO42moE
 TI+prqEwrV84f+SGtiT6wSy62Bwi+4Yl/+f7s/N9Jl1hrGYMXH5GnzvVY
 O3maY5D+sD3j0l1ICQEv/GDWwBlyXsDV16keY56pAsCjgrtov50f1jmhe
 iJxpqcsgZ36L7LdjidXJ1s5KYRZfNIlFUca5/RL/xqIXBhaRX6K7IbiUw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258315631"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258315631"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="825989299"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga005.fm.intel.com with ESMTP; 25 Mar 2022 02:57:14 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Mar 2022 10:54:56 +0100
Message-Id: <20220325095456.20084-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add Inspur Ethernet
 Connection X722 for 10GbE SFP+ support
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for Inspur Ethernet Connection X722 for 10GbE SFP+ cards.
Make possible for the driver to bind to the card.

Testing Hints: no functionality loss for other cards, make sure the
device loads

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 1 +
 drivers/net/ethernet/intel/i40e/i40e_devids.h | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 6aefffd..2819e26 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -47,6 +47,7 @@ i40e_status i40e_set_mac_type(struct i40e_hw *hw)
 		case I40E_DEV_ID_1G_BASE_T_X722:
 		case I40E_DEV_ID_10G_BASE_T_X722:
 		case I40E_DEV_ID_SFP_I_X722:
+		case I40E_DEV_ID_SFP_X722_A:
 			hw->mac.type = I40E_MAC_X722;
 			break;
 		default:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devids.h b/drivers/net/ethernet/intel/i40e/i40e_devids.h
index 1bcb0ec..2610338 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devids.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_devids.h
@@ -33,6 +33,7 @@
 #define I40E_DEV_ID_1G_BASE_T_X722	0x37D1
 #define I40E_DEV_ID_10G_BASE_T_X722	0x37D2
 #define I40E_DEV_ID_SFP_I_X722		0x37D3
+#define I40E_DEV_ID_SFP_X722_A		0x0DDA
 
 
 #endif /* _I40E_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b7f11fd..c318770 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -77,6 +77,7 @@ static const struct pci_device_id i40e_pci_tbl[] = {
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_1G_BASE_T_X722), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T_X722), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_SFP_I_X722), 0},
+	{PCI_VDEVICE(INTEL, I40E_DEV_ID_SFP_X722_A), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_20G_KR2), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_20G_KR2_A), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_X710_N3000), 0},
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
