Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1AC5A4ADE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 14:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B56F8322E;
	Mon, 29 Aug 2022 12:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B56F8322E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661774468;
	bh=IbpETAcgBUDnyOYai5Rg6QCBnXioeJYDctMww8geIK8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=l8gjMImYkW41YAXULq9lDDlngiSO+eYAP/7wyRIiLduClaFyLMMkmiOxY3Z4EMqjk
	 1L87h6MZBLWxozqY/IPP5vo0SPmV+PvFKtUYxWhwUw/LZmDHxS2xEIsx1jkZeM+QOA
	 AtLyY6NKfNa4T4HbTPFnyDjv4BSiRw2R8mZVrPqhb7Kn8Ib7YYMulkCxfSkRI8ngpA
	 r46xrKDKKmD8HtXsRqAGJ3y1MQUeEgcVAsD8E53XUK0OPjlBGEQyRvzohndGFdNKZ1
	 1cUeO9Uo+qzSpA/kA/j166iV90DiUc7ZD+n+VTaNCxSLDrO82wykos89EFjIM0/jbI
	 UUqQqzkr9YBAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y1SKfQ_-_ZIK; Mon, 29 Aug 2022 12:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F13CF832FF;
	Mon, 29 Aug 2022 12:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F13CF832FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1479D1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 12:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF22F40C0B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 12:01:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF22F40C0B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNfvDYJHVWhf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 12:01:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF29D40B1D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF29D40B1D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 12:00:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="274624811"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="274624811"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 05:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="562196841"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga003.jf.intel.com with ESMTP; 29 Aug 2022 05:00:57 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Aug 2022 13:59:46 +0200
Message-Id: <20220829115946.54125-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661774459; x=1693310459;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=exaYJ97ng8VRyIS2p/RzLXEwNcwHjfHbLqKUF3kIH78=;
 b=YHlgcV9CCbStXbP6FrIMx3/ji+/dNkVi67lkMKlzK415DTWdOzC/jBdT
 uolAtfkQTyQvlpba07ekeDeof92Agwd0JcEh5ekgCfzcz9eP4Gxh7Bzhr
 Z4nvrrcSny6+yyQLMaTZVmwKd8Uiz9N9YwS+H9BeMK4K+e1AVzfX6rG44
 ZpeVu+79HtuHVi4l3km7qn9YG8MWANO1W/gI1MiSkqyypDq6YbDR+JfQB
 nyz0oOPc2jfrGYJ1PQDZ3hS/w7g672swITJk5w7B7Zv39L+fZMSu9zYx9
 te0mVkGwzUYVje2Gcp1tZe0ItsNzXe5IYGm0sacLuQwSQm3A87ELL8vqH
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YHlgcV9C
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add basic support for
 I710 devices
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
Cc: Stanislaw Grzeszczak <stanislaw.a.grzeszczak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Stanislaw Grzeszczak <stanislaw.a.grzeszczak@intel.com>

Intel introduces a new line of 1G ethernet adapters with Device ID 0x0DD2

Signed-off-by: Stanislaw Grzeszczak <stanislaw.a.grzeszczak@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 3 +++
 drivers/net/ethernet/intel/i40e/i40e_devids.h | 4 +++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 2819e261a126..4f01e2a6b6bb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -27,6 +27,7 @@ i40e_status i40e_set_mac_type(struct i40e_hw *hw)
 		case I40E_DEV_ID_QSFP_A:
 		case I40E_DEV_ID_QSFP_B:
 		case I40E_DEV_ID_QSFP_C:
+		case I40E_DEV_ID_1G_BASE_T_BC:
 		case I40E_DEV_ID_5G_BASE_T_BC:
 		case I40E_DEV_ID_10G_BASE_T:
 		case I40E_DEV_ID_10G_BASE_T4:
@@ -4974,6 +4975,7 @@ i40e_status i40e_write_phy_register(struct i40e_hw *hw,
 		status = i40e_write_phy_register_clause22(hw, reg, phy_addr,
 							  value);
 		break;
+	case I40E_DEV_ID_1G_BASE_T_BC:
 	case I40E_DEV_ID_5G_BASE_T_BC:
 	case I40E_DEV_ID_10G_BASE_T:
 	case I40E_DEV_ID_10G_BASE_T4:
@@ -5012,6 +5014,7 @@ i40e_status i40e_read_phy_register(struct i40e_hw *hw,
 		status = i40e_read_phy_register_clause22(hw, reg, phy_addr,
 							 value);
 		break;
+	case I40E_DEV_ID_1G_BASE_T_BC:
 	case I40E_DEV_ID_5G_BASE_T_BC:
 	case I40E_DEV_ID_10G_BASE_T:
 	case I40E_DEV_ID_10G_BASE_T4:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devids.h b/drivers/net/ethernet/intel/i40e/i40e_devids.h
index 2610338002fe..d9c51a238dcc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devids.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_devids.h
@@ -24,8 +24,10 @@
 #define I40E_DEV_ID_10G_B		0x104F
 #define I40E_DEV_ID_10G_SFP		0x104E
 #define I40E_DEV_ID_5G_BASE_T_BC	0x101F
+#define I40E_DEV_ID_1G_BASE_T_BC	0x0DD2
 #define I40E_IS_X710TL_DEVICE(d) \
-	(((d) == I40E_DEV_ID_5G_BASE_T_BC) || \
+	(((d) == I40E_DEV_ID_1G_BASE_T_BC) || \
+	 ((d) == I40E_DEV_ID_5G_BASE_T_BC) || \
 	 ((d) == I40E_DEV_ID_10G_BASE_T_BC))
 #define I40E_DEV_ID_KX_X722		0x37CE
 #define I40E_DEV_ID_QSFP_X722		0x37CF
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index bb0080ea37c6..1f684c45547e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -66,6 +66,7 @@ static const struct pci_device_id i40e_pci_tbl[] = {
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_A), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_B), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_C), 0},
+	{PCI_VDEVICE(INTEL, I40E_DEV_ID_1G_BASE_T_BC), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T4), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T_BC), 0},
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
