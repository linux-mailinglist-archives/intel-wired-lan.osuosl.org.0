Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F3634FE5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 12:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 666FD40248;
	Wed, 31 Mar 2021 10:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cd5OijcHAa1s; Wed, 31 Mar 2021 10:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E4EE40141;
	Wed, 31 Mar 2021 10:57:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA0AF1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 10:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D811140645
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 10:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WZbL9McTVYOM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 10:57:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D83F640643
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 10:57:06 +0000 (UTC)
IronPort-SDR: apcQLXjLVOPMxA0xTM0m1oM2h8F3GDGP1T+fAW/1x9nbOlkpUcPXpeKgTYQXCsSilCBVXLUToe
 YCaSNn4r6xag==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="253314518"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="253314518"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 03:57:06 -0700
IronPort-SDR: Rj9FdBH1/15oEoxJS3gs0WdzR6quAQjhSKvNCgE/Tc3TIaCwFjT60AcE9KyciLBnpZotzPuq9V
 C1uyXYXxjsnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="455430008"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga001.jf.intel.com with ESMTP; 31 Mar 2021 03:57:04 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 10:57:01 +0000
Message-Id: <20210331105701.2112-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix PHY type identifiers for
 2.5G and 5G adapters
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
 Dawid Lukwinski <dawid.lukwinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unlike other supported adapters, 2.5G and 5G use different
PHY type identifiers for reading/writing PHY settings
and for reading link status. Introduce separate PHY
identifiers for these two operation types.

Fixes: 2e45d3f4677a("i40e: Add support for X710 B/P & SFP+ cards")
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Maloszewski <michal.maloszewski@intel.com>
Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
---
 v2: Added missing changes in i40e_ethtool.c file
---
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 2 ++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c    | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index ce626ea..78ba6b0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -1568,6 +1568,8 @@ enum i40e_aq_phy_type {
 	I40E_PHY_TYPE_25GBASE_ACC		= 0x24,
 	I40E_PHY_TYPE_2_5GBASE_T		= 0x30,
 	I40E_PHY_TYPE_5GBASE_T			= 0x31,
+	I40E_PHY_TYPE_2_5GBASE_T_LINK_STATUS	= 0x30,
+	I40E_PHY_TYPE_5GBASE_T_LINK_STATUS	= 0x31,
 	I40E_PHY_TYPE_MAX,
 	I40E_PHY_TYPE_NOT_SUPPORTED_HIGH_TEMP	= 0xFD,
 	I40E_PHY_TYPE_EMPTY			= 0xFE,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 96d5202..fe5befa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -841,8 +841,8 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 							     10000baseT_Full);
 		break;
 	case I40E_PHY_TYPE_10GBASE_T:
-	case I40E_PHY_TYPE_5GBASE_T:
-	case I40E_PHY_TYPE_2_5GBASE_T:
+	case I40E_PHY_TYPE_5GBASE_T_LINK_STATUS:
+	case I40E_PHY_TYPE_2_5GBASE_T_LINK_STATUS:
 	case I40E_PHY_TYPE_1000BASE_T:
 	case I40E_PHY_TYPE_100BASE_TX:
 		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
