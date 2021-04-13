Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F00535E145
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AB48405A2;
	Tue, 13 Apr 2021 14:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34dGoVxIPZev; Tue, 13 Apr 2021 14:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AF2A40565;
	Tue, 13 Apr 2021 14:19:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52CB11BF370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 14:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 478ED404B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 14:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sa1x3yerqsS1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 14:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5507E401CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 14:19:45 +0000 (UTC)
IronPort-SDR: SKFLYXQnfCrSzfg37qFw+pETveqvJ/84dsoj18dor0V7WBXj6woKVPw8/bPhPl+48YWH7WO03s
 xV/RzX/suY0g==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="173915723"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="173915723"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 07:19:44 -0700
IronPort-SDR: 7Bb/Z1kZ52LtBx2jgPFEgQC1TQqCWXfx8z/03/Xcqscmrg1JKBSqeiH78mUjT/BQM0MGhQtVuK
 jpAJ3vjvb3eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="600361915"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2021 07:19:42 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Apr 2021 14:19:40 +0000
Message-Id: <20210413141940.3456-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix the restart
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

Fixes: 1d96340196f1 ("i40e: Add support FEC configuration for Fortville
25G")
Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed fixes tag
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
