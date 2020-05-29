Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7CD1E8862
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 22:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21EF7221B1;
	Fri, 29 May 2020 20:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1z104vjklqE; Fri, 29 May 2020 20:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1AC0026162;
	Fri, 29 May 2020 20:02:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FFC41BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2020 20:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5870A874E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2020 20:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJZa7C7ppEtL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2020 20:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 219E3874C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2020 20:01:41 +0000 (UTC)
IronPort-SDR: +3jYbzOxJO1uzuTKuQht51ARdTc4tetKBRW3RR5R5zoezBC+Bo8ir8D0b60P+fGIzLwBmJjc3Q
 PMiv3s3h7QOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 13:01:25 -0700
IronPort-SDR: 3iX/l9h995V0wY/ssBGAuHkRdVHgJQYmDHYp1dZ56eiAz5E9q04fLRSepHE/IsGT4EhRMCZ1Qp
 RQhIuF3v9GEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,450,1583222400"; d="scan'208";a="376805233"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2020 13:01:25 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 May 2020 13:01:22 -0700
Message-Id: <20200529200122.1471018-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2] i40e: Add support for 5Gbps cards
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Make possible for the i40e driver to bind to the new v710 for 5GBASE-T
NICs.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 3 +++
 drivers/net/ethernet/intel/i40e/i40e_devids.h | 4 +++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 4ab081953e19..afad5e9f80e0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -27,6 +27,7 @@ i40e_status i40e_set_mac_type(struct i40e_hw *hw)
 		case I40E_DEV_ID_QSFP_A:
 		case I40E_DEV_ID_QSFP_B:
 		case I40E_DEV_ID_QSFP_C:
+		case I40E_DEV_ID_5G_BASE_T_BC:
 		case I40E_DEV_ID_10G_BASE_T:
 		case I40E_DEV_ID_10G_BASE_T4:
 		case I40E_DEV_ID_10G_BASE_T_BC:
@@ -4906,6 +4907,7 @@ i40e_status i40e_write_phy_register(struct i40e_hw *hw,
 		status = i40e_write_phy_register_clause22(hw, reg, phy_addr,
 							  value);
 		break;
+	case I40E_DEV_ID_5G_BASE_T_BC:
 	case I40E_DEV_ID_10G_BASE_T:
 	case I40E_DEV_ID_10G_BASE_T4:
 	case I40E_DEV_ID_10G_BASE_T_BC:
@@ -4943,6 +4945,7 @@ i40e_status i40e_read_phy_register(struct i40e_hw *hw,
 		status = i40e_read_phy_register_clause22(hw, reg, phy_addr,
 							 value);
 		break;
+	case I40E_DEV_ID_5G_BASE_T_BC:
 	case I40E_DEV_ID_10G_BASE_T:
 	case I40E_DEV_ID_10G_BASE_T4:
 	case I40E_DEV_ID_10G_BASE_T_BC:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devids.h b/drivers/net/ethernet/intel/i40e/i40e_devids.h
index 33df3bf2f73b..1bcb0ec0f0c0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devids.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_devids.h
@@ -23,8 +23,10 @@
 #define I40E_DEV_ID_10G_BASE_T_BC	0x15FF
 #define I40E_DEV_ID_10G_B		0x104F
 #define I40E_DEV_ID_10G_SFP		0x104E
+#define I40E_DEV_ID_5G_BASE_T_BC	0x101F
 #define I40E_IS_X710TL_DEVICE(d) \
-	((d) == I40E_DEV_ID_10G_BASE_T_BC)
+	(((d) == I40E_DEV_ID_5G_BASE_T_BC) || \
+	 ((d) == I40E_DEV_ID_10G_BASE_T_BC))
 #define I40E_DEV_ID_KX_X722		0x37CE
 #define I40E_DEV_ID_QSFP_X722		0x37CF
 #define I40E_DEV_ID_SFP_X722		0x37D0
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
