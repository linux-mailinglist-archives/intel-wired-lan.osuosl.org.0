Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 613104EA89C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Mar 2022 09:38:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0207340282;
	Tue, 29 Mar 2022 07:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mm9pwemMcnTm; Tue, 29 Mar 2022 07:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A6294025E;
	Tue, 29 Mar 2022 07:38:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50CA41BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 07:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 403DC841A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 07:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4B-P88IaDcYH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Mar 2022 07:38:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7396B841AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 07:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648539493; x=1680075493;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nYOpq1Ba8zqIgqo63IZpX/AzIvQYmcYbgFoPYWhECls=;
 b=KpAQf2l+K8+5Yi9iqsD2+1SV+BeETF3oQimv0kWTpYHfsnkGdshgWCXO
 uy8I4805lcmSeCOn7EMPcWv/dgQJrmkagPURQp0T18YFkO51TwfOZDP9B
 HRdn3x6bqQUKcw+X7P+B6ZR2PEEiia/MPRoCuqJbxHQfeDeea4MqfL1ta
 eEMdEE+mk1yBu83X8XOpKS1BSc3F0QZ0+RoGuD3dQ4gY61J0F72Iy2EuS
 n/c7//7S7sbwLR5Ghdoqb+mr6sZawKYrcfroEPGn7bO4//zOADrvQW+i3
 NRkHB96+vIV8zqmrQA+9PqWE5lmz/jTTG5pV30NByHyUQ2ehZ8CXpRd0z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="345621270"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="345621270"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 00:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="521336416"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga006.jf.intel.com with ESMTP; 29 Mar 2022 00:38:11 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Mar 2022 09:35:43 +0200
Message-Id: <20220329073543.7911-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Add Ethernet Connection
 X722 for 10GbE SFP+ support
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

Add support for Ethernet Connection X722 for 10GbE SFP+ cards.
Make possible for the driver to bind to the card.

Testing Hints: no functionality loss for other cards, make sure the
device loads

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Removed word "Inspur" from commit title
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
