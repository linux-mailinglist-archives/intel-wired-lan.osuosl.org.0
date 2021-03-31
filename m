Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBA734FDDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 12:14:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 235214063D;
	Wed, 31 Mar 2021 10:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EmpY8ZJUr3V6; Wed, 31 Mar 2021 10:14:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E894640631;
	Wed, 31 Mar 2021 10:14:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F2D81BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 10:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 858096086C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 10:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihDGLb1JX3Qe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 10:14:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DBF6160730
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 10:14:00 +0000 (UTC)
IronPort-SDR: mLyojtf60mIuGLz2KSrZWLXFt1Pp6X8DBnBut/H8MBIhGdY3LWHsl2sRgBvdka6INmVgcgYKHG
 lS3aNZn0etVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="179102532"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="179102532"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 03:13:59 -0700
IronPort-SDR: dCdIz51yAphGX03eQoWN61h7MLjc5a9a/nPrc2xUNRZB7Drr92TaeqM3dTnTF+wEaNvzhHKECn
 fNV86OelauXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="516832450"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2021 03:13:58 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 10:13:55 +0000
Message-Id: <20210331101355.18769-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix PHY type identifiers for
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

Fixes: 2e45d3f4677a ("i40e: Add support for X710 B/P & SFP+ cards")
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Maloszewski <michal.maloszewski@intel.com>
Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 2 ++
 1 file changed, 2 insertions(+)

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
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
