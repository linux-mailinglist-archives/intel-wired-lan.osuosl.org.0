Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C287A358333
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 14:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C4BB60709;
	Thu,  8 Apr 2021 12:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EhQI3lS4Ac-b; Thu,  8 Apr 2021 12:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1475E606DF;
	Thu,  8 Apr 2021 12:23:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F1A71BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 12:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D05F405D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 12:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hT1M4owS9oBi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 12:23:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 399DF405C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 12:23:34 +0000 (UTC)
IronPort-SDR: vbk1gzYXjbS/lEo95JL95PiJSkMl+dJeN3Zy5cEJrUgGjjvkJ/SAS3Y1PqjKqsgz7eBTmB/4bj
 /KPlVO0b7kyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193641621"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="193641621"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 05:23:13 -0700
IronPort-SDR: P/NO1qNl+PmbXYMD8lS8bhS/APOTWnVG8WxrBqkp8eQzlmm0YXVpmZX4/bI+Bhq+mscxW1udDl
 7qckWj75w45w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="448643398"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Apr 2021 05:23:12 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Apr 2021 12:23:10 +0000
Message-Id: <20210408122310.32752-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix the restart
 auto-negotiation after FEC modified
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
Cc: Jaroslaw Gawin <jaroslawx.gawin@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>

When FEC mode was changed the link didn't know it because
the link was not reset and new parameters were not negotiated.
Set a flag 'I40E_AQ_PHY_ENABLE_ATOMIC_LINK' in 'abilities'
to restart the link and make it run with the new settings.

Fixes: 1d96340196f1 ("Add support FEC configuration for Fortville 25G")
Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index fe5befa..1ccf0dc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1409,7 +1409,8 @@ static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
 
 		memset(&config, 0, sizeof(config));
 		config.phy_type = abilities.phy_type;
-		config.abilities = abilities.abilities;
+		config.abilities = abilities.abilities |
+				   I40E_AQ_PHY_ENABLE_ATOMIC_LINK;
 		config.phy_type_ext = abilities.phy_type_ext;
 		config.link_speed = abilities.link_speed;
 		config.eee_capability = abilities.eee_capability;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
